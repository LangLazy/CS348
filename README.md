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
