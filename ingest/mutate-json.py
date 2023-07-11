from decimal import Decimal
from io import TextIOWrapper
import ijson
import pprint
import uuid
import pickle
import json
import os

# ALL PAPERS HAVE IDs
# 1. generate IDs for all authors who do not have IDs
#   a. we must maintain a dictionary of names of authors with no IDs to their IDs. 
#      This way we can recover associations between authors with no IDs and their papers.
#      This is an assumption being made! should document
# 2. generate IDs for all organizations who do not have IDs

def sanitize_str(s: str) -> str:
    return s.replace(',', '').replace('\n', ' ').strip()

def handle_str(pos: str) -> str:
    pos = sanitize_str(pos)
    if pos == '' or pos.lower() == 'null':
        return 'NULL'
    return pos

def get_field(record: dict, field: str):
    pos = record.get(field, 'NULL')
    if type(pos) == int:
        return pos
    elif type(pos) == str:
        return handle_str(pos)
    else:
        print('ERROR: pos is list or obj')
        print(field, pos)
        exit(1)
    

def get_research_area(record: dict):
    fos = record.get('fos', None)
    if fos is None:
        return 'NULL'
    if type(fos) == dict:
        return get_field(fos, 'name')
    elif type(fos) == list and len(fos) > 0:
        return get_field(fos[0], 'name')
    else:
        return 'NULL'
    
def get_url(record: dict):
    urls = record.get('url', 'NULL')
    if urls == 'NULL' or urls == []:
        return 'NULL'
    return handle_str(urls[0])

def write(file: TextIOWrapper, write_str: str, commas: int):
    newline = 0
    comma = 0
    for c in write_str:
        if c == ',':
            comma += 1
        elif c == '\n':
            newline += 1
    if comma != commas or newline != 1:
        print('ERROR ON WRITE:')
        print (write_str)
        exit(1)
    file.write(write_str)
    
def write_author_csv(file: TextIOWrapper, id: str, name: str):
    write_str = f"{id},{name[0:100]},{1200}\n"
    write(file, write_str, 2)

def write_paper_csv(
        file: TextIOWrapper,
        record: dict
    ):

    id = record['id'] # we know this exists always
    title = get_field(record, 'title')[0:200]
    year = str(get_field(record, 'year'))[0:64]
    research_area = get_research_area(record)[0:64]
    n_citation = str(get_field(record, 'n_citation'))[0:64]
    page_start = str(get_field(record, 'page_start'))[0:64]
    page_end = str(get_field(record, 'page_end'))[0:64]
    doc_type = str(get_field(record, 'doc_type'))[0:64]
    lang = get_field(record, 'lang')[0:64]
    vol = get_field(record, 'volume')[0:64]
    issue = get_field(record, 'issue')[0:64]
    issn = get_field(record, 'issn')[0:100]
    isbn = get_field(record, 'isbn')[0:64]
    doi = get_field(record, 'doi')[0:64]
    url = get_url(record)[0:200]
    abstract = get_field(record, 'abstract')[0:1500]

    write_str = f"{id},{title},{year},{research_area},{n_citation},{page_start},{page_end},{doc_type},{lang},{vol},{issue},{issn},{isbn},{doi},{url},{abstract}\n"
    write(file, write_str, 15)
    
# is this the same function written 4 times? yes it is !
def write_wrote_csv(file: TextIOWrapper, id_paper: str, id_author: str):
    write_str = f"{id_author},{id_paper}\n"
    write(file, write_str, 1)

def write_keyword_csv(file: TextIOWrapper, id_paper: str, keyword:str):
    write_str = f"{id_paper},{keyword[0:64]}\n"
    write(file, write_str, 1)

def write_org_csv(file: TextIOWrapper, id: str, name: str):
    write_str = f"{id},{name[0:100]}\n"
    write(file, write_str, 1)

def write_affiliated_csv(file:TextIOWrapper, author_id: str, org_id: str):
    write_str = f"{author_id},{org_id}\n"
    write(file, write_str, 1)

def write_cites_csv(file:TextIOWrapper, citer: str, citee: str):
    write_str = f"{citer},{citee}\n"
    write(file, write_str, 1)

printer = pprint.PrettyPrinter()
total_papers = 0

paper_csv = open('./paper.csv', 'w')
author_csv = open('./author.csv', 'w')
wrote_csv = open('./wrote.csv', 'w')
affiliated_csv = open('./affiliated.csv', 'w')
cites_csv = open('./citations.csv', 'w')
keyword_csv = open('./keywords.csv', 'w')
org_csv = open('./institution.csv', 'w')

# paper columns
# "paper_id,title,year,fos_name,n_citation,page_start,page_end,doc_type,lang,vol,issue,issn,isbn,doi,url,abstract"

# author columns
# "author_id,author_name,elo"

# wrote columns
# "author_id,paper_id"

# keywords columns
# "paper_id,word"

# citations columns
# "paper_id,cites_paper_id"

# affiliated columns
# "author_id,org_id"

# institution columns
# "org_id,org_name"

org_dict = {}
author_dict = {}
with open('./dblp_v14.json') as json_data:
    for record in ijson.items(json_data, "item"):
        total_papers += 1

        record['id'] = get_field(record, 'id')
       
        # process authors and org
        authors = []
        for author in record.get('authors', []):
            author['name'] = get_field(author, 'name')
            if author['name'] == 'NULL':
                # if you do not have a name, we do not include you
                continue
            else:
                author['id'] = get_field(author, 'id')
                if author['id'] == 'NULL':
                    if author['name'] not in author_dict:
                        author_dict[author['name']] = str(uuid.uuid4())
                    author['id'] = author_dict[author['name']]
            author['org'] = get_field(author, 'org')
            if author['org'] != 'NULL':
                if author['org'] not in org_dict:
                    org_dict[author['org']] = str(uuid.uuid4())
            authors.append(author)

        # # now authors are ready, can do 'author', 'wrote', 'affiliated'x``
        # # now author is guaranteed to have 'id', 'name', 'org' where 'org' can be 'NULL', but the others can't

        # paper
        write_paper_csv(paper_csv, record)

        # author
        for author in authors:
            write_author_csv(author_csv, author['id'], author['name'])

        # wrote
        for author in authors:
            write_wrote_csv(wrote_csv, record['id'], author['id'])

        # affiliated
        for author in authors:
            if author['org'] != 'NULL':
                write_affiliated_csv(affiliated_csv, author['id'], org_dict[author['org']])

        # cites
        for cite in record.get('references', []):
            cite = handle_str(cite)
            if cite != 'NULL':
                write_cites_csv(cites_csv, record['id'], cite)

        # keyword
        for k in record.get('keywords', []):
            k = handle_str(k)
            if k != 'NULL':
                write_keyword_csv(keyword_csv, record['id'], k)
        

# org from dict
for name, id in org_dict.items():
    write_org_csv(org_csv ,id, name)

paper_csv.close()
author_csv.close()
wrote_csv.close() 
affiliated_csv.close()
cites_csv.close()
keyword_csv.close()
org_csv.close()


            




