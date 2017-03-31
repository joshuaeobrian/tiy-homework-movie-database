insert into movie_role(movie_id,person_id,role_type_id)VALUES(
  (select id from movie where movie='Jaws'),
  (SELECT id from person where first_name='Steven' and last_name='Spielberg'),
  (SELECT id from role where role_type='Director')
);

INSERT INTO person(first_name, last_name) VALUES ('Gavin','OConnor');

INSERT INTO person(first_name, last_name) VALUES ('Ben','Affleck');

INSERT INTO person(first_name, last_name) VALUES ('Bill','Dubuque');

INSERT INTO person(first_name, last_name) VALUES ('Eddie','Evans');


insert into movie_role(movie_id,person_id,role_type_id)VALUES(
  (select id from movie where movie='The Accountant'),
  (SELECT id from person where first_name='Gavin' and last_name='OConnor'),
  (SELECT id from role where role_type='Director')
);

insert into movie_role(movie_id,person_id,role_type_id)VALUES(
  (select id from movie where movie='The Accountant'),
  (SELECT id from person where first_name='Ben' and last_name='Affleck'),
  (SELECT id from role where role_type='Actor')
);


insert into movie_role(movie_id,person_id,role_type_id)VALUES(
  (select id from movie where movie='The Accountant'),
  (SELECT id from person where first_name='Bill' and last_name='Dubuque'),
  (SELECT id from role where role_type='Writer')
);

insert into movie_role(movie_id,person_id,role_type_id)VALUES(
  (select id from movie where movie='The Accountant'),
  (SELECT id from person where first_name='Eddie' and last_name='Evans'),
  (SELECT id from role where role_type='Key Grip')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Jaws'),
  (SELECT id from genre where genre_type='Drama')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Jaws'),
  (SELECT id from genre where genre_type='Thriller')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Jaws'),
  (SELECT id from genre where genre_type='Adventure')
);
-- 1
INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Lord of the Rings: The Fellowship of the ring'),
  (SELECT id from genre where genre_type='Adventure')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Lord of the Rings: The Fellowship of the ring'),
  (SELECT id from genre where genre_type='Drama')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Lord of the Rings: The Fellowship of the ring'),
  (SELECT id from genre where genre_type='Fantasy')
);
-- 2
INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='The Accountant'),
  (SELECT id from genre where genre_type='Action')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='The Accountant'),
  (SELECT id from genre where genre_type='Drama')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='The Accountant'),
  (SELECT id from genre where genre_type='Crime')
);

--3
INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Tombstone'),
  (SELECT id from genre where genre_type='Drama')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Tombstone'),
  (SELECT id from genre where genre_type='Action')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Tombstone'),
  (SELECT id from genre where genre_type='Biography')
);
-- 4
INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Doctor Strange'),
  (SELECT id from genre where genre_type='Action')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Doctor Strange'),
  (SELECT id from genre where genre_type='Fantasy')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Doctor Strange'),
  (SELECT id from genre where genre_type='Adventure')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Step Brothers'),
  (SELECT id from genre where genre_type='Comedy')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='The Note Book'),
  (SELECT id from genre where genre_type='Romance')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='The Note Book'),
  (SELECT id from genre where genre_type='Drama')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='John Wick'),
  (SELECT id from genre where genre_type='Crime')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='John Wick'),
  (SELECT id from genre where genre_type='Thriller')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='John Wick'),
  (SELECT id from genre where genre_type='Action')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Jurassic Park'),
  (SELECT id from genre where genre_type='Adventure')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Jurassic Park'),
  (SELECT id from genre where genre_type='Thriller')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Jurassic Park'),
  (SELECT id from genre where genre_type='Sci-Fi')
);

INSERT INTO movie_genre(movie_id, genre_id)VALUES (
  (SELECT id from movie where movie='Good Will Hunting'),
  (SELECT id from genre where genre_type='Drama')
);

INSERT INTO person(first_name, last_name) VALUES ('Bob','Bluff');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Bob' and last_name='Bluff'),
  (SELECT id FROM movie WHERE movie='John Wick'),
  6,
  'Good amount of action and keeps you on your toes.');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Bob' and last_name='Bluff'),
  (SELECT id FROM movie WHERE movie='Jaws'),
  5,
  'Thought the movie was okay, could use some more attack music. Its a bit repetitive.');

