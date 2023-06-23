# CS348
CS348 Group Project

# Commands to test application:

```SQL
CREATE DATABASE CS348;
create user 'rgudise'@'localhost' identified by 'ligma';
alter user rgudise@localhost identified with mysql_native_password by 'ligma';
grant all on *.* to rgudise@localhost;
```

Then pipe all the files into mysql so from the command line you can the following commands below:
Note that all of these commands assume you have a database called CS348 that was created above.
```
mysql -u {user} --password={password} -h {host} < create_tables.sql
mysql -u {user} --password={password} -h {host} < load_sample_data.sql
mysql -u {user} --password={password} -h {host} < sample_inserts.sql
mysql -u {user} --password={password} -h {host} < test_inserts.sql
mysql -u {user} --password={password} -h {host} < sample_get_citation_tree.sql
mysql -u {user} --password={password} -h {host} < sample_get_keyword.sql
mysql -u {user} --password={password} -h {host} < sample_get_passwords.sql
```

An alternative is to copy the file content into mysql workbench and run the commands there.

We have different input and output files for most of the samples.

- sample_get-citation_tree.sql gets the citation tree of a specific paper
- sample_get_keyword.sql gets all papers that have the specified keyword
- sample_get_password.sql gets the password of the specified username, this is to later verify if the user password. Note that on the backend, the passwords are hashed and not in plain text, if you would like to test the feature on the app you can either signup first then log in, or you can try the credentials:
    - username: testAccount@gmail.com 
    - password: test123
- sample_inserts are the two related insert functions we use. Since they are inserts the output is empty and we did not generate a file. But we have a test_inserts.sql file that you can run to see the result AFTER running the sample_inserts.sql file