SELECT name, grade
FROM (
    SELECT h1.name AS name , h1.grade AS grade, max(h2.grade) AS max_grade_friend, min(h2.grade) AS min_grade_friend
    FROM Friend, Highschooler h1, Highschooler h2
    WHERE Friend.ID1 = h1.ID AND Friend.ID2 = h2.ID
    GROUP BY Friend.ID1
)
WHERE max_grade_friend = min_grade_friend
ORDER BY grade, name;