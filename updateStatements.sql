UPDATE movie
SET rating_id=(SELECT id FROM movie_ratings WHERE rating='R')
WHERE movie='Jaws';

UPDATE movie
SET rating_id=(SELECT id FROM movie_ratings WHERE rating='PG-13')
WHERE movie='Lord of the Rings: The Fellowship of the ring';

UPDATE movie
SET rating_id=(SELECT id FROM movie_ratings WHERE rating='R')
WHERE movie='The Accountant';

UPDATE movie
SET rating_id=(SELECT id FROM movie_ratings WHERE rating='R')
WHERE movie='Tombstone';

UPDATE movie
SET rating_id=(SELECT id FROM movie_ratings WHERE rating='PG-13')
WHERE movie='Doctor Strange';

UPDATE movie
SET rating_id=(SELECT id FROM movie_ratings WHERE rating='R')
WHERE movie='Step Brothers';

UPDATE movie
SET rating_id=(SELECT id FROM movie_ratings WHERE rating='PG-13'),
  movie='The Notebook'
WHERE movie='The Note Book';

UPDATE movie
SET rating_id=(SELECT id FROM movie_ratings WHERE rating='R')
WHERE movie='John Wick';

UPDATE movie
SET rating_id=(SELECT id FROM movie_ratings WHERE rating='PG-13')
WHERE movie='Jurassic Park';

UPDATE movie
SET rating_id=(SELECT id FROM movie_ratings WHERE rating='R')
WHERE movie='Good Will Hunting';