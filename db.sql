--
-- PostgreSQL database dump
--

-- Dumped from database version 17rc1
-- Dumped by pg_dump version 17rc1

-- Started on 2024-10-26 00:05:12

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
-- TOC entry 218 (class 1259 OID 32916)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    lastname character varying(30),
    name character varying(30),
    surname character varying(30),
    groupname integer,
    starosta boolean
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 32915)
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_id_seq OWNER TO postgres;

--
-- TOC entry 4860 (class 0 OID 0)
-- Dependencies: 217
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- TOC entry 220 (class 1259 OID 32933)
-- Name: timetable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timetable (
    id integer NOT NULL,
    groupname integer,
    "time" character varying(300),
    date character varying(300),
    day character varying(300),
    lesson character varying(300),
    teacher character varying(300),
    classroom character varying(300),
    building character varying(300),
    week integer,
    type_of_lesson character varying(300)
);


ALTER TABLE public.timetable OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 32932)
-- Name: timetable_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.timetable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.timetable_id_seq OWNER TO postgres;

--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 219
-- Name: timetable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.timetable_id_seq OWNED BY public.timetable.id;


--
-- TOC entry 4700 (class 2604 OID 32919)
-- Name: students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- TOC entry 4701 (class 2604 OID 32936)
-- Name: timetable id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable ALTER COLUMN id SET DEFAULT nextval('public.timetable_id_seq'::regclass);


