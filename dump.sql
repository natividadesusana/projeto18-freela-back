--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: cities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: conveniences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.conveniences (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: conveniences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.conveniences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: conveniences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.conveniences_id_seq OWNED BY public.conveniences.id;


--
-- Name: flights; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.flights (
    id integer NOT NULL,
    airline character varying(255) NOT NULL,
    "destinationCityId" integer,
    "originCityId" integer,
    price numeric(10,2),
    avatar text NOT NULL,
    "arrivalTime" timestamp without time zone,
    "departureTime" timestamp without time zone,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: flights_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.flights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: flights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.flights_id_seq OWNED BY public.flights.id;


--
-- Name: hotel_conveniences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hotel_conveniences (
    id integer NOT NULL,
    "hotelId" integer,
    "convenienceId" integer,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: hotel_conveniences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.hotel_conveniences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hotel_conveniences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.hotel_conveniences_id_seq OWNED BY public.hotel_conveniences.id;


--
-- Name: hotels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hotels (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    price numeric(10,2),
    avatar text NOT NULL,
    "cityId" integer,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: hotels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.hotels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hotels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.hotels_id_seq OWNED BY public.hotels.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.photos (
    id integer NOT NULL,
    url text NOT NULL,
    "hotelId" integer,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.photos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.photos_id_seq OWNED BY public.photos.id;


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: conveniences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.conveniences ALTER COLUMN id SET DEFAULT nextval('public.conveniences_id_seq'::regclass);


--
-- Name: flights id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.flights ALTER COLUMN id SET DEFAULT nextval('public.flights_id_seq'::regclass);


--
-- Name: hotel_conveniences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hotel_conveniences ALTER COLUMN id SET DEFAULT nextval('public.hotel_conveniences_id_seq'::regclass);


--
-- Name: hotels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hotels ALTER COLUMN id SET DEFAULT nextval('public.hotels_id_seq'::regclass);


--
-- Name: photos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.photos ALTER COLUMN id SET DEFAULT nextval('public.photos_id_seq'::regclass);


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cities VALUES (1, 'Florianópolis', '2023-05-27 20:57:32.120534');
INSERT INTO public.cities VALUES (2, 'São Paulo', '2023-05-27 21:13:13.462596');
INSERT INTO public.cities VALUES (11, 'Rio de Janeiro', '2023-05-28 02:31:18.949325');
INSERT INTO public.cities VALUES (12, 'Porto Alegre', '2023-05-28 02:31:18.949325');
INSERT INTO public.cities VALUES (13, 'Curitiba', '2023-05-28 02:31:18.949325');
INSERT INTO public.cities VALUES (14, 'Salvador', '2023-05-28 02:31:18.949325');
INSERT INTO public.cities VALUES (15, 'Bahia', '2023-05-28 02:31:18.949325');


--
-- Data for Name: conveniences; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.conveniences VALUES (1, 'wi-fi', '2023-05-27 21:28:26.232403');
INSERT INTO public.conveniences VALUES (2, 'piscina', '2023-05-27 21:29:46.686025');
INSERT INTO public.conveniences VALUES (3, 'ar condicionado', '2023-05-27 21:29:53.610723');
INSERT INTO public.conveniences VALUES (4, 'estacionamento', '2023-05-27 21:29:59.606537');
INSERT INTO public.conveniences VALUES (5, 'café da manhã', '2023-05-27 21:30:05.504648');


--
-- Data for Name: flights; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.flights VALUES (1, 'Azul Linhas Aéreas', 1, 2, 120.00, 'https://investidorsardinha.r7.com/wp-content/uploads/2020/04/logo-azul.png', '2023-05-27 23:00:00', '2023-05-27 22:00:00', '2023-05-28 01:08:58.435953');
INSERT INTO public.flights VALUES (2, 'TAM', 1, 2, 150.00, 'https://s3-sa-east-1.amazonaws.com/latamprod-sitemedia-red/uploads/cb_ee6575c9111ddcd7f14e81dc1399b14a/latam/images/latam-airlines-logo.png', '2023-05-25 23:00:00', '2023-05-25 23:00:00', '2023-05-28 01:54:31.92952');
INSERT INTO public.flights VALUES (6, 'Gol Linhas aéreas', 1, 2, 210.00, 'https://cdn.cookielaw.org/logos/2f980304-3780-4365-af8e-169de13b4d42/9e6171b5-155a-43df-aa42-817c49446d96/02063c55-92f9-4e3f-9a94-837169d9991d/gol_correto.png', '2023-06-20 12:00:00', '2023-06-20 13:00:00', '2023-05-28 02:17:31.818695');
INSERT INTO public.flights VALUES (8, 'Azul Linhas Aéreas', 11, 2, 250.00, 'https://investidorsardinha.r7.com/wp-content/uploads/2020/04/logo-azul.png', '2023-08-10 13:00:00', '2023-08-10 14:00:00', '2023-05-28 02:37:47.869597');
INSERT INTO public.flights VALUES (9, 'Gol Linhas aéreas', 12, 15, 310.10, 'https://cdn.cookielaw.org/logos/2f980304-3780-4365-af8e-169de13b4d42/9e6171b5-155a-43df-aa42-817c49446d96/02063c55-92f9-4e3f-9a94-837169d9991d/gol_correto.png', '2023-10-05 12:00:00', '2023-10-05 14:00:00', '2023-05-28 02:39:25.079418');


--
-- Data for Name: hotel_conveniences; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.hotel_conveniences VALUES (1, 1, 1, '2023-05-28 00:00:17.372445');
INSERT INTO public.hotel_conveniences VALUES (2, 1, 2, '2023-05-28 00:01:33.50092');
INSERT INTO public.hotel_conveniences VALUES (3, 2, 5, '2023-05-28 02:02:57.997639');
INSERT INTO public.hotel_conveniences VALUES (4, 2, 4, '2023-05-28 02:02:57.997639');
INSERT INTO public.hotel_conveniences VALUES (5, 2, 1, '2023-05-28 02:02:57.997639');
INSERT INTO public.hotel_conveniences VALUES (6, 3, 1, '2023-05-28 02:33:55.891247');
INSERT INTO public.hotel_conveniences VALUES (7, 3, 3, '2023-05-28 02:33:55.891247');


--
-- Data for Name: hotels; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.hotels VALUES (1, 'Íbis', 'Hotel 5 Estrelas', 90.00, 'https://www.melhoresdestinos.com.br/wp-content/uploads/2020/06/rede-ibis-hoteis-capa2019.jpg', 1, '2023-05-27 23:59:32.330163');
INSERT INTO public.hotels VALUES (2, 'Terrafirme', 'Hotel 4 Estrelas', 110.00, 'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768', 1, '2023-05-28 02:00:57.105474');
INSERT INTO public.hotels VALUES (3, 'Brisamar', 'Hotel 3 Estrelas', 89.00, 'https://www.saovicenteonline.com.br/wp-content/uploads/2016/09/shoppingcapa-001.jpg', 2, '2023-05-28 02:33:08.696473');


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.photos VALUES (1, 'https://www.ahstatic.com/photos/a747_ho_00_p_1024x768.jpg', 1, '2023-05-28 00:34:00.884124');
INSERT INTO public.photos VALUES (2, 'https://pesweb.azureedge.net/spimg/hotelbannerimages/pestana-sao-paulo-hotel-banner-01.jpg?scale=downscaleonly&encoder=freeimage&progressive=true&quality=50&w=1440&h=780&mode=crop&anchor=bottomcenter', 2, '2023-05-28 02:02:10.618919');
INSERT INTO public.photos VALUES (3, 'https://q-xx.bstatic.com/xdata/images/hotel/max500/241172183.jpg?k=86df1075c84459727ddb61255e472819bd37b7a3b3b38ed8261fcccdaa1d5bad&o=', 2, '2023-05-28 02:02:10.618919');
INSERT INTO public.photos VALUES (4, 'https://www.maladeaventuras.com/wp-content/uploads/2019/05/hoteis-romanticos-no-rio-de-janeiro-porto-bay.jpg', 3, '2023-05-28 02:35:53.329726');
INSERT INTO public.photos VALUES (5, 'https://www.sinesp.org.br/images/2019/banner_hoteis.jpg', 3, '2023-05-28 02:35:53.329726');
INSERT INTO public.photos VALUES (6, 'https://i0.wp.com/www.viciadaemviajar.com/wp-content/uploads/2020/12/tabaobi-smart-hotel-onde-ficar-em-porto-de-galinhas.jpg?fit=780%2C697&ssl=1', 3, '2023-05-28 02:35:53.329726');
INSERT INTO public.photos VALUES (7, 'https://m7g2b8q3.stackpathcdn.com/wp-content/uploads/2018/06/melhores-hoteis-cordoba-nh.jpg', 1, '2023-05-28 02:35:53.329726');
INSERT INTO public.photos VALUES (8, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/2f/3d/f7/790176-pool.jpg?w=300&h=300&s=1', 1, '2023-05-28 02:35:53.329726');
INSERT INTO public.photos VALUES (9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-Qc4l5KR4lvEwyoOyjq7aZcKBy3ctLIsPlw&usqp=CAU', 2, '2023-05-28 02:36:12.546444');


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cities_id_seq', 15, true);


--
-- Name: conveniences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.conveniences_id_seq', 5, true);


--
-- Name: flights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.flights_id_seq', 9, true);


--
-- Name: hotel_conveniences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.hotel_conveniences_id_seq', 7, true);


--
-- Name: hotels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.hotels_id_seq', 3, true);


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.photos_id_seq', 9, true);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: conveniences conveniences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.conveniences
    ADD CONSTRAINT conveniences_pkey PRIMARY KEY (id);


--
-- Name: flights flights_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_pkey PRIMARY KEY (id);


--
-- Name: hotel_conveniences hotel_conveniences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hotel_conveniences
    ADD CONSTRAINT hotel_conveniences_pkey PRIMARY KEY (id);


--
-- Name: hotels hotels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT hotels_pkey PRIMARY KEY (id);


--
-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: flights flights_destinationCityId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT "flights_destinationCityId_fkey" FOREIGN KEY ("destinationCityId") REFERENCES public.cities(id);


--
-- Name: flights flights_originCityId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT "flights_originCityId_fkey" FOREIGN KEY ("originCityId") REFERENCES public.cities(id);


--
-- Name: hotel_conveniences hotel_conveniences_convenienceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hotel_conveniences
    ADD CONSTRAINT "hotel_conveniences_convenienceId_fkey" FOREIGN KEY ("convenienceId") REFERENCES public.conveniences(id);


--
-- Name: hotel_conveniences hotel_conveniences_hotelId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hotel_conveniences
    ADD CONSTRAINT "hotel_conveniences_hotelId_fkey" FOREIGN KEY ("hotelId") REFERENCES public.hotels(id);


--
-- Name: hotels hotels_cityId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT "hotels_cityId_fkey" FOREIGN KEY ("cityId") REFERENCES public.cities(id);


--
-- Name: photos photos_hotelId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT "photos_hotelId_fkey" FOREIGN KEY ("hotelId") REFERENCES public.hotels(id);


--
-- PostgreSQL database dump complete
--

