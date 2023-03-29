--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    galaxy_has_life boolean NOT NULL,
    galaxy_is_spherical boolean,
    galaxy_distance_from_earth integer,
    galaxy_type integer,
    galaxy_age_in_million_of_years numeric(6,1),
    galaxy_description text
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
    name character varying(30),
    moon_id integer NOT NULL,
    moon_description text,
    moon_has_life boolean DEFAULT true NOT NULL,
    moon_is_spherical boolean DEFAULT true,
    moon_distance_from_earth integer,
    moon_type integer DEFAULT 1,
    planet_id integer NOT NULL,
    moon_age_in_millions_of_years numeric(6,1) DEFAULT NULL::numeric
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    planet_description text,
    planet_has_life boolean DEFAULT true NOT NULL,
    planet_is_spherical boolean DEFAULT true,
    planet_distance_from_earth integer,
    planet_type integer DEFAULT 1,
    star_id integer NOT NULL,
    planet_age_in_millions_of_years numeric(6,1) DEFAULT NULL::numeric
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    star_description text,
    star_has_life boolean DEFAULT true NOT NULL,
    star_is_spherical boolean DEFAULT true,
    star_distance_from_earth integer,
    star_type integer DEFAULT 1,
    galaxy_id integer NOT NULL,
    star_age_in_millions_of_years numeric(6,1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: telescope; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.telescope (
    name character varying(30),
    telescope_description text,
    telescope_has_life boolean DEFAULT true NOT NULL,
    telescope_is_spherical boolean DEFAULT false,
    telescope_age integer,
    telescope_type integer DEFAULT 1,
    telescope_id integer NOT NULL,
    telescope_distance_from_earth numeric(6,1) DEFAULT 0
);


ALTER TABLE public.telescope OWNER TO freecodecamp;

--
-- Name: telescope_telescope_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.telescope_telescope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telescope_telescope_id_seq OWNER TO freecodecamp;

--
-- Name: telescope_telescope_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.telescope_telescope_id_seq OWNED BY public.telescope.telescope_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: telescope telescope_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope ALTER COLUMN telescope_id SET DEFAULT nextval('public.telescope_telescope_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milkyway', 1, true, true, 923330, 1, 13600.0, NULL);
INSERT INTO public.galaxy VALUES ('andromeda', 2, true, true, 2480000, 1, 10100.0, NULL);
INSERT INTO public.galaxy VALUES ('cygnus A', 3, true, false, 6197, 2, 3.0, NULL);
INSERT INTO public.galaxy VALUES ('magellanic cloud', 4, true, false, 160000, 3, 11010.0, NULL);
INSERT INTO public.galaxy VALUES ('virgo A', 5, true, false, 55, 2, 13240.0, NULL);
INSERT INTO public.galaxy VALUES ('maffei', 6, true, true, 9800000, 1, 10000.0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', 1, NULL, true, true, NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES ('phobos', 2, NULL, true, true, NULL, 1, 2, NULL);
INSERT INTO public.moon VALUES ('delmos', 3, NULL, true, true, NULL, 1, 3, NULL);
INSERT INTO public.moon VALUES ('mimas', 4, NULL, true, true, NULL, 1, 4, NULL);
INSERT INTO public.moon VALUES ('tethys', 5, NULL, true, true, NULL, 1, 5, NULL);
INSERT INTO public.moon VALUES ('diono', 6, NULL, true, true, NULL, 1, 6, NULL);
INSERT INTO public.moon VALUES ('rhea', 7, NULL, true, true, NULL, 1, 7, NULL);
INSERT INTO public.moon VALUES ('titan', 8, NULL, true, true, NULL, 1, 8, NULL);
INSERT INTO public.moon VALUES ('puck', 9, NULL, true, true, NULL, 1, 9, NULL);
INSERT INTO public.moon VALUES ('ariel', 10, NULL, true, true, NULL, 1, 10, NULL);
INSERT INTO public.moon VALUES ('charon', 11, NULL, true, true, NULL, 1, 11, NULL);
INSERT INTO public.moon VALUES ('phoebe', 12, NULL, true, true, NULL, 1, 12, NULL);
INSERT INTO public.moon VALUES ('hyperlon', 13, NULL, true, true, NULL, 1, 6, NULL);
INSERT INTO public.moon VALUES ('encleadus', 14, NULL, true, true, NULL, 1, 6, NULL);
INSERT INTO public.moon VALUES ('tapetus', 15, NULL, true, true, NULL, 1, 6, NULL);
INSERT INTO public.moon VALUES ('nereld', 16, NULL, true, true, NULL, 1, 8, NULL);
INSERT INTO public.moon VALUES ('proteus', 17, NULL, true, true, NULL, 1, 7, NULL);
INSERT INTO public.moon VALUES ('lo', 18, NULL, true, true, NULL, 1, 5, NULL);
INSERT INTO public.moon VALUES ('callisto', 19, NULL, true, true, NULL, 1, 5, NULL);
INSERT INTO public.moon VALUES ('europa', 20, NULL, true, true, NULL, 1, 5, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('venus', 1, NULL, true, true, NULL, 1, 1, NULL);
INSERT INTO public.planet VALUES ('mars', 2, NULL, true, true, NULL, 1, 1, NULL);
INSERT INTO public.planet VALUES ('earth', 3, NULL, true, true, NULL, 1, 2, NULL);
INSERT INTO public.planet VALUES ('mercury', 4, NULL, true, true, NULL, 1, 2, NULL);
INSERT INTO public.planet VALUES ('jupiter', 5, NULL, true, true, NULL, 1, 3, NULL);
INSERT INTO public.planet VALUES ('satrun', 6, NULL, true, true, NULL, 1, 3, NULL);
INSERT INTO public.planet VALUES ('neptune', 7, NULL, true, true, NULL, 1, 4, NULL);
INSERT INTO public.planet VALUES ('uranus', 8, NULL, true, true, NULL, 1, 4, NULL);
INSERT INTO public.planet VALUES ('pluto', 9, NULL, true, true, NULL, 1, 5, NULL);
INSERT INTO public.planet VALUES ('ceres', 10, NULL, true, true, NULL, 1, 5, NULL);
INSERT INTO public.planet VALUES ('eris', 11, NULL, true, true, NULL, 1, 6, NULL);
INSERT INTO public.planet VALUES ('makemake', 12, NULL, true, true, NULL, 1, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 1, NULL, true, true, 1496000, 1, 1, 4.6);
INSERT INTO public.star VALUES ('Alpha', 2, NULL, true, true, NULL, 1, 2, NULL);
INSERT INTO public.star VALUES ('Deneb', 3, NULL, true, true, NULL, 1, 3, NULL);
INSERT INTO public.star VALUES ('Melnick', 4, NULL, true, true, NULL, 1, 4, NULL);
INSERT INTO public.star VALUES ('spica', 5, NULL, true, true, NULL, 1, 5, NULL);
INSERT INTO public.star VALUES (NULL, 6, NULL, true, true, NULL, 1, 6, NULL);


--
-- Data for Name: telescope; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.telescope VALUES ('hobby eberly', NULL, true, false, NULL, 1, 1, 0.0);
INSERT INTO public.telescope VALUES ('keck', NULL, true, false, NULL, 1, 2, 0.0);
INSERT INTO public.telescope VALUES ('gmt', NULL, true, false, NULL, 1, 3, 0.0);
INSERT INTO public.telescope VALUES ('salt', NULL, true, false, NULL, 1, 4, 0.0);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: telescope_telescope_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.telescope_telescope_id_seq', 4, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: telescope telescope_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope
    ADD CONSTRAINT telescope_pkey PRIMARY KEY (telescope_id);


--
-- Name: telescope telescope_telescope_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope
    ADD CONSTRAINT telescope_telescope_id_key UNIQUE (telescope_id);


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

