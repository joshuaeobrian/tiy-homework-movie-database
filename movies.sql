--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: josh
--

CREATE TABLE genre (
    id integer NOT NULL,
    genre_type character varying(30) NOT NULL
);


ALTER TABLE genre OWNER TO josh;

--
-- Name: genre_type_id_seq; Type: SEQUENCE; Schema: public; Owner: josh
--

CREATE SEQUENCE genre_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genre_type_id_seq OWNER TO josh;

--
-- Name: genre_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: josh
--

ALTER SEQUENCE genre_type_id_seq OWNED BY genre.id;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: josh
--

CREATE TABLE movie (
    id integer NOT NULL,
    movie character varying(50) NOT NULL,
    rating_id integer NOT NULL,
    release_date date NOT NULL
);


ALTER TABLE movie OWNER TO josh;

--
-- Name: movie_genre; Type: TABLE; Schema: public; Owner: josh
--

CREATE TABLE movie_genre (
    movie_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE movie_genre OWNER TO josh;

--
-- Name: movie_id_seq; Type: SEQUENCE; Schema: public; Owner: josh
--

CREATE SEQUENCE movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_id_seq OWNER TO josh;

--
-- Name: movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: josh
--

ALTER SEQUENCE movie_id_seq OWNED BY movie.id;


--
-- Name: movie_ratings; Type: TABLE; Schema: public; Owner: josh
--

CREATE TABLE movie_ratings (
    id integer NOT NULL,
    rating character varying(10) NOT NULL
);


ALTER TABLE movie_ratings OWNER TO josh;

--
-- Name: movie_ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: josh
--

CREATE SEQUENCE movie_ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_ratings_id_seq OWNER TO josh;

--
-- Name: movie_ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: josh
--

ALTER SEQUENCE movie_ratings_id_seq OWNED BY movie_ratings.id;


--
-- Name: movie_role; Type: TABLE; Schema: public; Owner: josh
--

CREATE TABLE movie_role (
    person_id integer NOT NULL,
    role_type_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE movie_role OWNER TO josh;

--
-- Name: person; Type: TABLE; Schema: public; Owner: josh
--

CREATE TABLE person (
    id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(25) NOT NULL
);


ALTER TABLE person OWNER TO josh;

--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: josh
--

CREATE SEQUENCE person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_id_seq OWNER TO josh;

--
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: josh
--

ALTER SEQUENCE person_id_seq OWNED BY person.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: josh
--

CREATE TABLE reviews (
    review character varying(200),
    rating integer NOT NULL,
    person_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE reviews OWNER TO josh;

--
-- Name: role; Type: TABLE; Schema: public; Owner: josh
--

CREATE TABLE role (
    id integer NOT NULL,
    role_type character varying(30) NOT NULL
);


ALTER TABLE role OWNER TO josh;

--
-- Name: role_catalog_id_seq; Type: SEQUENCE; Schema: public; Owner: josh
--

CREATE SEQUENCE role_catalog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE role_catalog_id_seq OWNER TO josh;

--
-- Name: role_catalog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: josh
--

ALTER SEQUENCE role_catalog_id_seq OWNED BY role.id;


--
-- Name: genre id; Type: DEFAULT; Schema: public; Owner: josh
--

ALTER TABLE ONLY genre ALTER COLUMN id SET DEFAULT nextval('genre_type_id_seq'::regclass);


--
-- Name: movie id; Type: DEFAULT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie ALTER COLUMN id SET DEFAULT nextval('movie_id_seq'::regclass);


--
-- Name: movie_ratings id; Type: DEFAULT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie_ratings ALTER COLUMN id SET DEFAULT nextval('movie_ratings_id_seq'::regclass);


--
-- Name: person id; Type: DEFAULT; Schema: public; Owner: josh
--

ALTER TABLE ONLY person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);


--
-- Name: role id; Type: DEFAULT; Schema: public; Owner: josh
--

ALTER TABLE ONLY role ALTER COLUMN id SET DEFAULT nextval('role_catalog_id_seq'::regclass);


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: josh
--

COPY genre (id, genre_type) FROM stdin;
1	Horror
2	Fantasy
3	Thriller
4	Western
5	Adventure
6	Comedy
7	Romance
8	Action
9	Fiction
10	Drama
11	Crime
12	Biography
13	Sci-Fi
\.


--
-- Name: genre_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josh
--

SELECT pg_catalog.setval('genre_type_id_seq', 13, true);


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: josh
--

COPY movie (id, movie, rating_id, release_date) FROM stdin;
1	Jaws	4	1975-06-20
2	Lord of the Rings: The Fellowship of the ring	3	2001-12-19
3	The Accountant	4	2016-10-14
4	Tombstone	4	1993-12-24
5	Doctor Strange	3	2016-10-10
6	Step Brothers	4	2008-07-25
7	The Notebook	3	2004-06-25
8	John Wick	4	2014-10-24
9	Jurassic Park	3	1993-06-11
10	Good Will Hunting	4	1997-12-05
\.


--
-- Data for Name: movie_genre; Type: TABLE DATA; Schema: public; Owner: josh
--

COPY movie_genre (movie_id, genre_id) FROM stdin;
1	10
1	3
1	5
2	5
2	10
2	2
3	8
3	10
3	11
4	10
4	8
4	12
5	8
5	2
5	5
6	6
7	7
7	10
8	11
8	3
8	8
9	5
9	3
9	13
10	10
\.


--
-- Name: movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josh
--

SELECT pg_catalog.setval('movie_id_seq', 10, true);


--
-- Data for Name: movie_ratings; Type: TABLE DATA; Schema: public; Owner: josh
--

COPY movie_ratings (id, rating) FROM stdin;
1	G
2	PG
3	PG-13
4	R
5	NC-17
\.


--
-- Name: movie_ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josh
--

SELECT pg_catalog.setval('movie_ratings_id_seq', 5, true);


--
-- Data for Name: movie_role; Type: TABLE DATA; Schema: public; Owner: josh
--

COPY movie_role (person_id, role_type_id, movie_id) FROM stdin;
1	1	1
3	2	1
2	3	1
4	4	1
5	1	2
6	2	2
7	3	2
8	4	2
9	1	3
10	2	3
11	3	3
12	4	3
13	1	4
14	2	4
15	3	4
16	4	4
18	2	5
19	2	5
21	3	5
23	4	5
17	3	5
24	1	6
25	2	6
26	2	6
27	2	6
25	3	6
24	3	6
28	4	6
29	1	7
30	2	7
31	2	7
32	2	7
33	3	7
34	3	7
35	4	7
36	1	8
37	1	8
38	2	8
39	2	8
40	2	8
41	3	8
42	4	8
43	4	8
1	1	9
44	2	9
45	2	9
46	2	9
47	3	9
48	4	9
49	1	10
50	2	10
51	2	10
51	3	10
10	3	10
10	2	10
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: josh
--

COPY person (id, first_name, last_name) FROM stdin;
1	Steven	Spielberg
2	Peter	Benchley
3	Roy	Scheider
4	Guy	Polzel
5	Peter	Jackson
6	Elijah	Wood
7	J.R.R.	Tolkien
8	Harry	Harrison
9	Gavin	OConnor
10	Ben	Affleck
11	Bill	Dubuque
12	Eddie	Evans
13	George	Cosmatos
14	Kurt	Russell
15	Kevin	Jarre
16	Mark	Rainsford
17	Scott	Derrickson
18	Benedict	Cumberbatch
19	Chiwetel	Ejiofor
20	Mark	McAdams
21	Jon	Spaihts
22	Scott	Derrickson
23	John	Flemming
24	Adam	McKay
25	Will	Ferrell
26	John	Reilly
27	Mary	Steenburgen
28	Les	Tomita
29	Nick	Cassavetes
30	Gena	Rowlands
31	James	Garner
32	Rachel	McAdams
33	Jeremy	Leven
34	Jan	Sardi
35	Tony	Anderson
36	Chad	Stahelski
37	David	Leitch
38	Keanu	Reeves
39	Michael	Nyqvist
40	Alfie	Allen
41	Derek	Kolstad
42	Stu	Brumbaugh
43	Johnny	Erbes-Chan
44	Sam	Neill
45	Laura	Dern
46	Jeff	Goldblum
47	Michael	Crichton
48	Ron	Cardarelli
49	Gus	Van Sant
50	Robin	Williams
51	Matt	Damon
53	Mark	Manchester
54	Bob	Bluff
55	Jill	Huntington
56	Hank	Banks
57	Merl	Taffy
58	Betty	Bufferson
59	Shelia	Minker
60	Jake	Snickerson
61	Ladasha	Slash
62	Ron	Hooker
63	Fanda	Landa
\.


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josh
--

SELECT pg_catalog.setval('person_id_seq', 63, true);


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: josh
--

COPY reviews (review, rating, person_id, movie_id) FROM stdin;
Good amount of action and keeps you on your toes.	6	54	8
Thought the movie was okay, could use some more attack music. Its a bit repetitive.	5	54	1
Too much action and not enough Romance!	4	55	8
I wish my account was like this guy I would have some tasks for him.	9	56	3
The crazy knight kept me on my toes, I thought he was going to get those poor little people.	6	57	2
This move was worth while.	7	57	3
Reminded me of the time growing up watch westerns with my pappi.	7	58	4
Made me feel like they were trying to be like Harry Potter.	5	58	5
Too much killing.	3	59	4
Not enough action most of the movie was building up to one fight scene.	4	59	5
Movie is worth it. Could not Stop laughing.	6	60	6
If your other half talks you into watching this movie run.	2	60	7
Oh... This movie was so so funny...	9	61	6
I couldnt stop crying.	9	61	7
Those Dinosaurs were crazy!	6	62	9
I had no idea what was going on in this movie.	2	63	9
How is he so smart?	7	63	10
Really a movie about a shark. I wasted hours of my life...	3	55	1
Who wants to watch a movie about people walking?	2	56	2
Man the moves that Keanu\tReeves did were the rad..	6	62	8
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: josh
--

COPY role (id, role_type) FROM stdin;
1	Director
2	Actor
3	Writer
4	Key Grip
5	Reviewer
\.


--
-- Name: role_catalog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: josh
--

SELECT pg_catalog.setval('role_catalog_id_seq', 5, true);


--
-- Name: genre genre_type_pkey; Type: CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_type_pkey PRIMARY KEY (id);


--
-- Name: movie_genre movie_genre_movie_id_genre_id_pk; Type: CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_movie_id_genre_id_pk PRIMARY KEY (movie_id, genre_id);


--
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);


--
-- Name: movie_ratings movie_ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie_ratings
    ADD CONSTRAINT movie_ratings_pkey PRIMARY KEY (id);


--
-- Name: movie_role movie_role_person_id_movie_id_role_type_id_pk; Type: CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie_role
    ADD CONSTRAINT movie_role_person_id_movie_id_role_type_id_pk UNIQUE (person_id, movie_id, role_type_id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_movie_id_person_id_pk; Type: CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_movie_id_person_id_pk PRIMARY KEY (movie_id, person_id);


--
-- Name: role role_catalog_pkey; Type: CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_catalog_pkey PRIMARY KEY (id);


--
-- Name: genre_type_id_unique; Type: INDEX; Schema: public; Owner: josh
--

CREATE UNIQUE INDEX genre_type_id_unique ON genre USING btree (id);


--
-- Name: genre_type_unique; Type: INDEX; Schema: public; Owner: josh
--

CREATE UNIQUE INDEX genre_type_unique ON genre USING btree (genre_type);


--
-- Name: movie_id_unique; Type: INDEX; Schema: public; Owner: josh
--

CREATE UNIQUE INDEX movie_id_unique ON movie USING btree (id);


--
-- Name: movie_ratings_id_unique; Type: INDEX; Schema: public; Owner: josh
--

CREATE UNIQUE INDEX movie_ratings_id_unique ON movie_ratings USING btree (id);


--
-- Name: movie_ratings_rating_unique; Type: INDEX; Schema: public; Owner: josh
--

CREATE UNIQUE INDEX movie_ratings_rating_unique ON movie_ratings USING btree (rating);


--
-- Name: movie_role_person_id_movie_id_role_type_id_uindex; Type: INDEX; Schema: public; Owner: josh
--

CREATE UNIQUE INDEX movie_role_person_id_movie_id_role_type_id_uindex ON movie_role USING btree (person_id, movie_id, role_type_id);


--
-- Name: person_id_unique; Type: INDEX; Schema: public; Owner: josh
--

CREATE UNIQUE INDEX person_id_unique ON person USING btree (id);


--
-- Name: reviews_person_id_movie_id_uindex; Type: INDEX; Schema: public; Owner: josh
--

CREATE UNIQUE INDEX reviews_person_id_movie_id_uindex ON reviews USING btree (person_id, movie_id);


--
-- Name: role_catalog_id_unique; Type: INDEX; Schema: public; Owner: josh
--

CREATE UNIQUE INDEX role_catalog_id_unique ON role USING btree (id);


--
-- Name: role_catalog_role_type_unique; Type: INDEX; Schema: public; Owner: josh
--

CREATE UNIQUE INDEX role_catalog_role_type_unique ON role USING btree (role_type);


--
-- Name: movie_genre movie_genre_genre_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_genre_id_fk FOREIGN KEY (genre_id) REFERENCES genre(id);


--
-- Name: movie_genre movie_genre_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(id);


--
-- Name: movie movie_movie_ratings_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_movie_ratings_id_fk FOREIGN KEY (rating_id) REFERENCES movie_ratings(id);


--
-- Name: movie_role movie_role_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie_role
    ADD CONSTRAINT movie_role_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(id);


--
-- Name: movie_role movie_role_person_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie_role
    ADD CONSTRAINT movie_role_person_id_fk FOREIGN KEY (person_id) REFERENCES person(id);


--
-- Name: movie_role movie_role_role_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY movie_role
    ADD CONSTRAINT movie_role_role_id_fk FOREIGN KEY (role_type_id) REFERENCES role(id);


--
-- Name: reviews reviews_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(id);


--
-- Name: reviews reviews_person_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: josh
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_person_id_fk FOREIGN KEY (person_id) REFERENCES person(id);


--
-- PostgreSQL database dump complete
--

