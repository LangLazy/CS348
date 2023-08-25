# CS348
CS348 Group Project

# Commands to test application:

```SQL
CREATE DATABASE CS348;
create user 'rgudise'@'localhost' identified by 'testuser';
alter user rgudise@localhost identified with mysql_native_password by 'testuser';
grant all on *.* to rgudise@localhost;
```

Then pipe all the files into mysql so from the command line you can the following commands below:
Note that all of these commands assume you have a database called CS348 that was created above.
```
mysql -u {user} --password={password} -h {host} < create_tables.sql
mysql -u {user} --password={password} -h {host} < load_sample_data.sql
mysql -u {user} --password={password} -h {host} < sample_tests.sql
```

An alternative is to copy the file content into mysql workbench and run the commands there.

The features we support are:

1. Finding all direct and indirect citations of a specific paper across the dataset.
2. Find papers based on specific fields such as author name, keywords and paper title.
3. The ability to add your own paper.
4. The ability to update any paper's fields.
5. Account creation.
6. User sign-in.
7. Author elo system, crowd source author ranking to determine which authors are the most influencial.
8. A leaderboard of the top ranking authors. 

 Note that on the backend, the passwords are hashed and not in plain text, if you would like to test the feature on the app you can either signup first then log in, or you can try the credentials:
 
    - username: testAccount@gmail.com 
    - password: test123

## Ingest

Ingesting this data is an involved process. First, you must create flat files (.csv) that are ingestable by the `mysqlimport` utility. We do this in `ingest/mutate-json.py`.
To run this file, first make sure you are running Python 3.9+. Then `pip install ijson` followed by
```
cd ingest
```
Making sure that the `dblp_v14.json` file is in the same folder as `mutate-json.py`, run
```
python3 mutate-json.py
```
This will create the `.csv` files for every table in our database. This process took ~15 minutes on an M1 Macbook Pro with an M.2 SSD. Time may vary for older machines.

Now, you have the `.csv` files you can ingest into a `mysql` database. First, ensure you've run our `create_tables.sql` file in your mysql database and created the relevant tables.
Then you can use the `mysql LOAD DATA LOCAL INFILE` command to ingest the files into the database. We first must do the `paper`, `author`, and `institution` tables, then we can do the rest. This ordering
is important to avoid foreign key constraint violations when loading in data.

Make sure that you can ingest local files by following [this](https://stackoverflow.com/questions/59993844/error-loading-local-data-is-disabled-this-must-be-enabled-on-both-the-client) StackOverflow post.


### Paper
To do the paper upload, run
```
LOAD DATA LOCAL INFILE '<path_to_paper>' INTO TABLE paper FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

```
This may timeout if your mySQL database timeout is too low. To avoid this, you can split the `paper.csv` file into smaller parts and upload them in parallel.
```
split -d -l 500000 paper.csv paper.part_
```
After this you can run
```
LOAD DATA LOCAL INFILE '<path_to_paper_part>' INTO TABLE paper FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
```

### Author
To do the author upload, run
```
LOAD DATA LOCAL INFILE '<path_to_author>' INTO TABLE author FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

```

### Institution
To do the institution upload, run
```
LOAD DATA LOCAL INFILE '<path_to_institution>' INTO TABLE institution FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

```

### Affiliated
To do the affiliated upload, run
```
LOAD DATA LOCAL INFILE '<path_to_affiliated>' INTO TABLE affiliated FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

```

### Citations
To do the citations upload, run
```
LOAD DATA LOCAL INFILE '<path_to_citations>' INTO TABLE citations FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
```

### Wrote
To do the wrote upload, run
```
LOAD DATA LOCAL INFILE '<path_to_wrote>' INTO TABLE wrote FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
```

### Keywords
To do the keywords upload, run
```
LOAD DATA LOCAL INFILE '<path_to_keywords>' INTO TABLE keywords FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
```

Make sure to run Author, Paper, and Institution before running Affiliated, Citations, Wrote, and Keywords. These will take time, likely on the magnitude of 4-5 hours to finish. Be patient!
