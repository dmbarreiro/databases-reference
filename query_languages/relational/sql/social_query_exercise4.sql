SELECT name, grade
FROM Highschooler
WHERE Highschooler.ID not in (
    SELECT ID1
    FROM Likes
) AND Highschooler.ID not in (
    SELECT ID2
    FROM Likes
) ORDER BY grade, name;
