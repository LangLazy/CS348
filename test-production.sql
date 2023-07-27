use CS348;

-- ###################################################################
-- recursively search paper citation history, with max recursion depth of 3
-- ###################################################################

with recursive 
HasCited AS 
    ((SELECT paper_id, cites_paper_id, 0 as rec_level FROM citations WHERE paper_id = '57d063b4ac4436735428dca0')
    UNION
    (SELECT citations.paper_id, citations.cites_paper_id, rec_level + 1
        FROM HasCited HC, citations
        WHERE HC.cites_paper_id = citations.paper_id and rec_level < 3
    ))
SELECT Distinct x.paper_id, x.cites_paper_id, x.title as cited_title, c.title
FROM (
SELECT HasCited.paper_id, HasCited.cites_paper_id, p.title 
FROM HasCited LEFT OUTER JOIN paper as p
ON HasCited.cites_paper_id = p.paper_id) x
LEFT OUTER JOIN paper c
ON x.paper_id = c.paper_id; 

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
        WHERE p.title = 'Efficient Mutually Orthogonal Golay Complementary Set-Based Zero-Correlation Zone Sequence Set Correlator.'
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
INSERT INTO author VALUES ('20', 'A lesson', 1200);
INSERT INTO user VALUES ('20', 'punishment@something.com', 'Uncrackable');
-- for adding papers
INSERT INTO paper VALUES ('24', "i prove hypothesis", 2010, "Math",
    "1", NULL, NULL, NULL, 'FR', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/",
    "n = 1, p = np proved"
);

-- ###################################################################
-- Testing inserts
-- ###################################################################
SELECT * FROM author WHERE author_id = '20';
SELECT * FROM user WHERE email = 'punishment@something.com';
SELECT * FROM paper WHERE paper_id = '24';

-- Testing update on the new paper added
UPDATE paper SET title = "I am smart", fos_name="Intelligence" WHERE paper_id='24';
SELECT * FROM paper WHERE paper_id = '24';

-- remove inserts so we can run test multiple times
DELETE FROM user WHERE author_id = '20';
DELETE FROM author WHERE author_id = '20';
DELETE FROM paper WHERE paper_id = '24';
