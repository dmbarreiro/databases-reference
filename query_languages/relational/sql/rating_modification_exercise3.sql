UPDATE Movie
SET year = year+25
WHERE mID in (SELECT mID
    FROM Rating
    GROUP BY mID
    HAVING avg(stars) >= 4);
