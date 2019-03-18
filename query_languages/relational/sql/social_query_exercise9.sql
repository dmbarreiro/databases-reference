SELECT name, grade
FROM (
    SELECT ID2
    FROM Likes
    GROUP BY ID2
    HAVING count(*) > 1
), Highschooler h1
WHERE h1.ID = ID2;