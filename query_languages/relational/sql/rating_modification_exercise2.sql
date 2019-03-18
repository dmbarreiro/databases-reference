INSERT INTO Rating
    SELECT rID, mID, 5, NULL
    FROM Reviewer, Movie
    WHERE name = 'James Cameron';