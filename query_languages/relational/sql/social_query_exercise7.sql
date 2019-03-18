SELECT h1.name, h1.grade, h2.name, h2.grade, h3.name, h3.grade
FROM (
    SELECT like1, like2, like1_friend
    FROM (
        SELECT like1, like2, f1.ID2 AS like1_friend
        FROM (
            SELECT like1, like2
            FROM (    
                SELECT Likes.ID1 AS like1, Likes.ID2 AS like2
                FROM Likes
            ), Friend
            WHERE like1 = Friend.ID1 AND like2 not in (
                SELECT Friend.ID2
                FROM Friend
                WHERE Friend.ID1 = like1
            )
            GROUP BY like1, like2
        ), Friend f1
        WHERE f1.ID1 = like1
        GROUP BY like1, like2, like1_friend
    ), Friend
    WHERE Friend.ID1 = like1_friend AND Friend.ID2 = like2
), Highschooler h1, Highschooler h2, Highschooler h3
WHERE h1.ID = like1 AND h2.ID = like2 AND h3.ID = like1_friend;
