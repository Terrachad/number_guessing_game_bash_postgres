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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer NOT NULL,
    game_id integer NOT NULL,
    guesses integer DEFAULT 0
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (78, 125, 0);
INSERT INTO public.games VALUES (78, 126, 0);
INSERT INTO public.games VALUES (79, 127, 0);
INSERT INTO public.games VALUES (82, 128, 0);
INSERT INTO public.games VALUES (82, 129, 0);
INSERT INTO public.games VALUES (83, 130, 0);
INSERT INTO public.games VALUES (83, 131, 0);
INSERT INTO public.games VALUES (82, 132, 0);
INSERT INTO public.games VALUES (82, 133, 0);
INSERT INTO public.games VALUES (82, 134, 0);
INSERT INTO public.games VALUES (84, 135, 5);
INSERT INTO public.games VALUES (85, 136, 0);
INSERT INTO public.games VALUES (85, 137, 0);
INSERT INTO public.games VALUES (86, 138, 0);
INSERT INTO public.games VALUES (86, 139, 0);
INSERT INTO public.games VALUES (85, 140, 0);
INSERT INTO public.games VALUES (85, 141, 0);
INSERT INTO public.games VALUES (85, 142, 0);
INSERT INTO public.games VALUES (97, 143, 8);
INSERT INTO public.games VALUES (97, 144, 0);
INSERT INTO public.games VALUES (98, 145, 8);
INSERT INTO public.games VALUES (98, 146, 0);
INSERT INTO public.games VALUES (97, 147, 0);
INSERT INTO public.games VALUES (97, 148, 0);
INSERT INTO public.games VALUES (97, 149, 0);
INSERT INTO public.games VALUES (100, 150, 0);
INSERT INTO public.games VALUES (101, 151, 0);
INSERT INTO public.games VALUES (100, 152, 0);
INSERT INTO public.games VALUES (100, 153, 0);
INSERT INTO public.games VALUES (100, 154, 0);
INSERT INTO public.games VALUES (99, 155, 3);
INSERT INTO public.games VALUES (99, 156, 1);
INSERT INTO public.games VALUES (99, 157, 13);
INSERT INTO public.games VALUES (102, 158, 329);
INSERT INTO public.games VALUES (102, 159, 266);
INSERT INTO public.games VALUES (103, 160, 358);
INSERT INTO public.games VALUES (103, 161, 922);
INSERT INTO public.games VALUES (102, 162, 995);
INSERT INTO public.games VALUES (102, 163, 801);
INSERT INTO public.games VALUES (102, 164, 382);
INSERT INTO public.games VALUES (104, 165, 475);
INSERT INTO public.games VALUES (104, 166, 532);
INSERT INTO public.games VALUES (105, 167, 404);
INSERT INTO public.games VALUES (105, 168, 141);
INSERT INTO public.games VALUES (104, 169, 581);
INSERT INTO public.games VALUES (104, 170, 581);
INSERT INTO public.games VALUES (104, 171, 272);
INSERT INTO public.games VALUES (106, 172, 266);
INSERT INTO public.games VALUES (106, 173, 381);
INSERT INTO public.games VALUES (107, 174, 178);
INSERT INTO public.games VALUES (107, 175, 563);
INSERT INTO public.games VALUES (106, 176, 277);
INSERT INTO public.games VALUES (106, 177, 637);
INSERT INTO public.games VALUES (106, 178, 84);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('vlad', 77);
INSERT INTO public.users VALUES ('user_1680551733167', 78);
INSERT INTO public.users VALUES ('user_1680551733166', 79);
INSERT INTO public.users VALUES ('user_1680551742701', 80);
INSERT INTO public.users VALUES ('user_1680551742700', 81);
INSERT INTO public.users VALUES ('user_1680551760480', 82);
INSERT INTO public.users VALUES ('user_1680551760479', 83);
INSERT INTO public.users VALUES ('VLAD', 84);
INSERT INTO public.users VALUES ('user_1680551839859', 85);
INSERT INTO public.users VALUES ('user_1680551839858', 86);
INSERT INTO public.users VALUES ('user_1680551869218', 87);
INSERT INTO public.users VALUES ('user_1680551869217', 88);
INSERT INTO public.users VALUES ('user_1680551923771', 89);
INSERT INTO public.users VALUES ('user_1680551923770', 90);
INSERT INTO public.users VALUES ('user_1680555560240', 91);
INSERT INTO public.users VALUES ('user_1680555560239', 92);
INSERT INTO public.users VALUES ('user_1680558245421', 93);
INSERT INTO public.users VALUES ('user_1680558245420', 94);
INSERT INTO public.users VALUES ('user_1680558277494', 95);
INSERT INTO public.users VALUES ('user_1680558277493', 96);
INSERT INTO public.users VALUES ('user_1680558294015', 97);
INSERT INTO public.users VALUES ('user_1680558294014', 98);
INSERT INTO public.users VALUES ('1', 99);
INSERT INTO public.users VALUES ('user_1680560803239', 100);
INSERT INTO public.users VALUES ('user_1680560803238', 101);
INSERT INTO public.users VALUES ('user_1680562036993', 102);
INSERT INTO public.users VALUES ('user_1680562036992', 103);
INSERT INTO public.users VALUES ('user_1680562175737', 104);
INSERT INTO public.users VALUES ('user_1680562175736', 105);
INSERT INTO public.users VALUES ('user_1680562245080', 106);
INSERT INTO public.users VALUES ('user_1680562245079', 107);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 178, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 107, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

