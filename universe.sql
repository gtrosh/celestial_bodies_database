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
-- Name: discoverer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discoverer (
    discoverer_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer,
    discover_year integer,
    discover_country character varying(30)
);


ALTER TABLE public.discoverer OWNER TO freecodecamp;

--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.discoverer_discoverer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discoverer_discoverer_id_seq OWNER TO freecodecamp;

--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.discoverer_discoverer_id_seq OWNED BY public.discoverer.discoverer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(60),
    galaxy_description text,
    redshift numeric
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
    name character varying(30) NOT NULL,
    planet_id integer,
    mean_radius numeric,
    orbital_period numeric
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
    name character varying(30) NOT NULL,
    mean_radius numeric,
    number_of_moons integer,
    has_moons boolean,
    has_life boolean,
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
    name character varying(30) NOT NULL,
    temperature integer,
    galaxy_id integer,
    constellation character varying(30)
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
-- Name: discoverer discoverer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer ALTER COLUMN discoverer_id SET DEFAULT nextval('public.discoverer_discoverer_id_seq'::regclass);


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
-- Data for Name: discoverer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.discoverer VALUES (1, 'Galileo Galilei', 6, 1610, 'Duchy of Florence');
INSERT INTO public.discoverer VALUES (2, 'Hellenistic astronomers', 5, 200, 'Ancient Greece');
INSERT INTO public.discoverer VALUES (3, 'Ferdinand Magellan', 5, 1519, 'Hispanic Monarchy');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Ursa Major B', 'Elliptical', 'galaxy with an approximately ellipsoidal shape and a smooth, nearly featureless image', 0.428);
INSERT INTO public.galaxy VALUES (2, 'Messier 49', 'Elliptical', 'giant elliptical galaxy about 56 million light-years away in the equatorial constellation of Virgo', 0.003326);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 'Spiral barred', 'galaxy that includes our Solar System, with the name describing the galaxys appearance from Earth', NULL);
INSERT INTO public.galaxy VALUES (4, 'NGC 4314', 'Spiral barred', 'a barred spiral galaxy approximately 53 million light-years away in the northern constellation of Coma Berenices', NULL);
INSERT INTO public.galaxy VALUES (5, 'NGC 5264', 'Dwarf', 'an irregular galaxy in the constellation Hydra', 0.001594);
INSERT INTO public.galaxy VALUES (6, 'Phoenix Dwarf', 'Dwarf', 'a dwarf irregular galaxy discovered in 1976 by Hans-Emil Schuster and Richard Martin West and mistaken for a globular cluster', 60.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'No moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'no moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'No Data', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'no Data', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'no Data3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'no Data4', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'no Data5', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'no Data6', 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon', 5, 1727.4, 27.0);
INSERT INTO public.moon VALUES (10, 'no satellite', 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'No data7', 7, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'No data8', 7, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'No data9', 8, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'No data10', 8, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'No data11', 9, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'No data12', 9, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'No data13', 10, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'No data14', 10, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'No data15', 11, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'No data16', 12, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'No data', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'no data', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'No Data', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'no Data', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Earth', 6371.0, 1, true, true, 3);
INSERT INTO public.planet VALUES (6, 'Venus', 6051.8, 0, false, false, 3);
INSERT INTO public.planet VALUES (7, 'No planets detected', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'No planets detected too', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'Has no planets', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Has zero planets', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Has some exoplanets', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'Has some non-jupiter planets', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Ursae Majoris', 5012, 1, 'Ursa Major');
INSERT INTO public.star VALUES (2, 'Spica', 25300, 2, 'Virgo');
INSERT INTO public.star VALUES (3, 'Sun', 5772, 3, NULL);
INSERT INTO public.star VALUES (4, 'Beta Comae Berenices', 5936, 4, 'Coma Berenices');
INSERT INTO public.star VALUES (5, 'Alphard', 4120, 5, 'Hydra');
INSERT INTO public.star VALUES (6, 'Kappa Phoenicis', 7320, 6, 'Phoenix');


--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.discoverer_discoverer_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: discoverer discoverer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_name_key UNIQUE (name);


--
-- Name: discoverer discoverer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_pkey PRIMARY KEY (discoverer_id);


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
-- Name: discoverer discoverer_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

