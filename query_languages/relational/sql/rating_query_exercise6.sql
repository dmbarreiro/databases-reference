SELECT name, title
FROM (SELECT *
FROM Rating
WHERE Rating.rID in (SELECT Rating.rID
FROM Rating
GROUP BY Rating.mID, Rating.rID
HAVING count(*) = 2)
AND Rating.mID in (SELECT Rating.mID
FROM Rating
GROUP BY Rating.mID, Rating.rID
HAVING count(*) = 2)) AS table1,
(SELECT *
FROM Rating
WHERE Rating.rID in (SELECT Rating.rID
FROM Rating
GROUP BY Rating.mID, Rating.rID
HAVING count(*) = 2)
AND Rating.mID in (SELECT Rating.mID
FROM Rating
GROUP BY Rating.mID, Rating.rID
HAVING count(*) = 2)) AS table2,
Reviewer, Movie
WHERE table1.rID = table2.rID AND table1.mID = table2.mID AND table1.ratingDate < table2.ratingDate
AND table1.stars < table2.stars AND table1.rID = Reviewer.rID AND table1.mID = Movie.mID;

/*
SELECT name, title
FROM (SELECT Rating.mID, Rating.rID, max(Rating.stars), ratingDate, Reviewer.name, Movie.title
FROM Rating, Reviewer, Movie
WHERE Rating.rID = Reviewer.rID AND Movie.mID = Rating.mID
GROUP BY Rating.mID, Rating.rID
HAVING count(*) = 2) AS BestRev
JOIN (SELECT mID, rID, stars, ratingDate
FROM Rating
GROUP BY mID, rID
HAVING count(*) = 2) AS NewestRev
ON BestRev.ratingDate = NewestRev.ratingDate AND BestRev.rID = NewestRev.rID
AND BestRev.mID = NewestRev.mID;
*/