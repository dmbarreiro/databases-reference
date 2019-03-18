DELETE FROM Rating
    WHERE rID in 
    (SELECT Rating.rID
    FROM Movie, Rating
    WHERE Movie.mID = Rating.mID 
    AND (Movie.year < 1970 OR Movie.year > 2000)
    AND Rating.stars < 4)
    AND mID in
    (SELECT Movie.mID
    FROM Movie, Rating
    WHERE Movie.mID = Rating.mID 
    AND (Movie.year < 1970 OR Movie.year > 2000)
    AND Rating.stars < 4)
    AND stars in
    (SELECT stars
    FROM Movie, Rating
    WHERE Movie.mID = Rating.mID 
    AND (Movie.year < 1970 OR Movie.year > 2000)
    AND Rating.stars < 4)
    AND ratingDate in
    (SELECT ratingDate
    FROM Movie, Rating
    WHERE Movie.mID = Rating.mID 
    AND (Movie.year < 1970 OR Movie.year > 2000)
    AND Rating.stars < 4);