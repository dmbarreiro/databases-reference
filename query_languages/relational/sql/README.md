## SQL

We use [sqlite](https://www.sqlite.org/index.html) as a relational databse system.

I have used version `3.24.0` but any version should work since we are dealing only with SQL.

To import sql file into an sqlite3 database in Unix-like systems

```
cat rating.sql | sqlite3 rating.db
```

It will create `rating.db` sqlite3 database file which you can directly load and query:

```
sqlite3 rating.db ".read query.sql"
```

### Exercises

The solution queries are planned to be executed using SQLite, so they conform to the SQL constructs supported by SQLite.

* Database: `rating.sql`, [view database](rating_schema.html).
    1. Find the titles of all movies directed by Steven Spielberg. [Solution](rating_query_exercise1.sql).
    2. Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order. [Solution](rating_query_exercise2.sql).
    3. Find the titles of all movies that have no ratings. [Solution](rating_query_exercise3.sql).
    4. Some reviewers didn't provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date. [Solution](rating_query_exercise4.sql).
    5. Write a query to return the ratings data in a more readable format: reviewer name, movie title, stars, and ratingDate. Also, sort the data, first by reviewer name, then by movie title, and lastly by number of stars. [Solution](rating_query_exercise5.sql).
    6. For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time, return the reviewer's name and the title of the movie. [Solution](rating_query_exercise6.sql).
    7. For each movie that has at least one rating, find the highest number of stars that movie received. Return the movie title and number of stars. Sort by movie title. [Solution](rating_query_exercise7.sql).
    8. For each movie, return the title and the 'rating spread', that is, the difference between highest and lowest ratings given to that movie. Sort by rating spread from highest to lowest, then by movie title. [Solution](rating_query_exercise8.sql).
    9. Find the difference between the average rating of movies released before 1980 and the average rating of movies released after 1980. (Make sure to calculate the average rating for each movie, then the average of those averages for movies before 1980 and movies after. Don't just calculate the overall average rating before and after 1980). [Solution](rating_query_exercise9.sql).

* Database: `social.sql`, [view database](social_schema.html).
    1. Find the names of all students who are friends with someone named Gabriel. [Solution](social_query_exercise1.sql).
    2. For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like. [Solution](social_query_exercise2.sql).
    3. For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order. [Solution](social_query_exercise3.sql).
    4. Find all students who do not appear in the Likes table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade. [Solution](social_query_exercise4.sql).
    5. For every situation where student A likes student B, but we have no information about whom B likes (that is, B does not appear as an ID1 in the Likes table), return A and B's names and grades. [Solution](social_query_exercise5.sql).
    6. Find names and grades of students who only have friends in the same grade. Return the result sorted by grade, then by name within each grade. [Solution](social_query_exercise6.sql).
    7. For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C. [Solution](social_query_exercise7.sql).
    8. Find the difference between the number of students in the school and the number of different first names. [Solution](social_query_exercise8.sql).
    9. Find the name and grade of all students who are liked by more than one other student. [Solution](social_query_exercise9.sql).

* Notes for `social.sql`:
    1. Friendship is mutual, so if (123, 456) is in the Friend table, so is (456, 123).
    2. Liking someone is not necessarily mutual, so if (123, 456) is in the Likes table, there is no guarantee that (456, 123) is also present.