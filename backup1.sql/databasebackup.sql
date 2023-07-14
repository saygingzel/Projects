--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-12-05 13:52:30

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
-- TOC entry 221 (class 1259 OID 16612)
-- Name: advisor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.advisor (
    advisor_id integer NOT NULL,
    advisor_fname character varying(50) NOT NULL,
    advisor_lname character varying(50) NOT NULL
);


ALTER TABLE public.advisor OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16611)
-- Name: advisor_advisor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.advisor_advisor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.advisor_advisor_id_seq OWNER TO postgres;

--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 220
-- Name: advisor_advisor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.advisor_advisor_id_seq OWNED BY public.advisor.advisor_id;


--
-- TOC entry 223 (class 1259 OID 16619)
-- Name: career_office_employeee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.career_office_employeee (
    emp_id integer NOT NULL,
    emp_fname character varying(50) NOT NULL,
    emp_lname character varying(50) NOT NULL,
    comp_id integer
);


ALTER TABLE public.career_office_employeee OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16618)
-- Name: career_office_employeee_emp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.career_office_employeee_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.career_office_employeee_emp_id_seq OWNER TO postgres;

--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 222
-- Name: career_office_employeee_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.career_office_employeee_emp_id_seq OWNED BY public.career_office_employeee.emp_id;


--
-- TOC entry 219 (class 1259 OID 16605)
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    company_id integer NOT NULL,
    company_name character varying(50) NOT NULL,
    company_area character varying(50) NOT NULL
);


ALTER TABLE public.company OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16604)
-- Name: company_company_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_company_id_seq OWNER TO postgres;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 218
-- Name: company_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_company_id_seq OWNED BY public.company.company_id;


--
-- TOC entry 231 (class 1259 OID 16672)
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact (
    contact_id integer NOT NULL,
    cont_date character varying(50) NOT NULL,
    grad_id integer,
    student_id integer
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16671)
-- Name: contact_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_contact_id_seq OWNER TO postgres;

--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 230
-- Name: contact_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_contact_id_seq OWNED BY public.contact.contact_id;


--
-- TOC entry 215 (class 1259 OID 16582)
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    dept_id integer NOT NULL,
    dept_name character varying(50) NOT NULL,
    dept_code character varying(10) NOT NULL
);


ALTER TABLE public.department OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16581)
-- Name: department_dept_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.department_dept_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.department_dept_id_seq OWNER TO postgres;

--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 214
-- Name: department_dept_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.department_dept_id_seq OWNED BY public.department.dept_id;


--
-- TOC entry 217 (class 1259 OID 16593)
-- Name: graduated; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.graduated (
    grad_id integer NOT NULL,
    grad_fname character varying(50) NOT NULL,
    grad_lname character varying(50) NOT NULL,
    grad_dept_id integer
);


ALTER TABLE public.graduated OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16592)
-- Name: graduated_grad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.graduated_grad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.graduated_grad_id_seq OWNER TO postgres;

--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 216
-- Name: graduated_grad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.graduated_grad_id_seq OWNED BY public.graduated.grad_id;


--
-- TOC entry 233 (class 1259 OID 16689)
-- Name: participate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.participate (
    part_id integer NOT NULL,
    part_date character varying(50) NOT NULL,
    student_id integer,
    seminar_id integer
);


ALTER TABLE public.participate OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16688)
-- Name: participate_part_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.participate_part_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.participate_part_id_seq OWNER TO postgres;

--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 232
-- Name: participate_part_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.participate_part_id_seq OWNED BY public.participate.part_id;


--
-- TOC entry 227 (class 1259 OID 16653)
-- Name: professor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professor (
    prof_id integer NOT NULL,
    prof_fname character varying(50) NOT NULL,
    prof_lname character varying(50) NOT NULL
);


ALTER TABLE public.professor OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16652)
-- Name: professor_prof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professor_prof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professor_prof_id_seq OWNER TO postgres;

--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 226
-- Name: professor_prof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professor_prof_id_seq OWNED BY public.professor.prof_id;


--
-- TOC entry 229 (class 1259 OID 16660)
-- Name: seminar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seminar (
    seminar_id integer NOT NULL,
    seminar_loc character varying(50) NOT NULL,
    seminar_date character varying(50) NOT NULL,
    prof_id integer,
    seminar_name character varying
);


ALTER TABLE public.seminar OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16659)
-- Name: seminar_seminar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seminar_seminar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seminar_seminar_id_seq OWNER TO postgres;

