SELECT DISTINCT Movie.year
FROM Movie, Rating
WHERE Movie.mID = Rating.mID AND Rating.stars >= 4
ORDER BY year ASC;