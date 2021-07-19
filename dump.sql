--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3 (Ubuntu 13.3-1.pgdg20.04+1)

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
-- Name: comment; Type: TABLE; Schema: public; Owner: main
--

CREATE TABLE public.comment (
    id integer NOT NULL,
    conference_id integer NOT NULL,
    author character varying(255) NOT NULL,
    text text NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    photo_filename character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.comment OWNER TO main;

--
-- Name: comment_id_seq; Type: SEQUENCE; Schema: public; Owner: main
--

CREATE SEQUENCE public.comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_id_seq OWNER TO main;

--
-- Name: conference; Type: TABLE; Schema: public; Owner: main
--

CREATE TABLE public.conference (
    id integer NOT NULL,
    city character varying(255) NOT NULL,
    year character varying(4) NOT NULL,
    is_international boolean NOT NULL,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.conference OWNER TO main;

--
-- Name: conference_id_seq; Type: SEQUENCE; Schema: public; Owner: main
--

CREATE SEQUENCE public.conference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conference_id_seq OWNER TO main;

--
-- Name: doctrine_migration_versions; Type: TABLE; Schema: public; Owner: main
--

CREATE TABLE public.doctrine_migration_versions (
    version character varying(191) NOT NULL,
    executed_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    execution_time integer
);


ALTER TABLE public.doctrine_migration_versions OWNER TO main;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: main
--

CREATE TABLE public.sessions (
    sess_id character varying(128) NOT NULL,
    sess_data bytea NOT NULL,
    sess_lifetime integer NOT NULL,
    sess_time integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO main;

--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.comment (id, conference_id, author, text, email, created_at, photo_filename) FROM stdin;
2	1	Fabien	Something	fabien@some.where	2020-01-15 15:13:00	\N
3	1	Fabien	Soemthing else	fabien@some.where	2020-01-15 15:13:00	\N
4	1	Peter	Ebven p[eljkqbnwkjdnekln kjdbk	fabien@some.where	2020-01-15 15:13:00	\N
5	1	Liudas	Test	liudas@gmail.com	2021-07-16 14:19:15	\N
6	1	Liudas	Photo	liudas@gmail.com	2021-07-16 14:30:56	f7435d4437a7.jpg
\.


--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.conference (id, city, year, is_international, slug) FROM stdin;
1	Amsterdam	2019	t	amsterdam-2019
2	Paris	2020	f	paris-2020
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20210715120255	2021-07-15 15:04:43	276
DoctrineMigrations\\Version20210716095025	2021-07-16 12:59:28	185
DoctrineMigrations\\Version20210716102113	2021-07-16 13:24:20	132
DoctrineMigrations\\Version20210716102619	2021-07-16 13:26:23	104
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.sessions (sess_id, sess_data, sess_lifetime, sess_time) FROM stdin;
961f1dbcj5ij435i5t6k9mhdmj	\\x5f7366325f617474726962757465737c613a333a7b733a33393a225f637372662f68747470732d65612d62617463682d616374696f6e2d626174636844656c657465223b733a34333a22586a63464e744b2d78637a4153325f48365a48746d6c6d68455163375738475f565341796e68744475654d223b733a32313a225f637372662f68747470732d65612d64656c657465223b733a34333a2244565133706b5a6a4338384a32557070564c3556786359716735675a3749596e53337a2d686432354e4e4d223b733a32343a225f637372662f68747470732d636f6d6d656e745f66726f6d223b733a34333a22396f624853717852486862466c49666c47647179624d6757754d34512d5f46344e366776586a6979527338223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313632363433353239363b733a313a2263223b693a313632363432393538323b733a313a226c223b733a313a2230223b7d	1626436736	1626435296
jfb4ujoh32vpld28gs3c2e38gu	\\x5f7366325f617474726962757465737c613a323a7b733a33393a225f637372662f68747470732d65612d62617463682d616374696f6e2d626174636844656c657465223b733a34333a2276534d774e6848384d6e4e4b76457645454a3664796834596968503333646936376d7150424975394a536b223b733a32313a225f637372662f68747470732d65612d64656c657465223b733a34333a22375f687953525f566f42735f33754a33686836356a646b437431464271503339764a326d543234457a3467223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313632363433353330303b733a313a2263223b693a313632363433353330303b733a313a226c223b733a313a2230223b7d	1626436740	1626435300
\.


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: main
--

SELECT pg_catalog.setval('public.comment_id_seq', 6, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: main
--

SELECT pg_catalog.setval('public.conference_id_seq', 2, true);


--
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: main
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);


--
-- Name: conference conference_pkey; Type: CONSTRAINT; Schema: public; Owner: main
--

ALTER TABLE ONLY public.conference
    ADD CONSTRAINT conference_pkey PRIMARY KEY (id);


--
-- Name: doctrine_migration_versions doctrine_migration_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: main
--

ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: main
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (sess_id);


--
-- Name: idx_9474526c604b8382; Type: INDEX; Schema: public; Owner: main
--

CREATE INDEX idx_9474526c604b8382 ON public.comment USING btree (conference_id);


--
-- Name: uniq_911533c8989d9b62; Type: INDEX; Schema: public; Owner: main
--

CREATE UNIQUE INDEX uniq_911533c8989d9b62 ON public.conference USING btree (slug);


--
-- Name: comment fk_9474526c604b8382; Type: FK CONSTRAINT; Schema: public; Owner: main
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT fk_9474526c604b8382 FOREIGN KEY (conference_id) REFERENCES public.conference(id);


--
-- PostgreSQL database dump complete
--

