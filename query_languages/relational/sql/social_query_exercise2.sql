SELECT liker_name, liker_grade, liked_name, liked_grade
FROM (
    SELECT Likernames.liker_id,
           Likernames.liked_id,
           Likernames.liker_name,
           Likernames.liker_grade,
           Highschooler.name AS liked_name,
           Highschooler.grade AS liked_grade
    FROM (
        SELECT Likes.ID1 AS liker_id,
               Likes.ID2 AS liked_id,
               Highschooler.name AS liker_name,
               Highschooler.grade AS liker_grade
        FROM Likes
        JOIN Highschooler
        ON Likes.ID1 = Highschooler.ID
    ) Likernames
    JOIN Highschooler
    ON Likernames.liked_id = Highschooler.ID
) Likefullinfo 
WHERE liker_grade-liked_grade >= 2;