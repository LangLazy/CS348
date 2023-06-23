# CS348
CS348 Group Project

# Commands to test application:

```SQL
CREATE DATABASE CS348;
CREATE TABLE USERS(uid int, name varchar(30), points int);
insert into users values(1, 'javin', 69), (2, 'adeit', 2020200), (3, 'padthai', 3);
create user 'rgudise'@'localhost' identified by 'ligma';
alter user rgudise@localhost identified with mysql_native_password by 'ligma';
grant all on *.* to rgudise@localhost;
```

We have different input and output files for most of the samples.

- sample_get-citation_tree.sql gets the citation tree of a specific paper
- sample_get_keyword.sql gets all papers that have the specified keyword
- sample_get_password.sql gets the password of the specified username, this is to later verify if the user password. Note that on the backend, the passwords are hashed and not in plain text, if you would like to test the feature on the app you can either signup first then log in, or you can try the credentials:
    - username: testAccount@gmail.com 
    - password: test123
- sample_inserts are the two related insert functions we use. Since they are inserts the output is empty and we did not generate a file. But we have a test_inserts.sql file that you can run to see the result AFTER running the sample_inserts.sql file