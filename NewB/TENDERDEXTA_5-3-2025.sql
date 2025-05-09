PGDMP  4    6                }            td_lms    16.8 (Debian 16.8-1.pgdg120+1)    17.2 h    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16389    td_lms    DATABASE     q   CREATE DATABASE td_lms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE td_lms;
                     td_lms_user    false            �           0    0    td_lms    DATABASE PROPERTIES     /   ALTER DATABASE td_lms SET "TimeZone" TO 'utc';
                          td_lms_user    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     td_lms_user    false            �            1255    16398    update_timestamp()    FUNCTION     �   CREATE FUNCTION public.update_timestamp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$;
 )   DROP FUNCTION public.update_timestamp();
       public               td_lms_user    false    5            �            1255    16399    update_updatedat_column()    FUNCTION     �   CREATE FUNCTION public.update_updatedat_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  NEW.updatedat = CURRENT_TIMESTAMP;
  RETURN NEW;
END;
$$;
 0   DROP FUNCTION public.update_updatedat_column();
       public               td_lms_user    false    5            �            1259    16588    answers    TABLE     v  CREATE TABLE public.answers (
    id integer NOT NULL,
    user_id integer NOT NULL,
    question_id integer NOT NULL,
    course_id integer NOT NULL,
    material_link text NOT NULL,
    answer text NOT NULL,
    answered_at timestamp with time zone DEFAULT now() NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    score character varying(10)
);
    DROP TABLE public.answers;
       public         heap r       td_lms_user    false    5            �            1259    16587    answers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.answers_id_seq;
       public               td_lms_user    false    234    5            �           0    0    answers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;
          public               td_lms_user    false    233            �            1259    16400    assessments    TABLE     T  CREATE TABLE public.assessments (
    id integer NOT NULL,
    course_id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    deadline timestamp without time zone,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.assessments;
       public         heap r       td_lms_user    false    5            �            1259    16407    assessments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.assessments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.assessments_id_seq;
       public               td_lms_user    false    5    215            �           0    0    assessments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.assessments_id_seq OWNED BY public.assessments.id;
          public               td_lms_user    false    216            �            1259    16563    comments    TABLE     �   CREATE TABLE public.comments (
    id integer NOT NULL,
    user_id integer NOT NULL,
    course_id integer NOT NULL,
    comment text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.comments;
       public         heap r       td_lms_user    false    5            �            1259    16562    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public               td_lms_user    false    5    232            �           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public               td_lms_user    false    231            �            1259    16408    course_materials    TABLE     8  CREATE TABLE public.course_materials (
    id integer NOT NULL,
    course_id integer NOT NULL,
    material_name character varying(255) NOT NULL,
    material_link text NOT NULL,
    price numeric(10,2) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    file_type character varying(255)
);
 $   DROP TABLE public.course_materials;
       public         heap r       td_lms_user    false    5            �            1259    16414    course_materials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.course_materials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.course_materials_id_seq;
       public               td_lms_user    false    217    5            �           0    0    course_materials_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.course_materials_id_seq OWNED BY public.course_materials.id;
          public               td_lms_user    false    218            �            1259    16415    courses    TABLE     e  CREATE TABLE public.courses (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    instructor_id integer NOT NULL,
    price numeric(10,2) NOT NULL,
    duration character varying(50) NOT NULL,
    category character varying(100) NOT NULL,
    course_level character varying(50) NOT NULL,
    thumbnail_image text NOT NULL,
    total_lesson integer NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    creator character varying(255),
    rating integer,
    total_enrolments integer
);
    DROP TABLE public.courses;
       public         heap r       td_lms_user    false    5            �            1259    16422    courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public               td_lms_user    false    219    5            �           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public               td_lms_user    false    220            �            1259    16423    enrollments    TABLE     �   CREATE TABLE public.enrollments (
    id integer NOT NULL,
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    enrollment_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.enrollments;
       public         heap r       td_lms_user    false    5            �            1259    16427    enrollments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.enrollments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.enrollments_id_seq;
       public               td_lms_user    false    5    221            �           0    0    enrollments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.enrollments_id_seq OWNED BY public.enrollments.id;
          public               td_lms_user    false    222            �            1259    16428    otps    TABLE     �   CREATE TABLE public.otps (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    otp character varying(6) NOT NULL,
    expiresat timestamp without time zone NOT NULL
);
    DROP TABLE public.otps;
       public         heap r       td_lms_user    false    5            �            1259    16431    otps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.otps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.otps_id_seq;
       public               td_lms_user    false    5    223            �           0    0    otps_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.otps_id_seq OWNED BY public.otps.id;
          public               td_lms_user    false    224            �            1259    16500 	   questions    TABLE     �  CREATE TABLE public.questions (
    id integer NOT NULL,
    question_type character varying(50) NOT NULL,
    question_text text NOT NULL,
    correct_answer text,
    max_score integer NOT NULL,
    options jsonb,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    course_id integer NOT NULL
);
    DROP TABLE public.questions;
       public         heap r       td_lms_user    false    5            �            1259    16499    questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.questions_id_seq;
       public               td_lms_user    false    228    5            �           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
          public               td_lms_user    false    227            �            1259    16541    ratings    TABLE     o  CREATE TABLE public.ratings (
    id integer NOT NULL,
    user_id integer NOT NULL,
    course_id integer NOT NULL,
    rating integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT ratings_rating_check CHECK (((rating >= 1) AND (rating <= 5)))
);
    DROP TABLE public.ratings;
       public         heap r       td_lms_user    false    5            �            1259    16540    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public               td_lms_user    false    230    5            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public               td_lms_user    false    229            �            1259    16440    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(50) DEFAULT 'student'::character varying,
    qualification jsonb,
    is_verified boolean DEFAULT false,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    reset_token character varying(255)
);
    DROP TABLE public.users;
       public         heap r       td_lms_user    false    5            �            1259    16449    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               td_lms_user    false    225    5            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               td_lms_user    false    226            �           2604    16591 
   answers id    DEFAULT     h   ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);
 9   ALTER TABLE public.answers ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    233    234    234            �           2604    16492    assessments id    DEFAULT     p   ALTER TABLE ONLY public.assessments ALTER COLUMN id SET DEFAULT nextval('public.assessments_id_seq'::regclass);
 =   ALTER TABLE public.assessments ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    216    215            �           2604    16566    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    231    232    232            �           2604    16493    course_materials id    DEFAULT     z   ALTER TABLE ONLY public.course_materials ALTER COLUMN id SET DEFAULT nextval('public.course_materials_id_seq'::regclass);
 B   ALTER TABLE public.course_materials ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    218    217            �           2604    16494 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    220    219            �           2604    16495    enrollments id    DEFAULT     p   ALTER TABLE ONLY public.enrollments ALTER COLUMN id SET DEFAULT nextval('public.enrollments_id_seq'::regclass);
 =   ALTER TABLE public.enrollments ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    222    221            �           2604    16496    otps id    DEFAULT     b   ALTER TABLE ONLY public.otps ALTER COLUMN id SET DEFAULT nextval('public.otps_id_seq'::regclass);
 6   ALTER TABLE public.otps ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    224    223            �           2604    16503    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    228    227    228            �           2604    16544 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    230    229    230            �           2604    16498    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    226    225            �          0    16588    answers 
   TABLE DATA           }   COPY public.answers (id, user_id, question_id, course_id, material_link, answer, answered_at, created_at, score) FROM stdin;
    public               td_lms_user    false    234    �       �          0    16400    assessments 
   TABLE DATA           j   COPY public.assessments (id, course_id, title, description, deadline, created_at, updated_at) FROM stdin;
    public               td_lms_user    false    215   "�       �          0    16563    comments 
   TABLE DATA           O   COPY public.comments (id, user_id, course_id, comment, created_at) FROM stdin;
    public               td_lms_user    false    232   �       �          0    16408    course_materials 
   TABLE DATA           u   COPY public.course_materials (id, course_id, material_name, material_link, price, created_at, file_type) FROM stdin;
    public               td_lms_user    false    217   3�       �          0    16415    courses 
   TABLE DATA           �   COPY public.courses (id, title, description, instructor_id, price, duration, category, course_level, thumbnail_image, total_lesson, created_at, updated_at, creator, rating, total_enrolments) FROM stdin;
    public               td_lms_user    false    219   ��       �          0    16423    enrollments 
   TABLE DATA           Q   COPY public.enrollments (id, student_id, course_id, enrollment_date) FROM stdin;
    public               td_lms_user    false    221   ��       �          0    16428    otps 
   TABLE DATA           9   COPY public.otps (id, email, otp, expiresat) FROM stdin;
    public               td_lms_user    false    223          �          0    16500 	   questions 
   TABLE DATA           �   COPY public.questions (id, question_type, question_text, correct_answer, max_score, options, created_at, updated_at, course_id) FROM stdin;
    public               td_lms_user    false    228   "�       �          0    16541    ratings 
   TABLE DATA           Y   COPY public.ratings (id, user_id, course_id, rating, created_at, updated_at) FROM stdin;
    public               td_lms_user    false    230   ��       �          0    16440    users 
   TABLE DATA              COPY public.users (id, name, email, password, role, qualification, is_verified, createdat, updatedat, reset_token) FROM stdin;
    public               td_lms_user    false    225   .�       �           0    0    answers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.answers_id_seq', 31, true);
          public               td_lms_user    false    233            �           0    0    assessments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.assessments_id_seq', 11, true);
          public               td_lms_user    false    216            �           0    0    comments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comments_id_seq', 4, true);
          public               td_lms_user    false    231            �           0    0    course_materials_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.course_materials_id_seq', 64, true);
          public               td_lms_user    false    218            �           0    0    courses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courses_id_seq', 28, true);
          public               td_lms_user    false    220            �           0    0    enrollments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.enrollments_id_seq', 19, true);
          public               td_lms_user    false    222            �           0    0    otps_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.otps_id_seq', 13, true);
          public               td_lms_user    false    224            �           0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 48, true);
          public               td_lms_user    false    227            �           0    0    ratings_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ratings_id_seq', 3, true);
          public               td_lms_user    false    229            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 20, true);
          public               td_lms_user    false    226            �           2606    16597    answers answers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public                 td_lms_user    false    234            �           2606    16458    assessments assessments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.assessments
    ADD CONSTRAINT assessments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.assessments DROP CONSTRAINT assessments_pkey;
       public                 td_lms_user    false    215            �           2606    16571    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public                 td_lms_user    false    232            �           2606    16460 &   course_materials course_materials_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.course_materials
    ADD CONSTRAINT course_materials_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.course_materials DROP CONSTRAINT course_materials_pkey;
       public                 td_lms_user    false    217            �           2606    16462    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public                 td_lms_user    false    219            �           2606    16464    enrollments enrollments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
       public                 td_lms_user    false    221            �           2606    16466 0   enrollments enrollments_student_id_course_id_key 
   CONSTRAINT     |   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_course_id_key UNIQUE (student_id, course_id);
 Z   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_course_id_key;
       public                 td_lms_user    false    221    221            �           2606    16468    otps otps_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.otps
    ADD CONSTRAINT otps_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.otps DROP CONSTRAINT otps_pkey;
       public                 td_lms_user    false    223            �           2606    16509    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public                 td_lms_user    false    228            �           2606    16549    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public                 td_lms_user    false    230            �           2606    16551 %   ratings ratings_user_id_course_id_key 
   CONSTRAINT     n   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_course_id_key UNIQUE (user_id, course_id);
 O   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_user_id_course_id_key;
       public                 td_lms_user    false    230    230            �           2606    16599    answers unique_user_answer 
   CONSTRAINT     e   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT unique_user_answer UNIQUE (user_id, question_id);
 D   ALTER TABLE ONLY public.answers DROP CONSTRAINT unique_user_answer;
       public                 td_lms_user    false    234    234            �           2606    16472    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 td_lms_user    false    225            �           2606    16474    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 td_lms_user    false    225            �           1259    16616    idx_answers_course    INDEX     K   CREATE INDEX idx_answers_course ON public.answers USING btree (course_id);
 &   DROP INDEX public.idx_answers_course;
       public                 td_lms_user    false    234            �           1259    16617    idx_answers_material    INDEX     Q   CREATE INDEX idx_answers_material ON public.answers USING btree (material_link);
 (   DROP INDEX public.idx_answers_material;
       public                 td_lms_user    false    234            �           1259    16615    idx_answers_user    INDEX     G   CREATE INDEX idx_answers_user ON public.answers USING btree (user_id);
 $   DROP INDEX public.idx_answers_user;
       public                 td_lms_user    false    234            �           1259    16515    idx_assessments_course_id    INDEX     V   CREATE INDEX idx_assessments_course_id ON public.assessments USING btree (course_id);
 -   DROP INDEX public.idx_assessments_course_id;
       public                 td_lms_user    false    215            �           1259    16517    idx_questions_question_type    INDEX     Z   CREATE INDEX idx_questions_question_type ON public.questions USING btree (question_type);
 /   DROP INDEX public.idx_questions_question_type;
       public                 td_lms_user    false    228            �           2620    16475 '   assessments update_assessment_timestamp    TRIGGER     �   CREATE TRIGGER update_assessment_timestamp BEFORE UPDATE ON public.assessments FOR EACH ROW EXECUTE FUNCTION public.update_timestamp();
 @   DROP TRIGGER update_assessment_timestamp ON public.assessments;
       public               td_lms_user    false    215    246            �           2620    16476    users update_updatedat    TRIGGER     ~   CREATE TRIGGER update_updatedat BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();
 /   DROP TRIGGER update_updatedat ON public.users;
       public               td_lms_user    false    247    225            �           2606    16610    answers answers_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_course_id_fkey;
       public               td_lms_user    false    219    234    3288            �           2606    16605     answers answers_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_question_id_fkey;
       public               td_lms_user    false    3301    228    234            �           2606    16600    answers answers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_user_id_fkey;
       public               td_lms_user    false    225    234    3298            �           2606    16577     comments comments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_course_id_fkey;
       public               td_lms_user    false    3288    232    219            �           2606    16572    comments comments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_user_id_fkey;
       public               td_lms_user    false    232    225    3298            �           2606    16477 0   course_materials course_materials_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_materials
    ADD CONSTRAINT course_materials_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.course_materials DROP CONSTRAINT course_materials_course_id_fkey;
       public               td_lms_user    false    3288    219    217            �           2606    16482 &   enrollments enrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_course_id_fkey;
       public               td_lms_user    false    219    3288    221            �           2606    16487 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public               td_lms_user    false    3298    225    221            �           2606    16582    questions fk_course    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.questions DROP CONSTRAINT fk_course;
       public               td_lms_user    false    228    219    3288            �           2606    16557    ratings ratings_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_course_id_fkey;
       public               td_lms_user    false    3288    219    230            �           2606    16552    ratings ratings_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_user_id_fkey;
       public               td_lms_user    false    3298    230    225            &           826    16391     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     R   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO td_lms_user;
                        postgres    false            (           826    16393    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     N   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO td_lms_user;
                        postgres    false            '           826    16392     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     R   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO td_lms_user;
                        postgres    false            %           826    16390    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO td_lms_user;
                        postgres    false            �     x�Փ]k�0���_��]��m���1����f	I��(�}k�%ג㤿~����:�c ����<��z��	<��N�u�F�[��Q*˘Vq$37~ȓ�1)��3���S�bw��:|�PW������}}H����t/���VAW2-�|�LVs�4�B[Y�I��̠@+H��R���h΄����]�W
