INSERT INTO Friend
    SELECT f1.ID1, f2.ID2
    FROM Friend f1, Friend f2
    WHERE f1.ID2 = f2.ID1
    AND f2.ID2 != f1.ID1 /* not oneself */
    AND f2.ID2 not in ( /* not friends already */
        SELECT f3.ID2
        FROM Friend f3
        WHERE f3.ID1 = f1.ID1
    )
    GROUP BY f1.ID1, f2.ID2;