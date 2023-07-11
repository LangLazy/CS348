import ijson
import pprint
import uuid

printer = pprint.PrettyPrinter()
papers_with_malformatted_authors = 0
total_papers = 0
total_authors = 0
malformatted_authors = 0
default_elo = 1200
seen = set()
with open('./dblp_v14.json') as json_data, open('./author.csv', 'w') as author_file:
    author_file.write('author_id,author_name,author_elo\n')
    for record in ijson.items(json_data, "item"):
        if total_papers % 4000000 == 0 and total_papers != 0:
            print(f'finished writing authors from {total_papers} papers!')
        total_papers += 1

        authors = record['authors']
        bad = False
        for author in authors:
            total_authors += 1
            id: str = author['id']
            name: str = author['name']
            name = name.replace(',', '').replace('\n', ' ')
            if id == '':
                id = str(uuid.uuid4())
                malformatted_authors += 1
                bad = True
            if name == '':
                name = 'NULL'
            if name not in seen and (total_papers == 3000000 or total_papers == 2000000 or total_papers == 1000000):
              seen.add(name)
              author_file.write(f"{id},{name},{default_elo}\n")
        if bad:
            papers_with_malformatted_authors += 1

print('----------------------------------------------------------')
print('FINAL STATISTICS:')
print('papers with malformatted authors:', papers_with_malformatted_authors, total_papers, papers_with_malformatted_authors/total_papers)
print('malformatted authors', malformatted_authors, total_authors, malformatted_authors / total_authors)
print('----------------------------------------------------------')
