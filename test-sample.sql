use CS348_project;

-- ###################################################################
-- recursively search paper 17 citation history
-- ###################################################################
with recursive 
HasCited AS 
	((SELECT paper_id, cites_paper_id FROM citations WHERE paper_id = '17')
    UNION
    (SELECT citations.paper_id, citations.cites_paper_id
		FROM HasCited HC, citations
        WHERE HC.cites_paper_id = citations.paper_id
	))
SELECT Distinct HasCited.cites_paper_id, p.title, p.n_citation
FROM HasCited LEFT OUTER JOIN paper as p
ON HasCited.cites_paper_id = p.paper_id;

-- ###################################################################
-- Testing the query function, get papers written by an
-- author with the name containing god and has the key word 
-- exactly as HVM or it has a keyword containing C
-- ###################################################################
SELECT * 
FROM 
    (
        SELECT w.paper_id, group_concat(a.author_name) as Authors, group_concat(a.author_id) as Authors_id 
        FROM 
            author a 
            NATURAL JOIN 
            wrote w
        WHERE a.author_name like '%God%' 
        GROUP BY w.paper_id
    ) as X 
    NATURAL JOIN 
    (
        SELECT paper_id, title, year, fos_name, n_citation, 
            page_start, page_end, doc_type, lang, vol, issue, 
            isbn, doi, url, abstract, group_concat(word) as Keywords 
        FROM 
            paper p 
            NATURAL JOIN 
            keywords t 
        WHERE t.word = 'HVM' OR t.word LIKE '%C%' AND t.word NOT LIKE '%a%'
        GROUP BY paper_id
    ) as Y;

-- ###################################################################
-- get the password for a specified user, this is used to verify log in status
-- ###################################################################
SELECT u.user_pass FROM user as u WHERE u.email = 'j23mheta@uwaterloo.ca';

-- ###################################################################
-- Inserting data
-- ###################################################################
-- for signing up a user
INSERT INTO author VALUES (20, 'A lesson', 1200);
INSERT INTO user VALUES (20, 'punishment@something.com', 'Uncrackable');
-- for adding papers
INSERT INTO paper VALUES (24, "i prove hypothesis", 2010, "Math",
    "1", NULL, NULL, NULL, 'FR', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/",
    "n = 1, p = np proved"
);

-- ###################################################################
-- Testing inserts
-- ###################################################################
SELECT * FROM author WHERE author_id = 20;
SELECT * FROM user WHERE email = 'punishment@something.com';
SELECT * FROM paper WHERE paper_id = 24;

-- testing another update
UPDATE paper SET title='ligma', lang='kli' WHERE paper_id=1;

-- Testing update on the new paper added
UPDATE paper SET title = "I am smart", fos_name="Intelligence" WHERE paper_id='24';
SELECT * FROM paper WHERE paper_id = 24;

-- remove inserts so we can run test multiple times
DELETE FROM user WHERE author_id = '20';
DELETE FROM author WHERE author_id = '20';
DELETE FROM paper WHERE paper_id = '24';
