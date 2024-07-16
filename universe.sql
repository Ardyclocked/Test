--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: country; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    name character varying,
    description text NOT NULL,
    width real NOT NULL,
    length real NOT NULL,
    borders_bangladesh boolean,
    planet_id integer
);


ALTER TABLE public.country OWNER TO freecodecamp;

--
-- Name: country_country_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_country_id_seq OWNER TO freecodecamp;

--
-- Name: country_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    description text NOT NULL,
    age_in_millions_of_years integer,
    width real,
    height real,
    black_hole boolean,
    supernova boolean,
    star_type text,
    age integer,
    mass numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    description text NOT NULL,
    width real NOT NULL,
    length real NOT NULL,
    has_water boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    description text NOT NULL,
    width real NOT NULL,
    length real NOT NULL,
    has_water boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    description text NOT NULL,
    width real NOT NULL,
    length real NOT NULL,
    supernova boolean,
    galaxy_id integer,
    age integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: country country_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.country VALUES (1, 'Turkmenistan', 'Nice country', 50, 60, true, 1);
INSERT INTO public.country VALUES (2, 'Belgium', 'Sad country', 60, 70, false, 2);
INSERT INTO public.country VALUES (3, 'Rwanda', 'Good country', 70, 80, true, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our galaxy', 50000, 1000, 500, false, false, 'Oval', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest galaxy', 60000, 900, 400, true, false, 'Round', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Pamplona', 'Third galaxy', 75000, 800, 300, false, true, 'Star-shaped', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Rigona', 'Fourth galaxy', 85000, 700, 200, true, true, 'Misformed', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Packaro', 'Fifth galaxy', 95000, 600, 100, false, false, 'Tree-shaped', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Ligma', 'Sixth galaxy', 100000, 500, 50, false, true, 'Round', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ja', 'Mooi', 100, 100, false, 1);
INSERT INTO public.moon VALUES (2, 'Nee', 'Lelijk', 1, 1, true, 2);
INSERT INTO public.moon VALUES (3, 'Zomaar', 'Schoon', 2, 2, false, 3);
INSERT INTO public.moon VALUES (4, 'Maar', 'Ugly', 3, 3, true, 3);
INSERT INTO public.moon VALUES (5, 'Hahaj', 'Tadej', 4, 4, false, 4);
INSERT INTO public.moon VALUES (6, 'Rogla', 'Pogla', 5, 5, true, 4);
INSERT INTO public.moon VALUES (7, 'Rodri', 'Pedri', 6, 6, true, 4);
INSERT INTO public.moon VALUES (8, 'Ruslan', 'Puslan', 9, 9, false, 4);
INSERT INTO public.moon VALUES (9, 'Johan', 'Doha', 6, 6, true, 5);
INSERT INTO public.moon VALUES (10, 'Ed', 'Smet', 10, 10, false, 5);
INSERT INTO public.moon VALUES (11, 'Drer', 'ie', 12, 12, false, 6);
INSERT INTO public.moon VALUES (12, 'Jan', 'Man', 13, 13, true, 6);
INSERT INTO public.moon VALUES (13, 'Kim', 'Jong', 15, 15, false, 6);
INSERT INTO public.moon VALUES (14, 'Rob', 'Bin', 19, 19, true, 7);
INSERT INTO public.moon VALUES (15, 'Kle', 'Mi', 20, 20, false, 7);
INSERT INTO public.moon VALUES (16, 'Klo', 'Mo', 25, 25, true, 8);
INSERT INTO public.moon VALUES (17, 'Pie', 'Ter', 26, 26, false, 9);
INSERT INTO public.moon VALUES (18, 'Kdn', 'Pdkn', 28, 28, true, 10);
INSERT INTO public.moon VALUES (19, 'Lim', 'Pur', 30, 30, false, 11);
INSERT INTO public.moon VALUES (20, 'Kkds', 'Lfdk', 50, 50, true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Nice planet', 250, 250, true, 1);
INSERT INTO public.planet VALUES (2, 'Joda', 'Not a nice planet', 350, 350, false, 2);
INSERT INTO public.planet VALUES (3, 'Bloda', 'Lol', 300, 300, false, 3);
INSERT INTO public.planet VALUES (4, 'Kroda', 'Lul', 250, 250, true, 3);
INSERT INTO public.planet VALUES (5, 'Moda', 'Zul', 300, 300, false, 3);
INSERT INTO public.planet VALUES (6, 'Kote', 'Pul', 450, 450, true, 4);
INSERT INTO public.planet VALUES (7, 'Lote', 'Kul', 500, 500, true, 5);
INSERT INTO public.planet VALUES (8, 'Mote', 'Trul', 600, 600, false, 5);
INSERT INTO public.planet VALUES (9, 'Dote', 'Hehe', 750, 750, true, 6);
INSERT INTO public.planet VALUES (10, 'Hallo', 'Olla', 800, 800, true, 6);
INSERT INTO public.planet VALUES (11, 'Test', 'Test', 990, 990, true, 6);
INSERT INTO public.planet VALUES (12, 'Mest', 'Rest', 1000, 1000, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sigma star', 'Nice star', 500, 500, true, 1, NULL);
INSERT INTO public.star VALUES (2, 'Alpha star', 'Not a nice star imo', 400, 400, false, 1, NULL);
INSERT INTO public.star VALUES (3, 'Beta star', 'Not a nice star fr', 350, 350, true, 1, NULL);
INSERT INTO public.star VALUES (4, 'Gamma star', 'Nice star xd', 300, 300, false, 2, NULL);
INSERT INTO public.star VALUES (5, 'Jotta star', 'Nice star lol', 500, 500, false, 2, NULL);
INSERT INTO public.star VALUES (6, 'Theta star', 'Not a nice star tbh', 450, 450, true, 3, NULL);


--
-- Name: country_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.country_country_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: country country_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_description_key UNIQUE (description);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet u_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT u_name UNIQUE (name);


--
-- Name: galaxy uni_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uni_name UNIQUE (name);


--
-- Name: star uniq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uniq_name UNIQUE (name);


--
-- Name: moon uniqu_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uniqu_name UNIQUE (name);


--
-- Name: country unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: country country_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

