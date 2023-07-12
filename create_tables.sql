USE CS348;

CREATE TABLE author (
author_id VARCHAR(64) NOT NULL,
author_name VARCHAR(100),
elo INT NOT NULL,
PRIMARY KEY(author_id)
);

CREATE TABLE institution (
org_id VARCHAR(64) NOT NULL,
org_name VARCHAR(100),
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
PRIMARY KEY (author_id),
UNIQUE (email)
);

CREATE TABLE paper (
paper_id VARCHAR(64) NOT NULL,
title VARCHAR(200),
year VARCHAR(64),
fos_name VARCHAR(64),
n_citation VARCHAR(64),
page_start VARCHAR(64),
page_end VARCHAR(64),
doc_type VARCHAR(64),
lang VARCHAR(5),
vol VARCHAR(64),
issue VARCHAR(64),
issn VARCHAR(100),
isbn VARCHAR(64),
doi VARCHAR(64),
url VARCHAR(200),
abstract VARCHAR(1500),
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

CREATE TABLE citations (
paper_id VARCHAR(64) NOT NULL,
cites_paper_id VARCHAR(64) NOT NULL,
FOREIGN KEY (paper_id) REFERENCES paper(paper_id),
FOREIGN KEY (cites_paper_id) REFERENCES paper(paper_id),
PRIMARY KEY(paper_id, cites_paper_id)
);

CREATE TABLE history (
    user_id VARCHAR(64) NOT NULL,
    operation_timestamp TIMESTAMP,
    operation_type char NOT NULL,
    summary VARCHAR(150),
    PRIMARY KEY(user_id, operation_timestamp),
    FOREIGN KEY (user_id) REFERENCES user(author_id) ON DELETE CASCADE
);

CREATE INDEX AuthorNameIndex on author(author_name);
CREATE INDEX UserEmailIndex on user(email);
CREATE INDEX PaperTitleIndex on paper(title);
CREATE INDEX KeywordIndex on keywords(word);
CREATE INDEX PaperCitesIndex on citations(cites_paper_id);