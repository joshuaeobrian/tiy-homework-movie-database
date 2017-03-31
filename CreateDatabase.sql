-- Genre Table
CREATE TABLE genre_type(
  id SERIAL PRIMARY KEY NOT NULL,
  genre_type VARCHAR(30)
);

CREATE UNIQUE INDEX genre_type_id_unique on genre_type(id);
CREATE UNIQUE INDEX genre_type_unique on genre_type(genre_type);

--Movie genre table
CREATE TABLE genre(
  id SERIAL PRIMARY KEY,
  movie_id INTEGER,
  genre_id INTEGER
);
CREATE UNIQUE INDEX genre_id_unique on genre(id);

-- Role category Table
CREATE TABLE role_catalog(
  id SERIAL PRIMARY KEY NOT NULL,
  role_type VARCHAR(30) NOT NULL
);
CREATE UNIQUE INDEX role_catalog_id_unique on role_catalog(id);
CREATE UNIQUE INDEX role_catalog_role_type_unique on role_catalog(role_type);

-- Role table with people and their roles
CREATE TABLE roles(
  id SERIAL PRIMARY KEY NOT NULL,
  person_id INTEGER NOT NULL,
  role_type_id INTEGER REFERENCES role(id)

);
CREATE UNIQUE INDEX roles_id_unique on roles(id);

-- Person Table
CREATE TABLE person(
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(20) NOT NULL ,
  last_name VARCHAR(25) NOT NULL,
  role_id INTEGER NOT NULL
);

CREATE UNIQUE INDEX person_id_unique on person(id);

-- references cities(city)
-- Movie Table
CREATE TABLE movie(
  id SERIAL PRIMARY KEY NOT NULL,
  movie VARCHAR(50) NOT NULL,
  cast_id INTEGER,
  rating_id INTEGER,
  release_date DATE null

);

CREATE UNIQUE INDEX movie_id_unique on movie(id);

--Reviews table
CREATE TABLE reviews(
  id SERIAL PRIMARY KEY NOT NULL,
  review VARCHAR(200),
  rating INTEGER,
  person_id INTEGER NOT NULL,
  movie_id INTEGER NOT NULL

);

CREATE UNIQUE INDEX reviews_id_unique on reviews(id);

-- many to many
-- Cast Table
CREATE TABLE movie_cast(
  id SERIAL PRIMARY KEY NOT NULL,
  movie_id INTEGER NOT NULL,
  person_id INTEGER NOT NULL

);
CREATE UNIQUE INDEX movie_cast_id_unique on movie_cast(id);

--
INSERT INTO genre(genre_type) VALUES ('Horror');
INSERT INTO genre( genre_type) VALUES ('Fantasy');
INSERT INTO genre( genre_type) VALUES ('Thriller');
INSERT INTO genre( genre_type) VALUES ('Western');
INSERT INTO genre( genre_type) VALUES ('Adventure');
INSERT INTO genre( genre_type) VALUES ('Comedy');
INSERT INTO genre(genre_type) VALUES ('Romance');
INSERT INTO genre(genre_type) VALUES ('Action');
INSERT INTO genre( genre_type) VALUES ('Fiction');
INSERT INTO genre( genre_type) VALUES ('Drama');

INSERT INTO role(role_type)VALUES('Director');
INSERT INTO role(role_type)VALUES('Actor');
INSERT INTO role(role_type)VALUES('Writer');
INSERT INTO role(role_type)VALUES('Key Grip');
INSERT INTO role(role_type)VALUES('Reviewer');