1s�`vGd��O�Hn��(2�;
����2���%��:H'�ą��E5U\'(:��ʙ��i��Eɥɥ9K�C<��xfQ��#j����a��y��]2�ZԷ��_��g麟���x{7^/�����������#��9&��#UU����eu���(y��X����} w���6A~0
�#���'��O�_m^1�B�2M4d�_��%�?%_6@��L$o=��E�Ô=BHj�֜>��I��)�����di'bb�����I���H���]���v�j���T{V��|��h�O����mOj��Y��o}������_Ʒ��Z���}��.���(�Y4a���V��-g�      �   M   x�34�42�)�L�Qp,.N-.�M�+Q0�&dd`d�k`�kl�```Fp1Cs+c+Cs=3s3<R\1z\\\ �O�      �   �   x�]�1�@��z�����,�˖Z�����I !� zO�=�AMH�ߗ�Y��:���v���d���]Nĉl*�!
�&e��I�.C/쫾���(��T�q�"�KǪ�(��'�������Ѡ������&07���+r�e�rA1z�g��~x2s      �   c  x��U[o�0~&����6�iZ�>LZ�i��4)2pZX�M��K���mz��0��|��w0��ޢ�WU-n�+�mL-�K�J�v�s]�]S���3�P�FjQk��p�)ea`A���b�g�u}�\묡�^-���x�1�"�p�Ĉ�4�)O0e�(��Izl�-����-�]W9 a�@WUk���1��B��2o�)�E{��b�v��7���kBB���6��26���$|��>��M�~l��*�!�i<�f������u�i�v%��#͝���B�e'|�Г��E>Zhi]�K�R��DgR܂�=J�l6x��uj7�������?�˭�`�����>54JC��$y�HϽ�Ekх�-4-(p�)��9S)0]�$:��ȹe ���\��0�_O���}Su�R��t�9RMOR��H���>�M��b?��x�R>�I��p~$�[��������n�{��C��)b)�8�)a�aעh�������z���o �A#FS����d���IȻ�:	��䯇vz"y�|lN���4�.ݙ2̭p���BV��_�O��8d�R��K��AcWP�����5��P����l����'��?��52      �   �  x���]o�0���_q� 6�dܥY�N���v�'�
��6i�_?i�*SVE�||>��<0J�)gt�NjNò�N7h�	k��J��C(���;%h�V4�/���7��(�"B�Qw�|��K)�ʹ�fa���8�E��k�s�	���С*�|�W'�][kQ�pi���of1hՎĄE,�F|�@Yӌ��8�WC�J�F�*�z���EN6?',&�F�l*����;
������6x`���^?Y��
,o�(����73H��(J�8͒Y�&�y|%2��{4G�	�"|�a��+����~X���{�I��Ǎ�N�A���,KX� N��ͮ��G	�*�K_�W4?!��9.���q��aa��Nx�+��v��$B�d�I�N�[m@(xx-��i�.
�F]p��Ͱ�Z��L��h�P�g�����Ӏ�l��k�3*F(6�d2�RTW      �   /   x�34�4�42�4202�50�54Q04�21�26�312�������� �4�      �   P  x�m�Mn�0�ur
.0Q����sT�A:@����V��fF��ӓ���+��٧��y&�"�Q]���k��\��AC%Y����8���b�Z4-(攣�l�K~�c0���(��C-�%]��1�!�c� �� j�QGbH!�e`oy��TAa�y�B�&'��� ��?+�O��(��r������2���e��E�e&J���y��UU�B�@+T�M��"��4�eO�5αV�Q��Q��~Y�X����o�i�X����;(y9S�Q]A��8���+]`��� !/��|va�=��'A��1�H���g�宾���!Ĕ����2J�7�˱q      �   �	  x��Zmo�8���
"_��s�$N��އ�Mw��6Mї]�^��%��Y&U���=��g��,Y�����(�8����3�<3��l�(���L��̬N���I��A�T��X��	�2�0�"�FL���Ÿ��(�E���5~(V3�)�%&�ɚ�X)9�Uʋ��rZ�T��i_�T㋉uB/rg�j�'��ɉx�
%�D�(3��ip>��������c��x(�����'��f?�^��Z��[+��+�_��s������������w.�F����Ó�ӳ�ѣ?������ht����3��ia��\�Eb�5p�'GH���L��j��<��r�$�h=+�p䖷��� ��U���5/�ȕZ��p��^o���4���@����@�9�s�w;WÑFU�q��	�e&�ti)
�? ZK��'�̭�d����W�3V[�?<"Փ�r�z��o����~�y��������2j��`ER�`��vqH�m�d�G����ސȾ^\4ͅ�"����Ec��;�� 8�Ɖ*�tG� �.D�� Fj�`��\Y���%��J�d6��N��6zQ,�R�q�j�ܻ���+5�ұL�C��r|��m(��^4}��]�{!�t��/:��՞ϯ������П)�8=���ٌIp�N���"7�]�y�����o�jp��+�`�D��+�ݑ5��R��E��������(U��)`T�ȋG�5$�6IV���_�_ҭ�m朖N��}�_� �d�.;%�^�@�#==9�]������.����B9e��W�+7�R@��B�G~����7h\n��@	��3(��ȐH���?�azX�3�u%�%kL��$ӯ2w��]*S|!���N~�+.m��$ĴF<B�!�)�$��J�,��MS���I&���~߆���v2���
v��)�42]Ȝe�LfZ��Z8�C�>�6�3�|�Z����&I��VR8P���A������c�k�Bd�Z���P�;j :�m��iŨ�\�Z�J,���,�Sjwt�'��_�[enG�^�B�8��W{@.�J���7ߡ�@�9c�P��|�-�x�]��oƭX���C���^x�Iƌ:�)�R�������*E��I�\qq2����z_$�-&|jW>��A����C!���'?C����٨�
0;\b�ìBi�P=w��gH�;a��
wL�n2�ܳ���8��Ʃ�7i�J�zq�����k��HAW��|��X�f:׵�9��wT�΅o���M5T236�<T���_�����Bs9�aW��Β.�C@b��^���Hǌ�����������m�������l�1/��y+F������������ͯ������C�7e�4Lod�<<��|�c>10jN�r�L+8ok��[b=$	��.�O�������\�YTќ��x��KU�Wĥ���y�ð~����d�M\�0٬�^�RN��OD|�2������8Sc�m�zYe@b�!a��\��
B�>��n���l�9��ucp��M↤�	�C��D���x��ݿbu�2�С?���_֋��󳓋���G](w�}ttѝiU�AQ1�-�?�YF"��Rڗ��k�TnL�F܌5�ˏ[�4c�%�#��3�J>���rc�}�6Rk
t���j�C;بv�6+z̡�R����|�Σ�/� �;#jCQK��
(�CQ<g���Y���|(�C��<I�Ʈ2��1�:�ff�j���[yӒ:�����?�P(�˥��I���A-X��4�뀭����@aI9;��$D�7d~����c�Q[vW�,��:������^~�n��	�|i.�ΡFD,ZԬ.*{Q^��U��Q��:�&�඲� iН�U����G,ծ��)�ٚ9��_�`p����BqIֿ�S�e���9��=�c�<���e�<\�'Q�uxU:H�]���ّݰ)��uC�G�>�8C��k1�B�d��ů�_�Xw(W�MO������|=�5 -�^�������(�y��ߴ���"I"�l^�ˆ�f1t�N�� sj=���܂D�-���\g���c�,��֠��40'-c�p�t��o���lx�e�5_�eu��T�hͰ�^���LSN�u�Q+����@�� lo&�H��qH$�i�ȐaLY�XR5W��4�^2�H$7B� v�&�u;ccKDB��Ĩ �U��n�5��F�C��}����䜊8o��YN)��@��H�|QŇ*������"U"�͸_�Y�ؽ)��Nf`�"�׍��
�ֱ[��|{/��H'2+�d9��� �ѧG{�J{�K6m"���){Z���`��7`l���G�bm���(�R���p�%�48̭�k�֩���md�9=1�����-�h_a�q�R��6	�~�?��qrtt����      �   `   x�}ͻ�@ј��A�މ�Z��3����@B@��q.�|�Þ���z!�܂x�\^�c��݌��4~9e�-s��Q����=,K�9Џ��T#'      �   �  x���Y��F �gﯰF����m��,�6LEmw�_�;�O��Qf��%�d��B���\]�3�(
��s_^�cFc�ыq	ns�!~��skS��=���>O�,�{��jF��#v`Z��j)X�����r�˼r�4�~��gY���dD���?�e�Q�i!�QZ� �ys��HN��~U�9>�U���5����X҄М�K�#�[�4)�D9��~��zF.���~�N���¦�>���'Z�4��'�֪oh��Ŋgx'?�K��|WkZ��N{CwrJQ�I�"#^D�K��խhDk������4�M��/_����rJ}���P��r��f U��M�����*���2{�p3�Bj��o����"��;�Ko��m"H�{"U�~10��׳��`�Е����������_�d^2�.�`7G��R̅>?A��p�-�oh#�m����<X�`�ޒQ�������_oGݣ��D-�=q�|L�4��ҌTIS$d�K1�ʙ|�S~CV՜K�.����ڕ�F��u���d�O��Q)����>�V����6�U[H"��Q� ��]� $M׌{)FԸ�X��˾7��w���<�
avv��!����Q�-���~��rF��a��Y�U��}^'V]H4]�*��b>�3� �1?w�u�a�:�m��mj��StX�Py�s�թ����艎f�؎��&�'Zw>��y)��2�!���0���p�`��ќ�����b��2S	'�z3�=A�c���`f�S�ё���v��F�_5#��&��u�H�
;��cJ����i�u���ђ�4����f�.��L�W�Y��yzR�����s�E�8!t]Q%�^��[�Z�<���u����Z�Ke��[��ͧ2��\H�Y17�^�4Ov������Z^����d�^�J�܀���=\%a���4�itKU���sѤ�eo?3/�Rt�O�~�e��f�떡���`!>���}��
�ߊ,߬��ԕ*s��Sמ?�~��y��: @?����n����^�Xe7v��*����?�)ϧ]o}Y�
A� ���UQ;P�m�{�+��S���xN�6�Q�&Z��ֻ�>d�hLT$|j%)K��C��S�8#����ur;[��Р�6i��ߙ�dv�*���BL�4�RB�P5,���;�/��H�o��p�cs�N�ŧ�/ ��ˑ�E���!�ѥ�ʶ��(�OaY�##+F�zB��ڍ�����"@�M;H$EF�KCU^��W����ƍ�^�"����F���n��p߭�fH���O����������֕YV���^�u������:
3AR%UA_q���85�k��މR��Ivn��,涵9��FX�v��ͩ)^@s&}i+�>�#yR�[=�����| �u)�t=�T �菱��ݻw����     