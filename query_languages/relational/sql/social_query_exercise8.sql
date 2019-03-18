SELECT count(Highschooler.ID) - n_names
FROM (
    SELECT count(name) AS n_names
    FROM (
        SELECT name
        FROM Highschooler
        GROUP BY name
    )
), Highschooler;



