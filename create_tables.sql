CREATE TABLE author (
author_id VARCHAR(64) NOT NULL,
author_name VARCHAR(100) NOT NULL,
PRIMARY KEY(author_id)
);

CREATE TABLE institution (
org_id VARCHAR(64) NOT NULL,
org_name VARCHAR(100) NOT NULL,
PRIMARY KEY(org_id)
);

CREATE TABLE affiliated (
author_id VARCHAR(64) NOT NULL,
org_id VARCHAR(64) NOT NULL,
FOREIGN KEY (author_id) REFERENCES author(author_id),
FOREIGN KEY (org_id) REFERENCES institution(org_id),
PRIMARY KEY(author_id, org_id)
);

CREATE TABLE user (
author_id VARCHAR(64) NOT NULL,
email VARCHAR(100) NOT NULL,
user_pass VARCHAR(1000) NOT NULL,
FOREIGN KEY (author_id) REFERENCES author(author_id),
PRIMARY KEY (author_id)
);

CREATE TABLE paper (
paper_id VARCHAR(64) NOT NULL,
title VARCHAR(64) NOT NULL,
year VARCHAR(64) NOT NULL,
fos_name VARCHAR(64) NOT NULL,
n_citation INT NOT NULL,
page_start INT,
page_end INT,
doc_type VARCHAR(64),
lang VARCHAR(5),
vol INT,
issue INT,
issn VARCHAR(100),
isbn VARCHAR(64),
doi VARCHAR(64),
url VARCHAR(200) NOT NULL,
abstract VARCHAR(500),
PRIMARY KEY (paper_id)
);

CREATE TABLE wrote (
author_id VARCHAR(64) NOT NULL,
paper_id VARCHAR(64) NOT NULL,
FOREIGN KEY (author_id) REFERENCES author(author_id),
FOREIGN KEY (paper_id) REFERENCES paper(paper_id),
PRIMARY KEY (author_id, paper_id)
);

CREATE TABLE keywords (
paper_id VARCHAR(64) NOT NULL,
word VARCHAR (64) NOT NULL,
FOREIGN KEY (paper_id) REFERENCES paper(paper_id),
PRIMARY KEY (paper_id, word)
);