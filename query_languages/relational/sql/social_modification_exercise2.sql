/* 
Remove all comments to make the query work in the course since the system
maximum number of characters for query is 1000.
 */

DELETE FROM Likes
WHERE ID1 IN
    (SELECT Friend.ID1
    FROM (
        /* not mutually liked students */
        SELECT Likes.ID1 AS notmutual1, Likes.ID2 AS notmutual2
        FROM Likes
        LEFT JOIN  (
            /* mutually liked students */
            SELECT l1.ID1 AS mutual1, l1.ID2 AS mutual2
            FROM Likes l1, Likes l2
            WHERE l1.ID1 = l2.ID2 AND l1.ID2 = l2.ID1
        ) mutual
        ON Likes.ID1 = mutual1 AND Likes.ID2 = mutual2
        WHERE mutual1 IS NULL
    ), Friend
    WHERE Friend.ID1 = notmutual1 AND Friend.ID2 = notmutual2)
AND ID2 IN
    (SELECT Friend.ID2
    FROM (
        /* not mutually liked students */
        SELECT Likes.ID1 AS notmutual1, Likes.ID2 AS notmutual2
        FROM Likes
        LEFT JOIN  (
            /* mutually liked students */
            SELECT l1.ID1 AS mutual1, l1.ID2 AS mutual2
            FROM Likes l1, Likes l2
            WHERE l1.ID1 = l2.ID2 AND l1.ID2 = l2.ID1
        ) mutual
        ON Likes.ID1 = mutual1 AND Likes.ID2 = mutual2
        WHERE mutual1 IS NULL
    ), Friend
    WHERE Friend.ID1 = notmutual1 AND Friend.ID2 = notmutual2);