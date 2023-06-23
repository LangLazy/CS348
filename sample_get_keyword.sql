SELECT * FROM paper NATURAL JOIN keywords as t WHERE t.word = 'HVM' Group by paper_id;
