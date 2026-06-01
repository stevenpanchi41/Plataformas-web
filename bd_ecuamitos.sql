--
-- PostgreSQL database dump
--

\restrict ToybCZQ1C4KDcayV5dihmU6tLx8wEUohRHmzkjSufCv9MGplSGueu75axkGkDa7

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-06-01 17:51:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 224 (class 1259 OID 16406)
-- Name: tb_bitacora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_bitacora (
    id_bit integer NOT NULL,
    correo_us character varying(100),
    accion_bit character varying(300),
    fecha_bit timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.tb_bitacora OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16405)
-- Name: tb_bitacora_id_bit_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_bitacora_id_bit_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_bitacora_id_bit_seq OWNER TO postgres;

--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_bitacora_id_bit_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_bitacora_id_bit_seq OWNED BY public.tb_bitacora.id_bit;


--
-- TOC entry 222 (class 1259 OID 16398)
-- Name: tb_categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_categoria (
    id_cat integer NOT NULL,
    nombre_cat character varying(100)
);


ALTER TABLE public.tb_categoria OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16397)
-- Name: tb_categoria_id_cat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_categoria_id_cat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_categoria_id_cat_seq OWNER TO postgres;

--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 221
-- Name: tb_categoria_id_cat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_categoria_id_cat_seq OWNED BY public.tb_categoria.id_cat;


--
-- TOC entry 226 (class 1259 OID 16415)
-- Name: tb_leyenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_leyenda (
    id_ley integer NOT NULL,
    id_cat integer,
    titulo_ley character varying(150),
    descripcion_ley text,
    imagen_ley character varying(200),
    audio_ley character varying(200),
    video_ley character varying(200),
    modelo3d_ley character varying(200),
    aprobada boolean DEFAULT false
);


ALTER TABLE public.tb_leyenda OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16414)
-- Name: tb_leyenda_id_ley_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_leyenda_id_ley_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_leyenda_id_ley_seq OWNER TO postgres;

--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 225
-- Name: tb_leyenda_id_ley_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_leyenda_id_ley_seq OWNED BY public.tb_leyenda.id_ley;


--
-- TOC entry 220 (class 1259 OID 16390)
-- Name: tb_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_usuario (
    id_us integer NOT NULL,
    nombre_us character varying(100),
    correo_us character varying(100),
    clave_us character varying(100),
    perfil_us character varying(20),
    estado_us boolean
);


ALTER TABLE public.tb_usuario OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16389)
-- Name: tb_usuario_id_us_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_usuario_id_us_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_usuario_id_us_seq OWNER TO postgres;

--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 219
-- Name: tb_usuario_id_us_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_usuario_id_us_seq OWNED BY public.tb_usuario.id_us;


--
-- TOC entry 4873 (class 2604 OID 16409)
-- Name: tb_bitacora id_bit; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_bitacora ALTER COLUMN id_bit SET DEFAULT nextval('public.tb_bitacora_id_bit_seq'::regclass);


--
-- TOC entry 4872 (class 2604 OID 16401)
-- Name: tb_categoria id_cat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoria ALTER COLUMN id_cat SET DEFAULT nextval('public.tb_categoria_id_cat_seq'::regclass);


--
-- TOC entry 4875 (class 2604 OID 16418)
-- Name: tb_leyenda id_ley; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_leyenda ALTER COLUMN id_ley SET DEFAULT nextval('public.tb_leyenda_id_ley_seq'::regclass);


--
-- TOC entry 4871 (class 2604 OID 16393)
-- Name: tb_usuario id_us; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_usuario ALTER COLUMN id_us SET DEFAULT nextval('public.tb_usuario_id_us_seq'::regclass);


