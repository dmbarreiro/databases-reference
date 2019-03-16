SELECT AvgBefore1980-AvgAfter1980
FROM 
(
    SELECT avg(AvgsStars) AS AvgBefore1980
    FROM (
        SELECT avg(stars) AS AvgsStars
        FROM Rating, Movie
        WHERE Rating.mID = Movie.mID AND Movie.year < 1980
        GROUP BY Rating.mID
    )
),
(
    SELECT avg(AvgsStars) AS AvgAfter1980
    FROM (
        SELECT avg(stars) AS AvgsStars
        FROM Rating, Movie
        WHERE Rating.mID = Movie.mID AND Movie.year > 1980
        GROUP BY Rating.mID
    )
);