use CS348;

with recursive 
HasCited AS 
	((SELECT paper_id, cites_paper_id FROM citations WHERE paper_id = 17)
    UNION
    (SELECT citations.paper_id, citations.cites_paper_id
		FROM HasCited HC, citations
        WHERE HC.cites_paper_id = citations.paper_id
	))
SELECT Distinct p.paper_id, p.title, p.n_citation
FROM HasCited NATURAL JOIN paper as p;