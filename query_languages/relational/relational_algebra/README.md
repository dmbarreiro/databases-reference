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

You will enter radb interative mode and prompt

```
(ins)ra>
```

will appear.

### Execute query script

From radb prompt:

```bash
(ins)ra> \source 'filename.ra';
```

### Exercises

* Database: `pizza.sql`, [view database](pizza.html).
    1. Find all pizzas eaten by at least one female over the age of 20. [Solution](query_exercise1.ra).
    2. Find the names of all females who eat at least one pizza served by Straw Hat. (Note: The pizza need not be eaten at Straw Hat). [Solution](query_exercise2.ra). 
    3. Find all pizzerias that serve at least one pizza for less than $10 that either Amy or Fay (or both) eat. [Solution](query_exercise3.ra).
    4. Find all pizzerias that serve at least one pizza for less than $10 that both Amy and Fay eat. [Solution](query_exercise4.ra).
    5. Find the names of all people who eat at least one pizza served by Dominos but who do not frequent Dominos. [Solution](query_exercise5.ra).
    6. Find all pizzas that are eaten only by people younger than 24, or that cost less than $10 everywhere they're served. [Solution](query_exercise6.ra).
    7. Find the age of the oldest person (or people) who eat mushroom pizza. (This query is quite challenging; congratulations if you get it right). [Solution](query_exercise7.ra). 
    8. Find all pizzerias that serve only pizzas eaten by people over 30. (This query is quite challenging; congratulations if you get it right). [Solution](query_exercise8.ra).
    9. Find all pizzerias that serve every pizza eaten by people over 30.
    (This query is very challenging; extra congratulations if you get it right). [Solution](query_exercise9.ra).
