SELECT highschoolers1.name, highschoolers1.grade, highschoolers2.name, highschoolers2.grade
FROM (
    SELECT likes1.ID1 AS friend1_ID, likes1.ID2 AS friend2_ID
    FROM Likes likes1
    JOIN Likes likes2
    ON likes1.ID1 = likes2.ID2 AND likes1.ID2 = likes2.ID1
), Highschooler highschoolers1, Highschooler highschoolers2
WHERE highschoolers1.ID = friend1_ID AND highschoolers2.ID = friend2_ID AND highschoolers1.name < highschoolers2.name;
