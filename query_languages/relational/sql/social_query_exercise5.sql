SELECT h1.name, h1.grade, h2.name, h2.grade
FROM (
    SELECT ID1, ID2
    FROM Likes
    WHERE ID2 not in (SELECT ID1 FROM Likes)
) no_info, Highschooler h1, Highschooler h2
WHERE h1.ID = no_info.ID1 AND h2.ID = no_info.ID2;