--
-- TOC entry 5038 (class 0 OID 16406)
-- Dependencies: 224
-- Data for Name: tb_bitacora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_bitacora (id_bit, correo_us, accion_bit, fecha_bit) FROM stdin;
1	admin@admin.com	Inicio de Sesion	2026-05-29 20:21:35.229722
2	daniel@gmail.com	Inicio de Sesion	2026-05-29 20:22:07.958227
3	admin@admin.com	Inicio de Sesion	2026-05-30 20:36:30.761549
4	memo@gmail.com	Inicio de Sesion	2026-05-30 21:17:51.692438
5	memo@gmail.com	Visito Sierra	2026-05-30 21:18:10.80369
6	memo@gmail.com	Visito Leyenda La Tunda	2026-05-30 21:19:21.483301
7	memo@gmail.com	Visito Leyenda Kuraka	2026-05-30 21:19:38.800544
8	memo@gmail.com	Inicio de Sesion	2026-05-30 21:20:54.980631
9	admin@admin.com	Inicio de Sesion	2026-05-30 21:21:37.973119
10	admin@admin.com	Inicio de Sesion	2026-05-30 22:00:30.144291
11	daniel@gmail.com	Inicio de Sesion	2026-05-30 22:00:48.083222
12	daniel@gmail.com	Inicio de Sesion	2026-05-30 22:03:14.066467
13	daniel@gmail.com	Visito Sierra	2026-05-30 22:03:18.399791
14	daniel@gmail.com	Visito Leyenda La Tunda	2026-05-30 22:04:18.175745
15	daniel@gmail.com	Inicio de Sesion	2026-05-30 22:18:41.839494
16	daniel@gmail.com	Inicio de Sesion	2026-05-30 22:27:49.666137
17	daniel@gmail.com	Inicio de Sesion	2026-05-30 22:28:24.15824
18	admin@admin.com	Inicio de Sesion	2026-05-30 22:30:01.313774
19	daniel@gmail.com	Inicio de Sesion	2026-05-30 22:30:14.990762
20	daniel@gmail.com	Inicio de Sesion	2026-05-30 22:32:10.678046
21	daniel@gmail.com	Inicio de Sesion	2026-05-30 22:35:46.902151
22	daniel@gmail.com	Inicio de Sesion	2026-05-31 17:34:46.684146
23	daniel@gmail.com	Inicio de Sesion	2026-05-31 17:36:49.404796
24	daniel@gmail.com	Inicio de Sesion	2026-05-31 17:37:48.057942
25	daniel@gmail.com	Inicio de Sesion	2026-05-31 17:55:41.887849
26	daniel@gmail.com	Inicio de Sesion	2026-05-31 17:56:14.098762
27	dapdhne@gmail.com	Inicio de Sesion	2026-05-31 18:07:37.048253
28	daniel@gmail.com	Inicio de Sesion	2026-05-31 18:13:48.022986
29	daniel@gmail.com	Inicio de Sesion	2026-05-31 18:14:59.681639
30	admin@admin.com	Inicio de Sesion	2026-05-31 18:19:29.911338
31	daniel@gmail.com	Inicio de Sesion	2026-05-31 18:24:03.584394
32	admin@admin.com	Inicio de Sesion	2026-05-31 19:05:55.343405
33	admin@admin.com	Inicio de Sesion	2026-05-31 19:09:18.890708
34	daniel@gmail.com	Inicio de Sesion	2026-05-31 19:24:44.88231
35	admin@admin.com	Inicio de Sesion	2026-05-31 19:25:24.257695
36	daniel@gmail.com	Inicio de Sesion	2026-05-31 20:09:58.278053
37	daniel@gmail.com	Inicio de Sesion	2026-05-31 20:21:32.786325
38	steven@admin.com	Inicio de Sesion	2026-05-31 21:02:58.445389
39	daniel@gmail.com	Inicio de Sesion	2026-05-31 21:05:06.941002
40	steven@admin.com	Inicio de Sesion	2026-06-01 17:10:38.744911
41	daniel@gmail.com	Inicio de Sesion	2026-06-01 17:16:40.834925
\.


--
-- TOC entry 5036 (class 0 OID 16398)
-- Dependencies: 222
-- Data for Name: tb_categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_categoria (id_cat, nombre_cat) FROM stdin;
1	Sierra
2	Costa
3	Amazonia
4	Sierra
5	Costa
6	Amazonia
\.


