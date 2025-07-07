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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    name character varying(50) NOT NULL,
    constellation_id integer NOT NULL,
    galaxy character varying(50)
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    size numeric,
    number_planets integer
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
    name character varying NOT NULL,
    moon_id integer NOT NULL,
    inhabitable boolean,
    planet_id integer,
    colour character varying
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    inhabitable boolean,
    number_of_moons integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    galaxy character varying,
    age_in_years integer,
    year_of_birth date,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES ('Pegasus', 1, NULL);
INSERT INTO public.constellation VALUES ('Hydra', 2, NULL);
INSERT INTO public.constellation VALUES ('Lynx', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'our galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Medusa Merger', 'only snakes live there', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Godzilla galaxy', 'very big', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Peekaboo galaxy', 'likes to hide', 500, 6);
INSERT INTO public.galaxy VALUES (5, 'Eye of Sauron', 'only Orcs can live here', 67, 2);
INSERT INTO public.galaxy VALUES (6, 'Sunflower galaxy', 'there are a lot of suns', 89, 50);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('THE moon', 1, true, 1, 'white');
INSERT INTO public.moon VALUES ('The blue moon', 2, NULL, 3, 'blue');
INSERT INTO public.moon VALUES ('The green moon', 3, false, 6, 'green');
INSERT INTO public.moon VALUES ('Moon moon', 4, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Moon moon moon', 5, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Mooooooooooon', 6, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('Muuuhhhhhnn', 7, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The grey moon', 9, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The yellow moon', 10, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The orange moon', 11, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The pink moon', 12, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The violet moon', 13, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The turquoise moon', 14, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The brown moon', 15, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The black moon', 16, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The khaki moon', 17, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The bordeau moon', 18, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The ultramarine moon', 19, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The colorless moon', 20, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('The red moon', 8, NULL, 5, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, true, 1, 1);
INSERT INTO public.planet VALUES ('Venus', 2, false, 0, 5);
INSERT INTO public.planet VALUES ('Neptun', 3, false, NULL, 5);
INSERT INTO public.planet VALUES ('Mars', 4, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Jupiter', 5, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Mordor', 6, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Kreta', 7, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Prometheus', 8, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Ganymed', 9, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Rohan', 19, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Manhatten', 11, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Metropolis', 12, NULL, NULL, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Twinkle', 'Milkey Way', 500, NULL, 1, 1);
INSERT INTO public.star VALUES ('Slytherin', NULL, NULL, NULL, 2, 2);
INSERT INTO public.star VALUES ('Mount Doom', NULL, NULL, NULL, 3, 5);
INSERT INTO public.star VALUES ('Staryu', NULL, NULL, NULL, 4, 6);
INSERT INTO public.star VALUES ('Snikers', NULL, NULL, NULL, 5, 1);
INSERT INTO public.star VALUES ('King Kong', NULL, NULL, NULL, 6, 3);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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

