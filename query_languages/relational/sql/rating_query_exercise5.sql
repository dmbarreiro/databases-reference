SELECT name, title, stars, ratingDate
FROM Movie, Reviewer, Rating
WHERE Movie.mID = Rating.mID AND Rating.rID = Reviewer.rID
ORDER BY name, Movie.title, stars;