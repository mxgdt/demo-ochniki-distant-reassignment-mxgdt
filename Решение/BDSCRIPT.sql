--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 17.2

-- Started on 2025-03-24 13:29:43

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
-- SET transaction_timeout = 0;
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
-- TOC entry 216 (class 1259 OID 28736)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 28735)
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 28744)
-- Name: expence_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.expence_products (
    id integer NOT NULL,
    expence_date date NOT NULL,
    family_member_id integer,
    product_id integer,
    amount bigint NOT NULL
);


ALTER TABLE public.expence_products OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 28743)
-- Name: expence_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.expence_products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.expence_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 28750)
-- Name: family_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.family_members (
    id integer NOT NULL,
    family_member_name character varying NOT NULL,
    birth_date date NOT NULL,
    job_name character varying,
    organisation_name character varying,
    sallary bigint,
    job_start_date date
);


ALTER TABLE public.family_members OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 28749)
-- Name: family_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.family_members ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.family_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 28758)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    price bigint NOT NULL,
    category_id integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 28757)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4854 (class 0 OID 28736)
-- Dependencies: 216
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (1, 'Продукты');
INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (2, 'Транспорт');
INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (3, 'Развлечения');
INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (4, 'Одежда');
INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (5, 'Образование');
INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (6, 'Здоровье');
INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (7, 'Кредиты');
INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (8, 'Подарки');


--
-- TOC entry 4856 (class 0 OID 28744)
-- Dependencies: 218
-- Data for Name: expence_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.expence_products OVERRIDING SYSTEM VALUE VALUES (1, '2025-02-01', 1, 1, 2);
INSERT INTO public.expence_products OVERRIDING SYSTEM VALUE VALUES (2, '2025-02-01', 1, 1, 3);
INSERT INTO public.expence_products OVERRIDING SYSTEM VALUE VALUES (3, '2025-02-01', 1, 1, 1);
INSERT INTO public.expence_products OVERRIDING SYSTEM VALUE VALUES (4, '2025-02-06', 2, 4, 1);
INSERT INTO public.expence_products OVERRIDING SYSTEM VALUE VALUES (5, '2025-02-09', 5, 2, 30);
INSERT INTO public.expence_products OVERRIDING SYSTEM VALUE VALUES (6, '2025-02-12', 4, 6, 5);
INSERT INTO public.expence_products OVERRIDING SYSTEM VALUE VALUES (7, '2025-02-18', 1, 7, 1);
INSERT INTO public.expence_products OVERRIDING SYSTEM VALUE VALUES (8, '2025-02-22', 2, 8, 1);
INSERT INTO public.expence_products OVERRIDING SYSTEM VALUE VALUES (9, '2025-02-22', 3, 3, 1);


--
-- TOC entry 4858 (class 0 OID 28750)
-- Dependencies: 220
-- Data for Name: family_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.family_members OVERRIDING SYSTEM VALUE VALUES (1, 'Иванов Иван Петрович', '1985-06-15', 'Инженер', 'ООО "ТехноСервис"', 85000, '2015-03-01');
INSERT INTO public.family_members OVERRIDING SYSTEM VALUE VALUES (2, 'Иванова Мария Сергеевна', '1987-09-20', 'Бухгалтер', 'АО "ФинансГрупп"', 75000, '2012-04-15');
INSERT INTO public.family_members OVERRIDING SYSTEM VALUE VALUES (3, 'Иванов Алексей Иванович', '2010-02-05', 'Репетитор', 'Частная практика', 15000, '2020-01-10');
INSERT INTO public.family_members OVERRIDING SYSTEM VALUE VALUES (4, 'Иванова Елена Викторовна', '1959-03-10', 'Таксист', 'Индивидуальная работа', 30000, '2020-09-01');
INSERT INTO public.family_members OVERRIDING SYSTEM VALUE VALUES (5, 'Петров Сергей Александрович', '1982-12-05', NULL, NULL, NULL, NULL);


--
-- TOC entry 4860 (class 0 OID 28758)
-- Dependencies: 222
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products OVERRIDING SYSTEM VALUE VALUES (1, 'Хлеб', 50, 1);
INSERT INTO public.products OVERRIDING SYSTEM VALUE VALUES (2, 'Молоко', 80, 1);
INSERT INTO public.products OVERRIDING SYSTEM VALUE VALUES (3, 'Бензин', 80, 2);
INSERT INTO public.products OVERRIDING SYSTEM VALUE VALUES (4, 'Билет в кино', 300, 3);
INSERT INTO public.products OVERRIDING SYSTEM VALUE VALUES (5, 'Зимнее пальто', 8500, 4);
INSERT INTO public.products OVERRIDING SYSTEM VALUE VALUES (6, 'Учебники', 400, 5);
INSERT INTO public.products OVERRIDING SYSTEM VALUE VALUES (7, 'Лекарства', 25000, 6);
INSERT INTO public.products OVERRIDING SYSTEM VALUE VALUES (8, 'Погашение кредита', 89000, 7);
INSERT INTO public.products OVERRIDING SYSTEM VALUE VALUES (9, 'Смартфон в подарок', 99900, 8);


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 215
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 1, false);


--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 217
-- Name: expence_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.expence_products_id_seq', 1, false);


--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 219
-- Name: family_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.family_members_id_seq', 1, false);


--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 221
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- TOC entry 4700 (class 2606 OID 28742)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 4702 (class 2606 OID 28748)
-- Name: expence_products expence_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.expence_products
    ADD CONSTRAINT expence_products_pkey PRIMARY KEY (id);


--
-- TOC entry 4704 (class 2606 OID 28756)
-- Name: family_members family_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family_members
    ADD CONSTRAINT family_members_pkey PRIMARY KEY (id);


--
-- TOC entry 4706 (class 2606 OID 28764)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4707 (class 2606 OID 28765)
-- Name: expence_products expence_products_family_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.expence_products
    ADD CONSTRAINT expence_products_family_member_id_fkey FOREIGN KEY (family_member_id) REFERENCES public.family_members(id) NOT VALID;


--
-- TOC entry 4708 (class 2606 OID 28770)
-- Name: expence_products expence_products_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.expence_products
    ADD CONSTRAINT expence_products_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 4709 (class 2606 OID 28775)
-- Name: products products_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(id);


-- Completed on 2025-03-24 13:29:43

--
-- PostgreSQL database dump complete
--