--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 228
-- Name: seminar_seminar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seminar_seminar_id_seq OWNED BY public.seminar.seminar_id;


--
-- TOC entry 225 (class 1259 OID 16631)
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    student_id integer NOT NULL,
    student_fname character varying(50) NOT NULL,
    student_lname character varying(50) NOT NULL,
    advisor_id integer,
    grad_id integer,
    career_office_employeee_id integer,
    dept_id integer
);


ALTER TABLE public.student OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16630)
-- Name: student_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_student_id_seq OWNER TO postgres;

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 224
-- Name: student_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_student_id_seq OWNED BY public.student.student_id;


--
-- TOC entry 3221 (class 2604 OID 16615)
-- Name: advisor advisor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advisor ALTER COLUMN advisor_id SET DEFAULT nextval('public.advisor_advisor_id_seq'::regclass);


--
-- TOC entry 3222 (class 2604 OID 16622)
-- Name: career_office_employeee emp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.career_office_employeee ALTER COLUMN emp_id SET DEFAULT nextval('public.career_office_employeee_emp_id_seq'::regclass);


--
-- TOC entry 3220 (class 2604 OID 16608)
-- Name: company company_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company ALTER COLUMN company_id SET DEFAULT nextval('public.company_company_id_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 16675)
-- Name: contact contact_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact ALTER COLUMN contact_id SET DEFAULT nextval('public.contact_contact_id_seq'::regclass);


--
-- TOC entry 3218 (class 2604 OID 16585)
-- Name: department dept_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department ALTER COLUMN dept_id SET DEFAULT nextval('public.department_dept_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16596)
-- Name: graduated grad_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.graduated ALTER COLUMN grad_id SET DEFAULT nextval('public.graduated_grad_id_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 16692)
-- Name: participate part_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participate ALTER COLUMN part_id SET DEFAULT nextval('public.participate_part_id_seq'::regclass);


--
-- TOC entry 3224 (class 2604 OID 16656)
-- Name: professor prof_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor ALTER COLUMN prof_id SET DEFAULT nextval('public.professor_prof_id_seq'::regclass);


--
-- TOC entry 3225 (class 2604 OID 16663)
-- Name: seminar seminar_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seminar ALTER COLUMN seminar_id SET DEFAULT nextval('public.seminar_seminar_id_seq'::regclass);


--
-- TOC entry 3223 (class 2604 OID 16634)
-- Name: student student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student ALTER COLUMN student_id SET DEFAULT nextval('public.student_student_id_seq'::regclass);


--
-- TOC entry 3412 (class 0 OID 16612)
-- Dependencies: 221
-- Data for Name: advisor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.advisor (advisor_id, advisor_fname, advisor_lname) FROM stdin;
1	Ahmet	Yılmaz
2	Polat	Ünlü
3	Ayşegül	Okay
4	Selin	Özhan
5	Hüseyin	Keleş
6	Zahit	Mehmed
7	Umut	Yılmaz
8	Akif	Ünlü
9	İsmail	Okay
10	Emre	Özhan
\.


--
-- TOC entry 3414 (class 0 OID 16619)
-- Dependencies: 223
-- Data for Name: career_office_employeee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.career_office_employeee (emp_id, emp_fname, emp_lname, comp_id) FROM stdin;
1	Kıvanç	Yılmaz	1
2	Cem	Ünlü	2
3	Tayyip	Okay	3
4	Kemal	Özhan	4
5	Yunus	Keleş	5
6	Emine	Mehmed	5
\.


--
-- TOC entry 3410 (class 0 OID 16605)
-- Dependencies: 219
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (company_id, company_name, company_area) FROM stdin;
1	Google	USA
2	Microsoft	USA
3	Apple	USA
4	Amazon	USA
5	Facebook	USA
6	Tesla	USA
7	Oracle	USA
8	IBM	USA
9	Intel	USA
10	Cisco	USA
\.


--
-- TOC entry 3422 (class 0 OID 16672)
-- Dependencies: 231
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact (contact_id, cont_date, grad_id, student_id) FROM stdin;
1	2020-01-01	1	4
2	2020-01-02	2	4
3	2020-01-03	3	4
4	2020-01-04	4	7
5	2020-01-05	5	7
6	2020-01-06	6	7
7	2020-01-07	7	6
8	2020-01-08	8	6
9	2020-01-09	9	6
10	2020-01-10	10	6
\.


--
-- TOC entry 3406 (class 0 OID 16582)
-- Dependencies: 215
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department (dept_id, dept_name, dept_code) FROM stdin;
1	Computer Engineering	CENG
2	Electrical and Electronics Engineering	EEENG
3	Mechanical Engineering	MENG
4	Civil Engineering	CIVENG
5	Industrial Engineering	IENG
6	Chemical Engineering	CHENG
7	Architecture	ARCH
8	Industrial Design	IDENG
9	Industrial Management	IMENG
10	Industrial Engineering and Management	IEMENG
\.


--
-- TOC entry 3408 (class 0 OID 16593)
-- Dependencies: 217
-- Data for Name: graduated; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.graduated (grad_id, grad_fname, grad_lname, grad_dept_id) FROM stdin;
1	Mehmet	Yılmaz	1
2	Selim	Ünlü	2
3	Ramazan	Okay	3
4	Gülin	Özhan	4
5	Nurselin	Keleş	5
6	Selin	Mehmed	6
7	Dilara	Yılmaz	7
8	Oktay	Ünlü	8
9	Ekrem	Okay	9
10	İlhan	Özhan	10
\.


--
-- TOC entry 3424 (class 0 OID 16689)
-- Dependencies: 233
-- Data for Name: participate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.participate (part_id, part_date, student_id, seminar_id) FROM stdin;
1	2020-01-01	1	1
2	2020-01-02	2	2
3	2020-01-03	3	3
4	2020-01-04	4	4
5	2020-01-05	5	5
6	2020-01-06	6	6
7	2020-01-07	7	7
8	2020-01-08	8	8
9	2020-01-09	9	9
10	2020-01-10	10	10
12	2020-01-02	2	3
13	2020-01-03	3	4
14	2020-01-04	4	5
15	2020-01-05	5	6
16	2020-01-06	6	7
17	2020-01-07	7	8
18	2020-01-08	8	9
19	2020-01-09	9	10
20	2020-01-10	10	1
11	2020-01-01	2	2
\.


--
-- TOC entry 3418 (class 0 OID 16653)
-- Dependencies: 227
-- Data for Name: professor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professor (prof_id, prof_fname, prof_lname) FROM stdin;
1	Mehmet	Yılmaz
2	Ahmet	Ünlü
3	Ejder	Okay
4	Güvenç	Özhan
5	Pembe	Keleş
6	Nesrin	Mehmed
\.


--
-- TOC entry 3420 (class 0 OID 16660)
-- Dependencies: 229
-- Data for Name: seminar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seminar (seminar_id, seminar_loc, seminar_date, prof_id, seminar_name) FROM stdin;
1	B201	2020-01-01	1	Introduction to SQL
2	C203	2020-01-02	2	Introduction to Signal Systems
3	D105	2020-01-03	3	Gravity Physics 201
4	D105	2020-01-04	4	Introduction to Civil Engineering
5	D105	2020-01-05	5	Introduction to Industrial Engineering
6	D105	2020-01-06	6	Introduction to Chemical Engineering
7	C203	2020-01-07	6	Introduction to Architecture
8	C203	2020-01-08	5	Introduction to Industrial Design
9	C203	2020-01-09	3	Introduction to Industrial Management
10	B201	2020-01-10	3	Introduction to Industrial Engineering and Management
\.


--
-- TOC entry 3416 (class 0 OID 16631)
-- Dependencies: 225
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (student_id, student_fname, student_lname, advisor_id, grad_id, career_office_employeee_id, dept_id) FROM stdin;
1	Orhan	Yılmaz	3	5	1	1
2	Kadir	Ünlü	4	2	2	1
3	Derya	Okay	5	5	3	1
4	Hümeyra	Özhan	3	4	4	5
5	Hacer	Keleş	4	5	5	5
6	Ebrar	Mehmed	4	4	5	5
7	Meryem	Yılmaz	5	1	5	6
8	Şevket	Ünlü	1	4	6	7
9	Ahmet	Okay	1	3	6	7
10	Nalan	Özhan	2	4	5	7
\.


--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 220
-- Name: advisor_advisor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.advisor_advisor_id_seq', 1, false);


--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 222
-- Name: career_office_employeee_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.career_office_employeee_emp_id_seq', 1, false);


--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 218
-- Name: company_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_company_id_seq', 1, false);


--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 230
-- Name: contact_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_contact_id_seq', 1, false);


--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 214
-- Name: department_dept_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.department_dept_id_seq', 1, false);


--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 216
-- Name: graduated_grad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.graduated_grad_id_seq', 1, false);


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 232
-- Name: participate_part_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.participate_part_id_seq', 1, false);


--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 226
-- Name: professor_prof_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professor_prof_id_seq', 1, false);


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 228
-- Name: seminar_seminar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seminar_seminar_id_seq', 1, false);


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 224
-- Name: student_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_student_id_seq', 1, false);


--
-- TOC entry 3239 (class 2606 OID 16617)
-- Name: advisor advisor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advisor
    ADD CONSTRAINT advisor_pkey PRIMARY KEY (advisor_id);


--
-- TOC entry 3241 (class 2606 OID 16624)
-- Name: career_office_employeee career_office_employeee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.career_office_employeee
    ADD CONSTRAINT career_office_employeee_pkey PRIMARY KEY (emp_id);


--
-- TOC entry 3237 (class 2606 OID 16610)
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (company_id);


--
-- TOC entry 3249 (class 2606 OID 16677)
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (contact_id);


--
-- TOC entry 3229 (class 2606 OID 16591)
-- Name: department department_dept_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_dept_code_key UNIQUE (dept_code);


--
-- TOC entry 3231 (class 2606 OID 16589)
-- Name: department department_dept_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_dept_name_key UNIQUE (dept_name);


--
-- TOC entry 3233 (class 2606 OID 16587)
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (dept_id);


--
-- TOC entry 3235 (class 2606 OID 16598)
-- Name: graduated graduated_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.graduated
    ADD CONSTRAINT graduated_pkey PRIMARY KEY (grad_id);


--
-- TOC entry 3251 (class 2606 OID 16694)
-- Name: participate participate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participate
    ADD CONSTRAINT participate_pkey PRIMARY KEY (part_id);


--
-- TOC entry 3245 (class 2606 OID 16658)
-- Name: professor professor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (prof_id);


--
-- TOC entry 3247 (class 2606 OID 16665)
-- Name: seminar seminar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seminar
    ADD CONSTRAINT seminar_pkey PRIMARY KEY (seminar_id);


--
-- TOC entry 3243 (class 2606 OID 16636)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);


--
-- TOC entry 3253 (class 2606 OID 16625)
-- Name: career_office_employeee career_office_employeee_comp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.career_office_employeee
    ADD CONSTRAINT career_office_employeee_comp_id_fkey FOREIGN KEY (comp_id) REFERENCES public.company(company_id);


--
-- TOC entry 3259 (class 2606 OID 16678)
-- Name: contact contact_grad_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_grad_id_fkey FOREIGN KEY (grad_id) REFERENCES public.graduated(grad_id);


--
-- TOC entry 3260 (class 2606 OID 16683)
-- Name: contact contact_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);


--
-- TOC entry 3252 (class 2606 OID 16599)
-- Name: graduated graduated_grad_dept_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.graduated
    ADD CONSTRAINT graduated_grad_dept_id_fkey FOREIGN KEY (grad_dept_id) REFERENCES public.department(dept_id);


--
-- TOC entry 3261 (class 2606 OID 16700)
-- Name: participate participate_seminar_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participate
    ADD CONSTRAINT participate_seminar_id_fkey FOREIGN KEY (seminar_id) REFERENCES public.seminar(seminar_id);


--
-- TOC entry 3262 (class 2606 OID 16695)
-- Name: participate participate_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participate
    ADD CONSTRAINT participate_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);


--
-- TOC entry 3258 (class 2606 OID 16666)
-- Name: seminar seminar_prof_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seminar
    ADD CONSTRAINT seminar_prof_id_fkey FOREIGN KEY (prof_id) REFERENCES public.professor(prof_id);


--
-- TOC entry 3254 (class 2606 OID 16637)
-- Name: student student_advisor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_advisor_id_fkey FOREIGN KEY (advisor_id) REFERENCES public.advisor(advisor_id);


--
-- TOC entry 3255 (class 2606 OID 16647)
-- Name: student student_career_office_employeee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_career_office_employeee_id_fkey FOREIGN KEY (career_office_employeee_id) REFERENCES public.career_office_employeee(emp_id);


--
-- TOC entry 3256 (class 2606 OID 16705)
-- Name: student student_dept_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_dept_id_fkey FOREIGN KEY (dept_id) REFERENCES public.department(dept_id) NOT VALID;


--
-- TOC entry 3257 (class 2606 OID 16642)
-- Name: student student_grad_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_grad_id_fkey FOREIGN KEY (grad_id) REFERENCES public.graduated(grad_id);


-- Completed on 2022-12-05 13:52:30

--
-- PostgreSQL database dump complete
--

