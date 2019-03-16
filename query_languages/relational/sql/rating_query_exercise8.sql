SELECT title, (max(stars)-min(stars)) AS Rating_spread
FROM Movie, Rating
WHERE Movie.mID = Rating.mID
GROUP BY title
ORDER BY Rating_spread DESC, title;