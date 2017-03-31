--1. gets movie title with genre and release date
SELECT
  m.movie as movie,
  g.genre_type as genre,
  m.release_date as "release date"
FROM movie as m
  JOIN movie_genre as mg ON m.id = mg.movie_id
  JOIN genre as g on g.id = mg.genre_id;

--2. gets movie genre and release date for all movies that are action or thrillers
SELECT
  movie.movie AS movie,
  genre.genre_type AS genre,
  movie.release_date AS "release date"
from movie
  JOIN movie_genre ON movie.id = movie_genre.movie_id
  JOIN genre ON movie_genre.genre_id = genre.id
WHERE genre_type='Thriller' OR genre_type='Action'
ORDER BY release_date desc;
--3. displays genres with how many movies there are for that genre
SELECT
  count(*) as "movies in genre",
  genre.genre_type
from movie
  JOIN movie_genre ON movie.id = movie_genre.movie_id
  JOIN genre ON movie_genre.genre_id = genre.id
GROUP BY genre.genre_type;

--4. displays movie with the title jaws with people and their job role
SELECT
  m.movie as movie,
  role.role_type as "job role",
  concat(p.first_name,' ',p.last_name)
FROM movie AS m
  JOIN movie_role AS mr  ON m.id = mr.movie_id
  JOIN role ON mr.role_type_id = role.id
  JOIN person as p ON p.id = mr.person_id
WHERE m.movie='Jaws'
ORDER BY m.movie ASC;
--5. displays movies, person that reviewed movie and their review
SELECT
  movie.movie,
  person.first_name ||' '|| person.last_name as "reviewer",
  reviews.rating as "movie rating",
  reviews.review as review
FROM movie
  JOIN reviews ON movie.id = reviews.movie_id
  JOIN person ON reviews.person_id = person.id;
--6. displays movies and their avg rating
SELECT
  movie.movie as movie,
  avg(reviews.rating) as rating
FROM movie
  JOIN reviews ON movie.id = reviews.movie_id
GROUP BY movie.movie;

--7. display movies released after 2000
SELECT
  movie.movie AS movie,
  movie_ratings.rating AS rating,
  movie.release_date AS "release date"
FROM movie
  JOIN movie_ratings ON movie.rating_id = movie_ratings.id
WHERE movie.release_date > '2000-01-01'::DATE;

--8. selects movies released in december
SELECT
  movie.movie AS movie,
  movie_ratings.rating AS rating,
  movie.release_date AS "release date"

from movie
  JOIN movie_ratings ON movie.rating_id = movie_ratings.id

where EXTRACT(MONTH FROM release_date) =12;

--9.
SELECT
  count(*) AS "number of movies released",
  EXTRACT(YEAR FROM movie.release_date) as year
FROM movie
  JOIN movie_genre on movie.id = movie_genre.movie_id
  JOIN genre ON movie_genre.genre_id = genre.id
GROUP BY EXTRACT(YEAR FROM movie.release_date);
