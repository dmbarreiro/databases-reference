## Relational Algebra

We use [radb](https://users.cs.duke.edu/~junyang/radb/) as a relational algebra interpreter.

[radb](https://users.cs.duke.edu/~junyang/radb/) was written in python 3 and uses sqlite as database
backend. It tranlates our relational algebra queries to sql.

To import sql file into an sqlite3 database in Unix-like systems

```
cat pizza.sql | sqlite3 pizza.db
```

It will create `pizza.db` sqlite3 database file which you can directly load in to query [radb](https://users.cs.duke.edu/~junyang/radb/).

Check [radb documentation](https://users.cs.duke.edu/~junyang/radb/) for relational algebra syntax mappings and other details.

### Load database

```bash
radb pizza.db
```

### Execute query script

From radb prompt:

```bash
(ins)ra> \source 'filename.ra';
```