--
-- TOC entry 4852 (class 0 OID 32916)
-- Dependencies: 218
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (1, 'Белякова', 'Мария', 'Ильинична', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (2, 'Воробьев', 'Никита', 'Алексеевич', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (3, 'Данилин', 'Егор', 'Алексеевич', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (4, 'Иванов', 'Кирилл', 'Николаевич', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (5, 'Игнатьева', 'Алёна', 'Ивановна', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (6, 'Исмагилов', 'Инiар', 'Русланович', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (7, 'Козловский', 'Иван', 'Дмитриевич', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (8, 'Левина', 'Любовь', 'Юрьевна', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (9, 'Локотков', 'Иван', 'Александрович', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (10, 'Майоров', 'Дмитрий', 'Игоревич', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (11, 'Малоземов', 'Михаил', 'Игоревич', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (12, 'Малышев', 'Артём', 'Владиславович', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (13, 'Мельников', 'Данила', 'Дмитриевич', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (14, 'Наумова', 'Ксения', 'Андреевна', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (15, 'Ошкин', 'Артём', 'Андреевич', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (16, 'Пантелеев', 'Адриан', 'Денисович', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (17, 'Попова', 'Виктория', 'Алексеевна', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (18, 'Сальцев', 'Даниил', 'Сергеевич', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (20, 'Солнышкин', 'Фёдор', 'Михайлович', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (21, 'Хмыров', 'Александр', 'Андреевич', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (22, 'Цух', 'Валерия', 'Павловна', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (23, 'Швец', 'Алина', 'Олеговна', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (24, 'Гао', 'Сунвань', '', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (25, 'Дурдыкулыев', 'Мекан', '', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (26, 'Кахраман', 'Бахар', '', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (27, 'Османова', 'Лейли', '', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (28, 'Розыева', 'Арзув', '', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (29, 'Хуо', 'Даоцян', '', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (30, 'Чжан', 'Цзиюэ', '', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (31, 'Ян', 'И', '', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (19, 'Скрябина', 'Мария', 'Владиславовна', 1, true);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (32, 'Ахмедова', 'Майа', '', 1, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (33, 'Абрамов', 'Матвей', 'Иванович', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (34, 'Агапкин', 'Ростислав', 'Николаевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (35, 'Арефьев', 'Андрей', 'Александрович', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (36, 'Болоничев', 'Матвей', 'Сергеевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (37, 'Габдрахманов', 'Тимур', 'Анатольевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (38, 'Гнеушева', 'Дарина', 'Денисовна', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (39, 'Гребенников', 'Иван', 'Дмитриевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (40, 'Дашаева', 'Полина', 'Владимировна', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (41, 'Дёмин', 'Никита', 'Сергеевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (42, 'Дряхлов', 'Александр', 'Дмитриевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (43, 'Жаков', 'Антон', 'Андреевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (45, 'Койбаев', 'Темирлан', 'Шамилевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (46, 'Корнилов', 'Всеволод', 'Андреевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (47, 'Красцов', 'Данила', 'Сергеевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (48, 'Куртеев', 'Дмитрий', 'Алексеевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (49, 'Меркурьев', 'Георгий', 'Сергеевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (50, 'Мороз', 'Артём', 'Владимирович', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (51, 'Морозов', 'Егор', 'Александрович', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (52, 'Писанов', 'Роман', 'Станиславович', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (53, 'Ревин', 'Дмитрий', 'Алексеевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (54, 'Рябова', 'Варвара', 'Вячеславовна', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (55, 'Сапрыкина', 'Александра', 'Игоревна', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (56, 'Семиков', 'Матвей', 'Александрович', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (57, 'Сёмин', 'Никита', 'Дмитриевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (58, 'Цыбикжапов', 'Алексей', 'Алексеевич', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (59, 'Чупраков', 'Илья', 'Павлович', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (60, 'Шипова', 'Анастасия', 'Сергеевна', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (61, 'Шобухина', 'Татьяна', 'Дмитриевна', 2, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (62, 'Абрамова', 'Мария', 'Николаевна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (63, 'Афанасьева', 'Екатерина', 'Витальевна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (64, 'Болкуневич', 'Антон', 'Алексеевич', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (65, 'Борков', 'Ярослав', 'Александрович', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (66, 'Желудкова', 'Ирина', 'Эдуардовна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (67, 'Комарова', 'Александра', 'Михайловна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (68, 'Королева', 'Таисия', 'Александровна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (69, 'Кузьмина', 'Виктория', 'Николаевна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (70, 'Малыгина', 'Мария', 'Евгеньевна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (72, 'Медведев', 'Алексей', 'Николаевич', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (73, 'Мезина', 'Елизавета', 'Сергеевна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (74, 'Мигов', 'Вадим', 'Артемович', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (75, 'Нечуева', 'Ульяна', 'Антоновна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (76, 'Оруджов', 'Полад', 'Алсафа Оглы', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (77, 'Патык', 'Дмитрий', 'Сергеевич', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (78, 'Пашин', 'Вячеслав', 'Сергеевич', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (79, 'Пащенко', 'Кирилл', 'Сергеевич', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (80, 'Салиев', 'Марат', 'Рустамович', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (81, 'Смирнов', 'Владислав', 'Денисович', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (82, 'Смирнов', 'Георгий', 'Сергеевич', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (83, 'Сорокун', 'Даниил', 'Анатольевич', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (84, 'Торгашева', 'Ксения', 'Николаевна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (85, 'Устинов', 'Дмитрий', 'Сергеевич', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (86, 'Халтурин', 'Арсений', 'Денисович', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (87, 'Хламова', 'Екатерина', 'Михайловна', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (88, 'Хрящев', 'Роман', 'Сергеевич', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (44, 'Зубова', 'Юлия', 'Андреевна', 2, true);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (71, 'Мартынова', 'Мария', 'Юрьевна', 3, true);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (89, 'Цебульский', 'Степан', 'Александрович', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (90, 'Шошинов', 'Николай', 'Иванович', 3, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (91, 'Артемьева', 'Яна', 'Викторовна', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (93, 'Громова', 'Арина', 'Александровна', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (94, 'Емельянов', 'Арсений', 'Евгеньевич', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (95, 'Жилин', 'Арсений', 'Антонович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (96, 'Жмурко', 'Иван', 'Владимирович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (97, 'Забияка', 'Анатолий', 'Андреевич', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (98, 'Иванов', 'Семен', 'Владимирович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (99, 'Карачев', 'Матвей', 'Станиславович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (100, 'Касимов', 'Максим', 'Владимирович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (101, 'Келехсаев', 'Алан', 'Ахсарович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (102, 'Кибанова', 'Софья', 'Анатольевна', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (103, 'Костюничев', 'Николай', 'Денисович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (104, 'Кутуев', 'Тимур', 'Ринатович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (105, 'Лазарева', 'Ульяна', 'Павловна', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (106, 'Лазутин', 'Глеб', 'Михайлович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (107, 'Лобачев', 'Артём', 'Игоревич', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (108, 'Лунин', 'Роман', 'Дмитриевич', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (109, 'Макеенко', 'Егор', 'Евгеньевич', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (110, 'Малаев', 'Артём', 'Владимирович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (111, 'Мошнин', 'Даниил', 'Игоревич', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (112, 'Мудров', 'Артём', 'Михайлович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (113, 'Поминова', 'Алёна', 'Игоревна', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (114, 'Секамов', 'Айдар', 'Анисович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (115, 'Соловьев', 'Артем', 'Игоревич', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (116, 'Тихомиров', 'Иван', 'Максимович', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (117, 'Чибакова', 'Любовь', 'Анатольевна', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (118, 'Шакиров', 'Айдар', 'Раилевич', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (119, 'Щербакова', 'София', 'Александровна', 4, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (150, 'Баландина', 'Дарья', 'Игоревна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (151, 'Белянцев', 'Михаил', 'Игоревич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (152, 'Володичев', 'Егор', 'Олегович', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (153, 'Геворгян', 'Роберта', 'Робертовна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (154, 'Егоров', 'Егор', 'Евгеньевич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (155, 'Елистратов', 'Кирилл', 'Антонович', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (156, 'Ерошкина', 'Юлия', 'Юрьевна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (157, 'Жирнова', 'Виктория', 'Владимировна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (158, 'Жук', 'Артём', 'Дмитриевич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (159, 'Ильина', 'Алина', 'Викторовна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (160, 'Калягин', 'Александр', 'Ильич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (161, 'Комарова', 'Валерия', 'Анатольевна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (162, 'Кувшинников', 'Владислав', 'Павлович', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (163, 'Кузьмин', 'Никита', 'Андреевич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (164, 'Лапина', 'Софья', 'Романовна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (165, 'Логинов', 'Алексей', 'Николаевич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (166, 'Ломовская', 'Карина', 'Александровна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (167, 'Мукуев', 'Исмаил', 'Арсенович', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (168, 'Саламатов', 'Максим', 'Сергеевич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (169, 'Сахновская', 'Анастасия', 'Сергеевна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (172, 'Смуров', 'Александр', 'Сергеевич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (173, 'Тарасова', 'Алина', 'Александровна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (174, 'Туренко', 'Владислав', 'Романович', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (175, 'Ушаков', 'Николай', 'Васильевич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (92, 'Габидуллин', 'Вильдан', 'Марселевич', 4, true);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (170, 'Селифанов', 'Владислав', 'Дмитриевич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (171, 'Силинова', 'Елизавета', 'Викторовна', 6, true);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (176, 'Шарапов', 'Артем', 'Дмитриевич', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (177, 'Шилова', 'Дарья', 'Владимировна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (178, 'Якимова', 'Анна', 'Евгеньевна', 6, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (179, 'Алимурадов', 'Руслан', 'Шафиевич', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (180, 'Бачинский', 'Андрей', 'Тарасович', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (181, 'Биткин', 'Артём', 'Вадимович', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (182, 'Бородкина', 'София', 'Сергеевна', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (183, 'Григорьичев', 'Иван', 'Владимирович', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (184, 'Ильин', 'Роман', 'Юрьевич', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (185, 'Кекшин', 'Максим', 'Александрович', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (186, 'Комаров', 'Егор', 'Геннадьевич', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (187, 'Корнишина', 'Диана', 'Максимовна', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (188, 'Коростелев', 'Егор', 'Павлович', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (189, 'Куршакова', 'Дарья', 'Евгеньевна', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (190, 'Матросов', 'Дмитрий', 'Александрович', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (191, 'Монгуш', 'Дарима', 'Нимаевна', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (192, 'Муравьев', 'Егор', 'Александрович', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (193, 'Никуличев', 'Иван', 'Алексеевич', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (194, 'Поздеев', 'Владимир', 'Михайлович', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (195, 'Потапкина', 'Арина', 'Александровна', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (196, 'Пушкова', 'Ксения', 'Сергеевна', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (197, 'Русаков', 'Артём', 'Сергеевич', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (198, 'Сабитов', 'Кирилл', 'Дмитриевич', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (200, 'Скороходова', 'Елена', 'Игоревна', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (201, 'Старченко', 'Вячеслав', 'Эдуардович', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (202, 'Суслов', 'Александр', 'Николаевич', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (203, 'Хисматуллова', 'Мария', 'Романовна', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (204, 'Цыгина', 'Варвара', 'Ильинична', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (205, 'Чурашев', 'Иван', 'Михайлович', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (206, 'Шапин', 'Андрей', 'Алексеевич', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (207, 'Штыров', 'Иван', 'Дмитриевич', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (208, 'Юрасова', 'Анастасия', 'Алексеевна', 7, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (209, 'Абдулаев', 'Исмаэль', 'Камалович', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (210, 'Алейник', 'Илья', 'Сергеевич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (211, 'Андреева', 'Алина', 'Андреевна', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (212, 'Бариева', 'Алина', 'Дамировна', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (213, 'Буинская', 'Анастасия', 'Андреевна', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (214, 'Галынина', 'Дарья', 'Игоревна', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (216, 'Данилов', 'Дмитрий', 'Алексеевич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (217, 'Долгов', 'Кирилл', 'Иванович', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (218, 'Ерощук', 'Владислав', 'Васильевич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (219, 'Ильина', 'Екатерина', 'Вячеславовна', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (220, 'Киселёв', 'Владислав', 'Александрович', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (221, 'Коновалова', 'Наталья', 'Денисовна', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (222, 'Коркин', 'Илья', 'Олегович', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (223, 'Кочетков', 'Денис', 'Владиславович', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (224, 'Ларьков', 'Александр', 'Дмитриевич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (225, 'Лебедев', 'Тимофей', 'Александрович', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (226, 'Максимов', 'Андрей', 'Владимирович', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (227, 'Новиков', 'Дмитрий', 'Сергеевич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (228, 'Носонов', 'Артем', 'Романович', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (229, 'Ревякин', 'Игорь', 'Владимирович', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (230, 'Романов', 'Владислав', 'Игоревич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (231, 'Романов', 'Михаил', 'Игоревич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (232, 'Светличный', 'Всеволод', 'Анатольевич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (233, 'Склянин', 'Максим', 'Николаевич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (234, 'Таганов', 'Никита', 'Дмитриевич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (235, 'Тигина', 'Алёна', 'Романовна', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (236, 'Хаертдинов', 'Руслан', 'Рузилевич', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (237, 'Хлюнев', 'Павел', 'Владимирович', 8, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (199, 'Свалова', 'Елизавета', 'Андреевна', 7, true);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (215, 'Горбачева', 'Маргарита', 'Валерьевна', 8, true);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (238, 'Буренкова', 'Анна', 'Сергеевна', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (239, 'Артемьев', 'Денис', 'Андреевич', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (240, 'Афонина', 'Анастасия', 'Дмитриевна', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (241, 'Бабкин', 'Даниил', 'Павлович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (242, 'Бердюгина', 'Анастасия', 'Анатольевна', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (243, 'Березин', 'Игорь', 'Юрьевич', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (245, 'Буровин', 'Владислав', 'Сергеевич', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (246, 'Вечканов', 'Алексей', 'Иванович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (247, 'Выдрин', 'Сергей', 'Дмитриевич', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (248, 'Голубева', 'Наталья', 'Дмитриевна', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (249, 'Гугунава', 'Кирилл', 'Зурабович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (250, 'Давыдов', 'Егор', 'Денисович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (251, 'Евдокимова', 'Ксения', 'Геннадьевна', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (252, 'Ермолина', 'Елена', 'Евгеньевна', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (253, 'Кобельков', 'Роман', 'Юрьевич', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (254, 'Козлов', 'Сергей', 'Константинович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (255, 'Косарев', 'Максим', 'Алексеевич', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (256, 'Кудрявцев', 'Матвей', 'Сергеевич', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (257, 'Кузнецов', 'Александр', 'Павлович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (258, 'Кулагина', 'Мария', 'Ивановна', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (259, 'Мареев', 'Денис', 'Александрович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (260, 'Марисова', 'Екатерина', 'Олеговна', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (261, 'Махмудов', 'Вадим', 'Рушанович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (262, 'Никаноров', 'Антон', 'Михайлович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (263, 'Плотников', 'Максим', 'Олегович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (264, 'Соловьев', 'Никита', 'Александрович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (265, 'Сюхин', 'Никита', 'Александрович', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (266, 'Чурина', 'Яна', 'Сергеевна', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (267, 'Ющенко', 'Станислав', 'Игоревич', 9, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (120, 'Бегишева', 'Алёна', 'Дмитриевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (121, 'Богданова', 'Мария', 'Андреевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (122, 'Будников', 'Валерий', 'Николаевич', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (123, 'Булычев', 'Григорий', 'Алексеевич', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (124, 'Волкова', 'Софья', 'Сергеевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (125, 'Воробьёв', 'Андрей', 'Александрович', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (126, 'Гараев', 'Риназ', 'Марсович', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (127, 'Гарькавый', 'Максим', 'Евгеньевич', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (128, 'Городкова', 'Ксения', 'Дмитриевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (129, 'Горячева', 'Полина', 'Игоревна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (130, 'Грудько', 'Варвара', 'Николаевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (131, 'Колодяжный', 'Максим', 'Владимирович', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (132, 'Лебедева', 'Мария', 'Дмитриевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (133, 'Мусаева', 'Алёна', 'Алексеевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (134, 'Низамова', 'Лейла', 'Ренатовна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (135, 'Осокина', 'Лолита', 'Артемовна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (136, 'Румянцева', 'Дарья', 'Сергеевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (138, 'Соловьев', 'Ярослав', 'Валерьевич', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (139, 'Степанов', 'Артём', 'Романович', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (140, 'Степанова', 'Мария', 'Вячеславовна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (141, 'Теплякова', 'Елена', 'Сергеевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (142, 'Уманская', 'Владислава', 'Сергеевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (143, 'Форостяная', 'Юлия', 'Михайловна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (144, 'Харитонова', 'Глафира', 'Олеговна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (145, 'Цветкова', 'Мария', 'Сергеевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (146, 'Чередина', 'Полина', 'Евгеньевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (147, 'Щеглакова', 'Дарья', 'Алексеевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (148, 'Юдин', 'Артем', 'Дмитриевич', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (149, 'Ятманова', 'Татьяна', 'Юрьевна', 5, false);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (137, 'Смирнов', 'Александр', 'Николаевич', 5, true);
INSERT INTO public.students (id, lastname, name, surname, groupname, starosta) VALUES (244, 'Бильдягин', 'Иван', 'Максимович', 9, true);


--
-- TOC entry 4854 (class 0 OID 32933)
-- Dependencies: 220
-- Data for Name: timetable; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (38, 2, '08:00 - 09:20', '{21.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (41, 2, '16:20 - 17:40', '{21.09.2024,12.10.2024}', 'Сб', 'Основы российской государственности', 'Кочеров С.Н.', 'online', NULL, 0, 'лекция');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (42, 2, '16:20 - 17:40', '{14.09.2024,05.10.2024}', 'Сб', 'Основы российской государственности', 'Константинова Т.Н.', 'online', NULL, 1, 'семинар');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (83, 4, '16:20 - 17:40', '{21.09.2024,12.10.2024}', 'Сб', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (96, 5, '11:10 - 12:30', 'null', 'Пт', NULL, NULL, '216', 'БП', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (104, 5, '16:20 - 17:40', '{21.09.2024,12.10.2024}', 'Сб', 'Основы российской государственности', 'Кочеров С.Н.', 'online', NULL, 1, 'лекция');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (129, 7, '14:40 - 16:00', '{с,09.09.2024}', 'Пн', '{"Дискретная математика"}', '{"Логвинова К.В."}', '303', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (133, 7, '16:20 - 17:40', '{03.09.2024,10.09.2024}', 'Вт', '{"Основы российской государственности"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (1, 1, '08:00 - 09:20', 'null', 'Пн', NULL, NULL, '216', 'БП', 0, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (139, 7, '08:00 - 09:20', 'null', 'Пт', NULL, NULL, '301', 'Р', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (11, 1, '11:10 - 12:30', '{}', 'Ср', '{"Программирование С/С++"}', '{"Пеплин Ф.С."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (12, 1, '13:00 - 14:20', '{}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '225', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (13, 1, '14:40 - 16:00', '{}', 'Ср', '{"Математический анализ"}', '{"Чистяков В.В."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (14, 1, '18:10 - 19:30', '{с,12.09.2024}', 'Чт', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (15, 1, '09:30 - 10:50', '{}', 'Пт', '{"Основы российской государственности"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (16, 1, '18:10 - 19:30', '{06.09.2024}', 'Пт', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (2, 1, '08:00 - 09:20', '{23.09.2024,07.10.2024,21.10.2024}', 'Пн', 'Программирование на C++', 'Боряев С.С.', '216', 'БП', 1, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (3, 1, '09:30 - 10:50', 'null', 'Пн', NULL, NULL, '216', 'БП', 0, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (4, 1, '09:30 - 10:50', '{23.09.2024,07.10.2024,21.10.2024}', 'Пн', 'Программирование на C++', 'Боряев С.С.', '216', 'БП', 1, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (5, 1, '08:00 - 09:20', '{10.09.2024,17.09.2024}', 'Вт', '{"Технология программирования"}', '{"Улитин И.Б."}', '216', 'БП', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (6, 1, '09:30 - 10:50', '{}', 'Вт', '{"Дискретная математика"}', '{"Мокеев Д.Б. 24.09.2024 ауд. 402"}', '126', 'БП', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (7, 1, '11:10 - 12:30', '{}', 'Вт', '{"Дискретная математика"}', '{"Мокеев Д.Б."}', 'О26', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (8, 1, '13:00 - 14:20', '{}', 'Вт', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н. 24.09.2024 ауд. 402"}', '126', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (9, 1, '14:40 - 16:00', '{03.09.2024}', 'Вт', '{"Безопасность жизнедеятельности"}', '{"Городнова А.А."}', '126', 'БП', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (10, 1, '09:30 - 10:50', '{}', 'Ср', '{"Математический анализ"}', '{"Чистяков В.В."}', '203', 'Л', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (33, 2, '14:40 - 16:00', '{}', 'Ср', '{"Математический анализ"}', '{"Чистяков В.В."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (34, 2, '16:20 - 17:40', '{11.09.2024,18.09.2024}', 'Ср', '{"Технология программирования"}', '{"Улитин И.Б."}', '201', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (35, 2, '19:40 - 21:00', '{с,12.09.2024}', 'Чт', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (36, 2, '11:10 - 12:30', '{}', 'Пт', '{"Основы российской государственности"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (37, 2, '18:10 - 19:30', '{06.09.2024}', 'Пт', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (17, 1, '08:00 - 09:20', '{21.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (18, 1, '11:10 - 12:30', '{14.09.2024}', 'Сб', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (19, 1, '13:00 - 14:20', '{07.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (20, 1, '14:40 - 16:00', '{14.09.2024,05.10.2024}', 'Сб', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (21, 1, '16:20 - 17:40', '{21.09.2024,12.10.2024}', 'Сб', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (22, 2, '11:10 - 12:30', 'null', 'Пн', NULL, NULL, '216', 'БП', 0, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (23, 2, '11:10 - 12:30', '{23.09.2024,07.10.2024,21.10.2024}', 'Пн', 'Программирование на C++', 'Боряев С.С.', '216', 'БП', 1, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (24, 2, '13:00 - 14:20', 'null', 'Пн', NULL, NULL, '216', 'БП', 0, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (25, 2, '13:00 - 14:20', '{23.09.2024,07.10.2024,21.10.2024}', 'Пн', 'Программирование на C++', 'Боряев С.С.', '216', 'БП', 1, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (26, 2, '09:30 - 10:50', '{}', 'Вт', '{"Дискретная математика"}', '{"Мокеев Д.Б. 24.09.2024 ауд. 402"}', '126', 'БП', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (27, 2, '11:10 - 12:30', '{}', 'Вт', '{"Математический анализ"}', '{"Чистякова С.А."}', '406', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (28, 2, '13:00 - 14:20', '{}', 'Вт', '{"Дискретная математика"}', '{"Мокеев Д.Б."}', 'О26', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (29, 2, '14:40 - 16:00', '{03.09.2024}', 'Вт', '{"Безопасность жизнедеятельности"}', '{"Городнова А.А."}', '126', 'БП', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (30, 2, '09:30 - 10:50', '{}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '302', 'Л', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (31, 2, '11:10 - 12:30', '{}', 'Ср', '{"Программирование С/С++"}', '{"Пеплин Ф.С."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (32, 2, '13:00 - 14:20', '{}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '225', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (48, 3, '11:10 - 12:30', '{}', 'Вт', '{"Дискретная математика"}', '{"Цаплина Е.В."}', '230', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (49, 3, '13:00 - 14:20', '{}', 'Вт', '{"Математический анализ"}', '{"Чистякова С.А."}', '406', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (50, 3, '14:40 - 16:00', '{03.09.2024}', 'Вт', '{"Безопасность жизнедеятельности"}', '{"Городнова А.А.","Улитин И.Б."}', '126', 'БП', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (51, 3, '08:00 - 09:20', '{18.09.2024}', 'Ср', '{"Технология программирования"}', '{"Улитин И.Б."}', '201', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (52, 3, '09:30 - 10:50', '{}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Беспалов П.А."}', '318', 'Л', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (53, 3, '11:10 - 12:30', '{}', 'Ср', '{"Программирование С/С++"}', '{"Пеплин Ф.С."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (54, 3, '13:00 - 14:20', '{}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '225', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (55, 3, '14:40 - 16:00', '{}', 'Ср', '{"Математический анализ"}', '{"Чистяков В.В."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (56, 3, '13:00 - 14:20', '{}', 'Пт', '{"Основы российской государственности"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (57, 3, '14:40 - 16:00', '{}', 'Пт', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (58, 3, '18:10 - 19:30', '{06.09.2024}', 'Пт', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (59, 3, '08:00 - 09:20', '{21.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (60, 3, '11:10 - 12:30', '{14.09.2024}', 'Сб', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (61, 3, '13:00 - 14:20', '{07.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (62, 3, '16:20 - 17:40', '{21.09.2024,12.10.2024}', 'Сб', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (63, 3, '18:10 - 19:30', '{14.09.2024,05.10.2024}', 'Сб', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (64, 4, '08:00 - 09:20', '{16.09.2024,30.09.2024,14.10.2024}', 'Пн', 'Программирование на C++', 'Климов', '216', 'БП', 0, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (66, 4, '09:30 - 10:50', '{16.09.2024,30.09.2024,14.10.2024}', 'Пн', 'Программирование на C++', 'Климов', '216', 'БП', 0, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (68, 4, '13:00 - 14:20', '{с,09.09.2024}', 'Пн', '{"Основы российской государственности"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (69, 4, '08:00 - 09:20', '{03.09.2024}', 'Вт', '{"Безопасность жизнедеятельности"}', '{"Городнова А.А."}', '126', 'БП', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (70, 4, '09:30 - 10:50', '{10.09.2024,17.09.2024}', 'Вт', '{"Технология программирования"}', '{"Улитин И.Б."}', '216', 'БП', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (71, 4, '11:10 - 12:30', '{}', 'Вт', '{"Дискретная математика"}', '{"Талецкий Д.С. 24.09.2024 ауд. 402"}', '126', 'БП', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (72, 4, '13:00 - 14:20', '{}', 'Вт', '{"Дискретная математика"}', '{"Талецкий Д.С."}', '230', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (73, 4, '14:40 - 16:00', '{}', 'Вт', '{"Линейная алгебра и геометрия"}', '{"Беспалов П.А."}', '405', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (74, 4, '09:30 - 10:50', '{}', 'Ср', '{"Программирование С/С++"}', '{"Пеплин Ф.С."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (75, 4, '11:10 - 12:30', '{}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '225', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (76, 4, '13:00 - 14:20', '{}', 'Ср', '{"Математический анализ"}', '{"Чистякова С.А."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (77, 4, '14:40 - 16:00', '{}', 'Ср', '{"Математический анализ"}', '{"Чистякова С.А."}', '226', 'Л', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (78, 4, '16:20 - 17:40', '{}', 'Пт', '{"История России"}', '{"отмена занятия"}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (79, 4, '18:10 - 19:30', '{06.09.2024}', 'Пт', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (80, 4, '09:30 - 10:50', '{14.09.2024}', 'Сб', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (81, 4, '11:10 - 12:30', '{07.09.2024,21.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (82, 4, '14:40 - 16:00', '{07.09.2024,21.09.2024,12.10.2024}', 'Сб', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (128, 7, '13:00 - 14:20', '{с,09.09.2024}', 'Пн', '{"Математический анализ"}', '{"Чистякова С.А."}', '226', 'Л', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (39, 2, '11:10 - 12:30', '{14.09.2024}', 'Сб', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (40, 2, '13:00 - 14:20', '{07.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (43, 3, '11:10 - 12:30', '{16.09.2024,30.09.2024,14.10.2024}', 'Пн', 'Программирование на C++', 'Климов', '216', 'БП', 0, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (45, 3, '13:00 - 14:20', '{16.09.2024,30.09.2024,14.10.2024}', 'Пн', 'Программирование на C++', 'Климов', '216', 'БП', 0, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (47, 3, '09:30 - 10:50', '{}', 'Вт', '{"Дискретная математика"}', '{"Мокеев Д.Б. 24.09.2024 ауд. 402"}', '126', 'БП', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (67, 4, '09:30 - 10:50', 'null', 'Пн', NULL, NULL, '216', 'БП', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (44, 3, '11:10 - 12:30', 'null', 'Пн', NULL, NULL, '216', 'БП', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (46, 3, '13:00 - 14:20', 'null', 'Пн', NULL, NULL, '216', 'БП', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (65, 4, '08:00 - 09:20', 'null', 'Пн', NULL, NULL, '216', 'БП', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (89, 5, '13:00 - 14:20', '{}', 'Вт', '{"Линейная алгебра и геометрия"}', '{"Беспалов П.А."}', '405', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (90, 5, '14:40 - 16:00', '{}', 'Вт', '{"Математический анализ"}', '{"Чистякова С.А."}', '406', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (91, 5, '09:30 - 10:50', '{}', 'Ср', '{"Программирование С/С++"}', '{"Пеплин Ф.С."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (92, 5, '11:10 - 12:30', '{}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '225', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (93, 5, '13:00 - 14:20', '{}', 'Ср', '{"Математический анализ"}', '{"Чистякова С.А."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (94, 5, '14:40 - 16:00', '{11.09.2024,18.09.2024}', 'Ср', '{"Технология программирования"}', '{"Улитин И.Б."}', '201', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (95, 5, '11:10 - 12:30', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'МарьевичевН.', '216', 'БП', 0, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (97, 5, '13:00 - 14:20', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'МарьевичевН.', '216', 'БП', 0, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (99, 5, '18:10 - 19:30', '{06.09.2024}', 'Пт', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (100, 5, '09:30 - 10:50', '{14.09.2024}', 'Сб', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (101, 5, '11:10 - 12:30', '{07.09.2024,21.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (102, 5, '13:00 - 14:20', '{21.09.2024,12.10.2024}', 'Сб', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (103, 5, '16:20 - 17:40', '{07.09.2024}', 'Сб', 'Основы российской государственности', 'Константинова Т.Н.', 'online', NULL, 0, 'семинар');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (105, 6, '11:10 - 12:30', '{с,09.09.2024}', 'Пн', '{"Основы российской государственности"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (106, 6, '08:00 - 09:20', '{03.09.2024}', 'Вт', '{"Безопасность жизнедеятельности"}', '{"Городнова А.А."}', '126', 'БП', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (107, 6, '09:30 - 10:50', '{}', 'Вт', '{"Дискретная математика"}', '{"Цаплина Е.В."}', '230', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (108, 6, '11:10 - 12:30', '{}', 'Вт', '{"Дискретная математика"}', '{"Талецкий Д.С. 24.09.2024 ауд. 402"}', '126', 'БП', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (109, 6, '13:00 - 14:20', '{10.09.2024,17.09.2024}', 'Вт', '{"Технология программирования"}', '{"Улитин И.Б."}', '216', 'БП', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (110, 6, '16:20 - 17:40', '{с,17.09.2024}', 'Вт', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (111, 6, '09:30 - 10:50', '{}', 'Ср', '{"Программирование С/С++"}', '{"Пеплин Ф.С."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (112, 6, '11:10 - 12:30', '{}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '225', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (113, 6, '13:00 - 14:20', '{}', 'Ср', '{"Математический анализ"}', '{"Чистякова С.А."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (114, 6, '14:40 - 16:00', '{}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Беспалов П.А."}', '206', 'Л', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (115, 6, '16:20 - 17:40', '{}', 'Ср', '{"Математический анализ"}', '{"Чистякова С.А."}', '226', 'Л', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (116, 6, '19:40 - 21:00', '{11.09.2024}', 'Ср', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (117, 6, '08:00 - 09:20', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'МарьевичевН.', '216', 'БП', 0, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (119, 6, '09:30 - 10:50', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'МарьевичевН.', '216', 'БП', 0, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (121, 6, '18:10 - 19:30', '{06.09.2024}', 'Пт', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (122, 6, '09:30 - 10:50', '{14.09.2024}', 'Сб', '{"Линейная алгебра и геометрия"}', '{"Савина О.Н."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (123, 6, '11:10 - 12:30', '{07.09.2024,21.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (124, 6, '16:20 - 17:40', '{21.09.2024,12.10.2024}', 'Сб', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (125, 6, '18:10 - 19:30', '{07.09.2024,21.09.2024,12.10.2024}', 'Сб', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (126, 7, '11:10 - 12:30', '{09.09.2024,16.09.2024}', 'Пн', 'Технология программирования', 'Улитин И.Б.', '201', 'Л', 0, '');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (84, 5, '14:40 - 16:00', '{с,09.09.2024}', 'Пн', '{"Основы российской государственности"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (85, 5, '16:20 - 17:40', '{с,09.09.2024}', 'Пн', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (86, 5, '08:00 - 09:20', '{03.09.2024}', 'Вт', '{"Безопасность жизнедеятельности"}', '{"Городнова А.А."}', '126', 'БП', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (87, 5, '09:30 - 10:50', '{}', 'Вт', '{"Дискретная математика"}', '{"Талецкий Д.С."}', '405', 'БП', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (88, 5, '11:10 - 12:30', '{}', 'Вт', '{"Дискретная математика"}', '{"Талецкий Д.С. 24.09.2024 ауд. 402"}', '126', 'БП', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (127, 7, '11:10 - 12:30', '{23.09.2024,-14.10.2024}', 'Пн', 'Линейная алгебра и геометрия', 'Шапошников В.Е.', '201', 'Л', 1, '');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (98, 5, '13:00 - 14:20', 'null', 'Пт', NULL, NULL, '216', 'БП', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (118, 6, '08:00 - 09:20', 'null', 'Пт', NULL, NULL, '216', 'БП', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (120, 6, '09:30 - 10:50', 'null', 'Пт', NULL, NULL, '216', 'БП', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (136, 7, '13:00 - 14:20', '{}', 'Ср', '{"Дискретная математика"}', '{"Логвинова К.В."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (137, 7, '18:10 - 19:30', '{с,11.09.2024}', 'Ср', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (138, 7, '08:00 - 09:20', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '301', 'Р', 0, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (140, 7, '09:30 - 10:50', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '301', 'Р', 0, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (142, 7, '11:10 - 12:30', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '102', 'Р', 0, 'лекция');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (144, 7, '13:00 - 14:20', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '102', 'Р', 0, 'лекция');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (146, 7, '18:10 - 19:30', '{06.09.2024}', 'Пт', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (147, 7, '09:30 - 10:50', '{07.09.2024,21.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (148, 7, '14:40 - 16:00', '{28.09.2024,19.10.2024}', 'Сб', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (149, 7, '16:20 - 17:40', '{21.09.2024,12.10.2024}', 'Сб', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (150, 8, '09:30 - 10:50', '{09.09.2024,16.09.2024}', 'Пн', '{"Технология программирования"}', '{"Улитин И.Б."}', '201', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (151, 8, '11:10 - 12:30', '{с,09.09.2024}', 'Пн', '{"Математический анализ"}', '{"Чистякова С.А."}', '226', 'Л', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (152, 8, '13:00 - 14:20', '{с,09.09.2024}', 'Пн', '{"Дискретная математика"}', '{"Логвинова К.В."}', '303', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (153, 8, '14:40 - 16:00', '{с,09.09.2024}', 'Пн', '{"Линейная алгебра и геометрия"}', '{"Шапошников В.Е."}', '204', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (154, 8, '11:10 - 12:30', '{10.09.2024}', 'Вт', '{"Безопасность жизнедеятельности"}', '{"Городнова А.А."}', '102', 'Р', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (155, 8, '14:40 - 16:00', '{}', 'Вт', '{"Основы российской государственности"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (156, 8, '09:30 - 10:50', '{с,11.09.2024}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Шапошников В.Е."}', '225', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (157, 8, '11:10 - 12:30', '{}', 'Ср', '{"Математический анализ"}', '{"Чистяков В.В."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (158, 8, '13:00 - 14:20', '{}', 'Ср', '{"Дискретная математика"}', '{"Логвинова К.В."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (159, 8, '16:20 - 17:40', '{с,11.09.2024}', 'Ср', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (160, 8, '08:00 - 09:20', 'null', 'Пт', NULL, NULL, '301', 'Р', 0, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (162, 8, '09:30 - 10:50', 'null', 'Пт', NULL, NULL, '301', 'Р', 0, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (164, 8, '11:10 - 12:30', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '102', 'Р', 0, 'лекция');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (166, 8, '13:00 - 14:20', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '102', 'Р', 0, 'лекция');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (168, 8, '18:10 - 19:30', '{06.09.2024}', 'Пт', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (169, 8, '09:30 - 10:50', '{07.09.2024,21.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (170, 8, '13:00 - 14:20', '{28.09.2024,19.10.2024}', 'Сб', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (171, 8, '16:20 - 17:40', '{21.09.2024,12.10.2024}', 'Сб', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (172, 9, '08:00 - 09:20', '{09.09.2024,16.09.2024}', 'Пн', '{"Технология программирования"}', '{"Улитин И.Б."}', '201', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (173, 9, '09:30 - 10:50', '{с,09.09.2024}', 'Пн', '{"Математический анализ"}', '{"Сараев И.А."}', '226', 'Л', 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (174, 9, '11:10 - 12:30', '{с,09.09.2024}', 'Пн', '{"Дискретная математика"}', '{"Логвинова К.В."}', '303', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (175, 9, '13:00 - 14:20', '{с,09.09.2024}', 'Пн', '{"Линейная алгебра и геометрия"}', '{"Шапошников В.Е."}', '204', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (176, 9, '11:10 - 12:30', '{10.09.2024}', 'Вт', '{"Безопасность жизнедеятельности"}', '{"Городнова А.А."}', '102', 'Р', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (130, 7, '16:20 - 17:40', '{21.10.2024}', 'Пн', '{"Линейная алгебра и геометрия"}', '{"Шапошников В.Е."}', '204', 'Л', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (131, 7, '11:10 - 12:30', '{10.09.2024}', 'Вт', '{"Безопасность жизнедеятельности"}', '{"Городнова А.А."}', '102', 'Р', 2, '{}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (132, 7, '13:00 - 14:20', '{с,17.09.2024}', 'Вт', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (134, 7, '09:30 - 10:50', '{с,11.09.2024}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Шапошников В.Е."}', '225', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (135, 7, '11:10 - 12:30', '{}', 'Ср', '{"Математический анализ"}', '{"Чистяков В.В."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (141, 7, '09:30 - 10:50', 'null', 'Пт', NULL, NULL, '301', 'Р', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (143, 7, '11:10 - 12:30', 'null', 'Пт', NULL, NULL, '102', 'Р', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (145, 7, '13:00 - 14:20', 'null', 'Пт', NULL, NULL, '102', 'Р', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (161, 8, '08:00 - 09:20', '{}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '301', 'Р', 1, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (163, 8, '09:30 - 10:50', '{}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '301', 'Р', 1, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (165, 8, '11:10 - 12:30', 'null', 'Пт', NULL, NULL, '102', 'Р', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (167, 8, '13:00 - 14:20', 'null', 'Пт', NULL, NULL, '102', 'Р', 1, NULL);
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (177, 9, '18:10 - 19:30', '{}', 'Вт', '{"Основы российской государственности"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (178, 9, '19:40 - 21:00', '{10.09.2024}', 'Вт', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (179, 9, '09:30 - 10:50', '{с,11.09.2024}', 'Ср', '{"Линейная алгебра и геометрия"}', '{"Шапошников В.Е."}', '225', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (180, 9, '11:10 - 12:30', '{}', 'Ср', '{"Математический анализ"}', '{"Чистяков В.В."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (181, 9, '13:00 - 14:20', '{}', 'Ср', '{"Дискретная математика"}', '{"Логвинова К.В."}', '323', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (182, 9, '19:40 - 21:00', '{с,18.09.2024}', 'Ср', '{"История России"}', '{"Константинова Т.Н."}', 'online', NULL, 2, '{семинар}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (183, 9, '11:10 - 12:30', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '102', 'Р', 0, 'лекция');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (184, 9, '11:10 - 12:30', '{}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '102', 'Р', 1, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (185, 9, '13:00 - 14:20', '{20.09.2024,04.10.2024,18.10.2024}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '102', 'Р', 0, 'лекция');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (186, 9, '13:00 - 14:20', '{}', 'Пт', 'Программирование на C++', 'Лупанова Е.А.', '102', 'Р', 1, 'практическое занятие');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (187, 9, '18:10 - 19:30', '{06.09.2024}', 'Пт', '{"Основы российской государственности"}', '{"Кочеров С.Н."}', 'online', NULL, 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (188, 9, '09:30 - 10:50', '{07.09.2024,21.09.2024}', 'Сб', '{"Технология программирования"}', '{"Улитин И.Б."}', '318', 'Л', 2, '{лекция}');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (189, 9, '16:20 - 17:40', '{21.09.2024,12.10.2024}', 'Сб', 'Основы российской государственности', 'Кочеров С.Н.', 'online', NULL, 0, 'лекция');
INSERT INTO public.timetable (id, groupname, "time", date, day, lesson, teacher, classroom, building, week, type_of_lesson) VALUES (190, 9, '16:20 - 17:40', '{28.09.2024,19.10.2024}', 'Сб', 'Основы российской государственности', 'Константинова Т.Н. ', 'online', NULL, 1, 'семинар');


--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 217
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 1, false);


--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 219
-- Name: timetable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timetable_id_seq', 1, false);


--
-- TOC entry 4703 (class 2606 OID 32922)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- TOC entry 4705 (class 2606 OID 32940)
-- Name: timetable timetable_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_pkey PRIMARY KEY (id);


-- Completed on 2024-10-26 00:05:13

--
-- PostgreSQL database dump complete
--