INSERT INTO person(first_name, last_name) VALUES ('Jill','Huntington');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Jill' and last_name='Huntington'),
  (SELECT id FROM movie WHERE movie='John Wick'),
  4,
  'Too much action and not enough Romance!');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Jill' and last_name='Huntington'),
  (SELECT id FROM movie WHERE movie='Jaws'),
  3,
  'Really a movie about a shark. I wasted hours of my life...');

INSERT INTO person(first_name, last_name) VALUES ('Hank','Banks');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Hank' and last_name='Banks'),
  (SELECT id FROM movie WHERE movie='Lord of the Rings: The Fellowship of the ring'),
  2,
  'Who wants to watch a movie about people walking?');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Hank' and last_name='Banks'),
  (SELECT id FROM movie WHERE movie='The Accountant'),
  9,
  'I wish my account was like this guy I would have some tasks for him.');

INSERT INTO person(first_name, last_name) VALUES ('Merl','Taffy');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Merl' and last_name='Taffy'),
  (SELECT id FROM movie WHERE movie='Lord of the Rings: The Fellowship of the ring'),
  6,
  'The crazy knight kept me on my toes, I thought he was going to get those poor little people.');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Merl' and last_name='Taffy'),
  (SELECT id FROM movie WHERE movie='The Accountant'),
  7,
  'This move was worth while.');

INSERT INTO person(first_name, last_name) VALUES ('Betty','Bufferson');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Betty' and last_name='Bufferson'),
  (SELECT id FROM movie WHERE movie='Tombstone'),
  7,
  'Reminded me of the time growing up watch westerns with my pappi.');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Betty' and last_name='Bufferson'),
  (SELECT id FROM movie WHERE movie='Doctor Strange'),
  5,
  'Made me feel like they were trying to be like Harry Potter.');

INSERT INTO person(first_name, last_name) VALUES ('Shelia','Minker');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Shelia' and last_name='Minker'),
  (SELECT id FROM movie WHERE movie='Tombstone'),
  3,
  'Too much killing.');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Shelia' and last_name='Minker'),
  (SELECT id FROM movie WHERE movie='Doctor Strange'),
  4,
  'Not enough action most of the movie was building up to one fight scene.');

INSERT INTO person(first_name, last_name) VALUES ('Jake','Snickerson');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Jake' and last_name='Snickerson'),
  (SELECT id FROM movie WHERE movie='Step Brothers'),
  6,
  'Movie is worth it. Could not Stop laughing.');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Jake' and last_name='Snickerson'),
  (SELECT id FROM movie WHERE movie='The Notebook'),
  2,
  'If your other half talks you into watching this movie run.');

INSERT INTO person(first_name, last_name) VALUES ('Ladasha','Slash');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Ladasha' and last_name='Slash'),
  (SELECT id FROM movie WHERE movie='Step Brothers'),
  9,
  'Oh... This movie was so so funny...');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Ladasha' and last_name='Slash'),
  (SELECT id FROM movie WHERE movie='The Notebook'),
  9,
  'I couldnt stop crying.');

INSERT INTO person(first_name, last_name) VALUES ('Ron','Hooker');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Ron' and last_name='Hooker'),
  (SELECT id FROM movie WHERE movie='John Wick'),
  6,
  'Man the moves that Keanu	Reeves did were the rad..');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Ron' and last_name='Hooker'),
  (SELECT id FROM movie WHERE movie='Jurassic Park'),
  6,
  'Those Dinosaurs were crazy!');

INSERT INTO person(first_name, last_name) VALUES ('Fanda','Landa');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Fanda' and last_name='Landa'),
  (SELECT id FROM movie WHERE movie='Jurassic Park'),
  2,
  'I had no idea what was going on in this movie.');

INSERT INTO reviews(person_id,movie_id,rating,review)
VALUES (
  (SELECT id FROM person WHERE first_name='Fanda' and last_name='Landa'),
  (SELECT id FROM movie WHERE movie='Good Will Hunting'),
  7,
  'How is he so smart?');