--
-- TOC entry 5040 (class 0 OID 16415)
-- Dependencies: 226
-- Data for Name: tb_leyenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_leyenda (id_ley, id_cat, titulo_ley, descripcion_ley, imagen_ley, audio_ley, video_ley, modelo3d_ley, aprobada) FROM stdin;
1	1	Cantuña	La leyenda de Cantuña relata cómo un indígena quiteño logró salvar su alma tras hacer un pacto con el diablo para terminar a tiempo la construcción del atrio de la Iglesia de San Francisco en Quito	cantuna.jpg	cantuna.mp3	cantuna.mp4	cantuna.glb	t
2	2	La Tacona	Esta leyenda de la ciudad de Esmeralda habla del fantasma de una hermosa joven que transita las calles y seduce a los hombres cuando hay luna llena. Estos mueren de susto cuando se les revela el espantoso rostro cadavérico de la mujer.\r\n\r\nSegún la historia, fue una mujer que murió luego de ser violada una noche en un callejón. Su espíritu no sabía que había muerto, por lo que decidió regresar a casa a bañarse y maquillarse para quitarse el sucio y la sangre. Juró frente al espejo nunca más dejarse hacer daño por nadie.\r\n\r\nDecidió caminar por calles y recorrer bares atrayendo a hombres malintencionados con su vestido rojo y tacones muy altos.\r\n\r\nUna vez un hombre apuesto la invitó a la playa, a lo que ella aceptó decidida. Luego él intentó abusar de ella, pero al mirar su rostro se espantó y echó a correr.\r\n\r\nLa carrera lo llevó sin querer al cementerio, en donde sorpresivamente leyó el nombre de aquella mujer. Años más tarde, el hombre visitó la tumba de la joven llevándole una rosa roja. Arrodillado, le agradeció que aquella noche lo hizo cambiar y ya no seduce a las mujeres.\r\n\r\nEl hombre sintió una palmada en el hombro y una voz le dijo: “Eso era lo que quería escuchar”. Al voltear, una mujer de vestido rojo se alejaba.					t
\.


--
-- TOC entry 5034 (class 0 OID 16390)
-- Dependencies: 220
-- Data for Name: tb_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_usuario (id_us, nombre_us, correo_us, clave_us, perfil_us, estado_us) FROM stdin;
1	Administrador	admin@admin.com	12345678	ADMIN	t
2	daniel	daniel@gmail.com	12345678	ESTUDIANTE	t
3	memo	memo@gmail.com	12345678	ESTUDIANTE	t
5	dapdhne	dapdhne@gmail.com	12345678	ESTUDIANTE	t
6	steven	steven@admin.com	12345678	ESTUDIANTE	t
4	alex	alex@gmail.com	12345678	ESTUDIANTE	f
\.


--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_bitacora_id_bit_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_bitacora_id_bit_seq', 41, true);


--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 221
-- Name: tb_categoria_id_cat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_categoria_id_cat_seq', 6, true);


--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 225
-- Name: tb_leyenda_id_ley_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_leyenda_id_ley_seq', 2, true);


--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 219
-- Name: tb_usuario_id_us_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_usuario_id_us_seq', 6, true);


--
-- TOC entry 4882 (class 2606 OID 16413)
-- Name: tb_bitacora tb_bitacora_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_bitacora
    ADD CONSTRAINT tb_bitacora_pkey PRIMARY KEY (id_bit);


--
-- TOC entry 4880 (class 2606 OID 16404)
-- Name: tb_categoria tb_categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categoria
    ADD CONSTRAINT tb_categoria_pkey PRIMARY KEY (id_cat);


--
-- TOC entry 4884 (class 2606 OID 16423)
-- Name: tb_leyenda tb_leyenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_leyenda
    ADD CONSTRAINT tb_leyenda_pkey PRIMARY KEY (id_ley);


--
-- TOC entry 4878 (class 2606 OID 16396)
-- Name: tb_usuario tb_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT tb_usuario_pkey PRIMARY KEY (id_us);


--
-- TOC entry 4885 (class 2606 OID 16424)
-- Name: tb_leyenda fk_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_leyenda
    ADD CONSTRAINT fk_categoria FOREIGN KEY (id_cat) REFERENCES public.tb_categoria(id_cat);


-- Completed on 2026-06-01 17:51:21

--
-- PostgreSQL database dump complete
--

\unrestrict ToybCZQ1C4KDcayV5dihmU6tLx8wEUohRHmzkjSufCv9MGplSGueu75axkGkDa7

