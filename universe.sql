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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth_in_millionsofyears numeric,
    hubble_type character varying(20),
    num_stars character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_number_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_number_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    orbital_period integer,
    planet_id integer,
    surface_temperature character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_number_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_number_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num_moons integer,
    is_gaseous boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_number_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_number_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_main_sequence boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_number_seq OWNER TO freecodecamp;

--
-- Name: star_star_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_number_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_number_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_number_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_number_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_number_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 940);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 525);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 512);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 434);
INSERT INTO public.asteroid VALUES (5, 'Interamnia', 350);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 0, 'SBc', '100-400 billion stars');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 2.537, 'SA(s)b', '1 trillion stars');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 2.73, 'SA(s)cd', '40 billion');
INSERT INTO public.galaxy VALUES (4, 'Pinwheel Galaxy', 21, 'SAB(rs)cd', '1 trillion');
INSERT INTO public.galaxy VALUES (5, 'Sombroro Galaxy', 31, 'SA(s)a', '800 billion');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 23, 'Sbc', '100 billion');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 7, 3, '-163°C');
INSERT INTO public.moon VALUES (2, 'Io', 2, 3, '-143°C');
INSERT INTO public.moon VALUES (3, 'Europa', 4, 3, '-160°C');
INSERT INTO public.moon VALUES (4, 'Titan', 16, 4, '-179°C');
INSERT INTO public.moon VALUES (5, 'Enceladus', 1, 4, '-198°C');
INSERT INTO public.moon VALUES (6, 'Mimas', 1, 4, '-186°C');
INSERT INTO public.moon VALUES (7, 'Miranda', 1, 5, '-187°C');
INSERT INTO public.moon VALUES (8, 'Titania', 9, 6, '-213°C');
INSERT INTO public.moon VALUES (9, 'Oberon', 13, 6, '-197°C');
INSERT INTO public.moon VALUES (10, 'Ariel', 3, 6, '-213°C');
INSERT INTO public.moon VALUES (11, 'Charon', 6, 7, '-220°C');
INSERT INTO public.moon VALUES (12, 'Nix', 25, 7, '-235°C');
INSERT INTO public.moon VALUES (13, 'Hydra', 38, 7, '-240°C');
INSERT INTO public.moon VALUES (14, 'Dysnomia', 16, 8, 'N/A');
INSERT INTO public.moon VALUES (15, 'Chariklo', 13, 9, 'N/A');
INSERT INTO public.moon VALUES (16, 'Haumea I Hiʻiaka', 50, 10, 'N/A');
INSERT INTO public.moon VALUES (17, 'Quaoar Weywot', 12, 11, 'N/A');
INSERT INTO public.moon VALUES (18, 'S/2004 (2004 UX10) 1', 1, 12, 'N/A');
INSERT INTO public.moon VALUES (19, 'S/2004 (2004 UX10) 2', 1, 12, 'N/A');
INSERT INTO public.moon VALUES (20, 'S/2004 (2004 UX10) 3', 1, 12, 'N/A');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 79, true, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 82, true, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', 27, true, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 14, true, 1);
INSERT INTO public.planet VALUES (7, 'Pluto', 5, false, 1);
INSERT INTO public.planet VALUES (8, 'Eris', 1, false, 1);
INSERT INTO public.planet VALUES (9, 'Earth', 1, false, 1);
INSERT INTO public.planet VALUES (10, 'Mars', 2, false, 1);
INSERT INTO public.planet VALUES (11, 'Pi Mensae b', 0, true, 2);
INSERT INTO public.planet VALUES (12, 'Pi Mensae c', 0, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the central star of our solar system, around which all the planets, including Earth, orbit.', true, 1);
INSERT INTO public.star VALUES (2, 'HD 39091', 'HD 39091 is one of the stars within the Andromeda Galaxy, though specific stars in other galaxies are often identified through indirect methods due to the vast distance.', true, 2);
INSERT INTO public.star VALUES (3, 'M33-V1', 'M33-V1 is a Cepheid variable star in the Triangulum Galaxy used to measure the distance to M33 due to its periodic brightness variations.', false, 3);
INSERT INTO public.star VALUES (4, 'SN 2005cs', 'SN 2005cs is a supernova that occurred in the Whirlpool Galaxy. Individual stars in distant galaxies are often noted when they become supernovae.', false, 6);
INSERT INTO public.star VALUES (5, 'SN 2003es', 'SN 2003es is a supernova observed in the Sombrero Galaxy. Like other distant galaxies, individual stars are typically identified when they exhibit significant events like supernovae.', false, 5);
INSERT INTO public.star VALUES (6, 'SN 2011fe', 'SN 2011fe is a Type Ia supernova in the Pinwheel Galaxy, one of the brightest and closest supernovae observed in recent years.', false, 4);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


--
-- Name: galaxy_galaxy_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_number_seq', 6, true);


--
-- Name: moon_moon_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_number_seq', 20, true);


--
-- Name: planet_planet_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_number_seq', 12, true);


--
-- Name: star_star_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_number_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_id_diff; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_diff UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_diff; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_diff UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_ UNIQUE (name);


--
-- Name: planet planet_id_diff; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_diff UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_diff; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_diff UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- Name: star star_galaxy_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_number_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

