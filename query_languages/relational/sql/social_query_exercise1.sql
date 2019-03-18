SELECT name
FROM (
    SELECT Friend.ID1
    FROM (SELECT ID
    FROM Highschooler
    WHERE name='Gabriel') Gabrielid
    JOIN Friend
    ON Gabrielid.ID=Friend.ID1 OR Gabrielid.ID=Friend.ID2
    WHERE Friend.ID1 not in (SELECT ID
    FROM Highschooler
    WHERE name='Gabriel')
    UNION
    SELECT Friend.ID1
    FROM (SELECT ID
    FROM Highschooler
    WHERE name='Gabriel') Gabrielid
    JOIN Friend
    ON Gabrielid.ID=Friend.ID1 OR Gabrielid.ID=Friend.ID2
    WHERE Friend.ID2 not in (SELECT ID
    FROM Highschooler
    WHERE name='Gabriel')
) Gabrielfriends
JOIN Highschooler
ON Highschooler.ID = Gabrielfriends.ID1
WHERE ID1 not in (
    SELECT ID
    FROM Highschooler
    WHERE name='Gabriel'
);