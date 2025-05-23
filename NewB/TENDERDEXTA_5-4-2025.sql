PGDMP  '    2                }            td_lms    16.8 (Debian 16.8-1.pgdg120+1)    17.2 w    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
                     td_lms_user    false            �            1255    16662    update_modified_column()    FUNCTION     �   CREATE FUNCTION public.update_modified_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$;
 /   DROP FUNCTION public.update_modified_column();
       public               td_lms_user    false    5            �            1255    16398    update_timestamp()    FUNCTION     �   CREATE FUNCTION public.update_timestamp() RETURNS trigger
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
          public               td_lms_user    false    220            �            1259    16423    enrollments    TABLE       CREATE TABLE public.enrollments (
    id integer NOT NULL,
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    enrollment_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(20) DEFAULT 'pending'::character varying NOT NULL
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
       public               td_lms_user    false    223    5            �           0    0    otps_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.otps_id_seq OWNED BY public.otps.id;
          public               td_lms_user    false    224            �            1259    16635    payments    TABLE     ]  CREATE TABLE public.payments (
    payment_id integer NOT NULL,
    payment_reference character varying(100) NOT NULL,
    payment_amount numeric(10,2) NOT NULL,
    payment_currency character varying(3) DEFAULT 'NGN'::character varying,
    payment_status character varying(20) DEFAULT 'pending'::character varying NOT NULL,
    payment_method character varying(50) NOT NULL,
    payment_gateway character varying(50),
    course_id integer NOT NULL,
    user_id integer NOT NULL,
    gateway_transaction_id character varying(100),
    ip_address character varying(45),
    payment_email character varying(255) NOT NULL,
    payment_phone_number character varying(50),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    payment_proof_url character varying(255) NOT NULL
);
    DROP TABLE public.payments;
       public         heap r       td_lms_user    false    5            �            1259    16634    payments_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payments_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.payments_payment_id_seq;
       public               td_lms_user    false    236    5            �           0    0    payments_payment_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.payments_payment_id_seq OWNED BY public.payments.payment_id;
          public               td_lms_user    false    235            �            1259    16500 	   questions    TABLE     �  CREATE TABLE public.questions (
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
       public               td_lms_user    false    5    228            �           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
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
       public               td_lms_user    false    5    230            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
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
       public               td_lms_user    false    5    225            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               td_lms_user    false    226            �           2604    16591 
   answers id    DEFAULT     h   ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);
 9   ALTER TABLE public.answers ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    233    234    234            �           2604    16492    assessments id    DEFAULT     p   ALTER TABLE ONLY public.assessments ALTER COLUMN id SET DEFAULT nextval('public.assessments_id_seq'::regclass);
 =   ALTER TABLE public.assessments ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    216    215            �           2604    16566    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    232    231    232            �           2604    16493    course_materials id    DEFAULT     z   ALTER TABLE ONLY public.course_materials ALTER COLUMN id SET DEFAULT nextval('public.course_materials_id_seq'::regclass);
 B   ALTER TABLE public.course_materials ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    218    217            �           2604    16494 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    220    219            �           2604    16495    enrollments id    DEFAULT     p   ALTER TABLE ONLY public.enrollments ALTER COLUMN id SET DEFAULT nextval('public.enrollments_id_seq'::regclass);
 =   ALTER TABLE public.enrollments ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    222    221            �           2604    16496    otps id    DEFAULT     b   ALTER TABLE ONLY public.otps ALTER COLUMN id SET DEFAULT nextval('public.otps_id_seq'::regclass);
 6   ALTER TABLE public.otps ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    224    223            �           2604    16638    payments payment_id    DEFAULT     z   ALTER TABLE ONLY public.payments ALTER COLUMN payment_id SET DEFAULT nextval('public.payments_payment_id_seq'::regclass);
 B   ALTER TABLE public.payments ALTER COLUMN payment_id DROP DEFAULT;
       public               td_lms_user    false    235    236    236            �           2604    16503    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    228    227    228            �           2604    16544 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    229    230    230            �           2604    16498    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    226    225            �          0    16588    answers 
   TABLE DATA           }   COPY public.answers (id, user_id, question_id, course_id, material_link, answer, answered_at, created_at, score) FROM stdin;
    public               td_lms_user    false    234   ��       �          0    16400    assessments 
   TABLE DATA           j   COPY public.assessments (id, course_id, title, description, deadline, created_at, updated_at) FROM stdin;
    public               td_lms_user    false    215   ��       �          0    16563    comments 
   TABLE DATA           O   COPY public.comments (id, user_id, course_id, comment, created_at) FROM stdin;
    public               td_lms_user    false    232   �       �          0    16408    course_materials 
   TABLE DATA           u   COPY public.course_materials (id, course_id, material_name, material_link, price, created_at, file_type) FROM stdin;
    public               td_lms_user    false    217   ��       �          0    16415    courses 
   TABLE DATA           �   COPY public.courses (id, title, description, instructor_id, price, duration, category, course_level, thumbnail_image, total_lesson, created_at, updated_at, creator, rating, total_enrolments) FROM stdin;
    public               td_lms_user    false    219   ��       �          0    16423    enrollments 
   TABLE DATA           Y   COPY public.enrollments (id, student_id, course_id, enrollment_date, status) FROM stdin;
    public               td_lms_user    false    221   ��       �          0    16428    otps 
   TABLE DATA           9   COPY public.otps (id, email, otp, expiresat) FROM stdin;
    public               td_lms_user    false    223   �       �          0    16635    payments 
   TABLE DATA             COPY public.payments (payment_id, payment_reference, payment_amount, payment_currency, payment_status, payment_method, payment_gateway, course_id, user_id, gateway_transaction_id, ip_address, payment_email, payment_phone_number, created_at, updated_at, payment_proof_url) FROM stdin;
    public               td_lms_user    false    236   N�       �          0    16500 	   questions 
   TABLE DATA           �   COPY public.questions (id, question_type, question_text, correct_answer, max_score, options, created_at, updated_at, course_id) FROM stdin;
    public               td_lms_user    false    228   4�       �          0    16541    ratings 
   TABLE DATA           Y   COPY public.ratings (id, user_id, course_id, rating, created_at, updated_at) FROM stdin;
    public               td_lms_user    false    230   Ь       �          0    16440    users 
   TABLE DATA              COPY public.users (id, name, email, password, role, qualification, is_verified, createdat, updatedat, reset_token) FROM stdin;
    public               td_lms_user    false    225   @�       �           0    0    answers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.answers_id_seq', 31, true);
          public               td_lms_user    false    233            �           0    0    assessments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.assessments_id_seq', 11, true);
          public               td_lms_user    false    216            �           0    0    comments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comments_id_seq', 4, true);
          public               td_lms_user    false    231            �           0    0    course_materials_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.course_materials_id_seq', 66, true);
          public               td_lms_user    false    218            �           0    0    courses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courses_id_seq', 28, true);
          public               td_lms_user    false    220            �           0    0    enrollments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.enrollments_id_seq', 28, true);
          public               td_lms_user    false    222            �           0    0    otps_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.otps_id_seq', 13, true);
          public               td_lms_user    false    224            �           0    0    payments_payment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.payments_payment_id_seq', 2, true);
          public               td_lms_user    false    235            �           0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 48, true);
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
       public                 td_lms_user    false    223                       2606    16648 '   payments payments_payment_reference_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_payment_reference_key UNIQUE (payment_reference);
 Q   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_payment_reference_key;
       public                 td_lms_user    false    236                       2606    16646    payments payments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public                 td_lms_user    false    236            �           2606    16509    questions questions_pkey 
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
       public                 td_lms_user    false    215            �           1259    16659    idx_payment_reference    INDEX     W   CREATE INDEX idx_payment_reference ON public.payments USING btree (payment_reference);
 )   DROP INDEX public.idx_payment_reference;
       public                 td_lms_user    false    236                        1259    16661    idx_payment_relationships    INDEX     \   CREATE INDEX idx_payment_relationships ON public.payments USING btree (user_id, course_id);
 -   DROP INDEX public.idx_payment_relationships;
       public                 td_lms_user    false    236    236                       1259    16660    idx_payment_status    INDEX     Q   CREATE INDEX idx_payment_status ON public.payments USING btree (payment_status);
 &   DROP INDEX public.idx_payment_status;
       public                 td_lms_user    false    236            �           1259    16517    idx_questions_question_type    INDEX     Z   CREATE INDEX idx_questions_question_type ON public.questions USING btree (question_type);
 /   DROP INDEX public.idx_questions_question_type;
       public                 td_lms_user    false    228                       2620    16475 '   assessments update_assessment_timestamp    TRIGGER     �   CREATE TRIGGER update_assessment_timestamp BEFORE UPDATE ON public.assessments FOR EACH ROW EXECUTE FUNCTION public.update_timestamp();
 @   DROP TRIGGER update_assessment_timestamp ON public.assessments;
       public               td_lms_user    false    215    248                       2620    16663    payments update_payment_modtime    TRIGGER     �   CREATE TRIGGER update_payment_modtime BEFORE UPDATE ON public.payments FOR EACH ROW EXECUTE FUNCTION public.update_modified_column();
 8   DROP TRIGGER update_payment_modtime ON public.payments;
       public               td_lms_user    false    250    236                       2620    16476    users update_updatedat    TRIGGER     ~   CREATE TRIGGER update_updatedat BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();
 /   DROP TRIGGER update_updatedat ON public.users;
       public               td_lms_user    false    225    249                       2606    16610    answers answers_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_course_id_fkey;
       public               td_lms_user    false    219    3300    234                       2606    16605     answers answers_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_question_id_fkey;
       public               td_lms_user    false    234    228    3313                       2606    16600    answers answers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_user_id_fkey;
       public               td_lms_user    false    225    3310    234                       2606    16577     comments comments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_course_id_fkey;
       public               td_lms_user    false    232    3300    219                       2606    16572    comments comments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_user_id_fkey;
       public               td_lms_user    false    225    232    3310                       2606    16477 0   course_materials course_materials_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_materials
    ADD CONSTRAINT course_materials_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.course_materials DROP CONSTRAINT course_materials_course_id_fkey;
       public               td_lms_user    false    219    217    3300                       2606    16482 &   enrollments enrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_course_id_fkey;
       public               td_lms_user    false    3300    219    221                       2606    16487 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public               td_lms_user    false    3310    225    221            	           2606    16582    questions fk_course    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.questions DROP CONSTRAINT fk_course;
       public               td_lms_user    false    228    3300    219                       2606    16654    payments fk_course    FK CONSTRAINT     u   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES public.courses(id);
 <   ALTER TABLE ONLY public.payments DROP CONSTRAINT fk_course;
       public               td_lms_user    false    219    3300    236                       2606    16649    payments fk_user    FK CONSTRAINT     o   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 :   ALTER TABLE ONLY public.payments DROP CONSTRAINT fk_user;
       public               td_lms_user    false    236    3310    225            
           2606    16557    ratings ratings_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_course_id_fkey;
       public               td_lms_user    false    219    3300    230                       2606    16552    ratings ratings_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_user_id_fkey;
       public               td_lms_user    false    225    3310    230            ,           826    16391     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     R   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO td_lms_user;
                        postgres    false            .           826    16393    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     N   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO td_lms_user;
                        postgres    false            -           826    16392     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     R   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO td_lms_user;
                        postgres    false            +           826    16390    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO td_lms_user;
                        postgres    false            �     x�Փ]k�0���_��]��m���1����f	I��(�}k�%ג㤿~����:�c ����<��z��	<��N�u�F�[��Q*˘Vq$37~ȓ�1)��3���S�bw��:|�PW������}}H����t/���VAW2-�|�LVs�4�B[Y�I��̠@+H��R���h΄����]�W
1s�`vGd��O�Hn��(2�;
����2���%��:H'�ą��E5U\'(:��ʙ��i��Eɥɥ9K�C<��xfQ��#j����a��y��]2�ZԷ��_��g麟���x{7^/�����������#��9&��#UU����eu���(y��X����} w���6A~0
�#���'��O�_m^1�B�2M4d�_��%�?%_6@��L$o=��E�Ô=BHj�֜>��I��)�����di'bb�����I���H���]���v�j���T{V��|��h�O����mOj��Y��o}������_Ʒ��Z���}��.���(�Y4a���V��-g�      �   M   x�34�42�)�L�Qp,.N-.�M�+Q0�&dd`d�k`�kl�```Fp1Cs+c+Cs=3s3<R\1z\\\ �O�      �   �   x�]�1�@��z�����,�˖Z�����I !� zO�=�AMH�ߗ�Y��:���v���d���]Nĉl*�!
�&e��I�.C/쫾���(��T�q�"�KǪ�(��'�������Ѡ������&07���+r�e�rA1z�g��~x2s      �   �  x���]o�0��ɯ�=�`cp@��5��I�-]�I�"���I��g�W�TZ�I�@����&F�@�`3n͵�T캒+��e�f��5L��M��y�<���-u�*/Y�6�?"a��\�\�|��f�r��'ySN*4]�"]�y�T3˃�ga�G/�>�	��ju�{���[�Z����l��� ���5���2����w��U�WcV�row�y>��d1��3����4����mk��8V�9:/}�����D�}���I]p�{$��o�X ��`��t��lnr���z��\.Ậu=���d~�\}f�+6��<��6c�>��	���?#gX�٫����(��5/58
Ə|��gf�r��H�����@
����X���*�z�oI�uXD��Y5��xL��8@�O`���9�-�P�D�(��8�}� Y&21�R����Iۭ���i�[m{l���N�6��V�>�â"'��{$F�}���V����^��Q��wBK^I.x-�<��M�2���e�sp[&ښl9E;�I�h�?VBs�7�Nc�aH=ӭ�9�,j�/��9�n��ͳ��x�cAP�G/��e�/���-�����W�x�[L65�~�<n/bti�9�M���T���m��_Ј� �q���n�M�u��P�趣3����=و���M	̷��-�ͭ/���u������=����K� ���+��R�yz�y��`���^�/r��      �   �  x���]o�0���_q� 62�ҬR'm��L�ʍ��`ld��ۯ�!I��U:q>>��ǌ���]���Z�Ӱ��-x�F���|Jl�E��	�����^�,7f�3G�	��Pxн!��M��I�\g�0�DQ�����J݆�`�PUh��Ӿk��l�0���of1�ԖĄE�O�d�@Y�<��F���ԭ�e!�N�ݓ&��LXLV�0�1�T�xo�
����&��l4˭�	d^�*��Q��PJ�^�?�Qw�"�&@i�9ς�g��J�P�� s��~��O8x쏙�N�b�n�R��FY�R�(�jt�s�GIs���Zh^{���<���Y\P��_Ҹ^40�VZ'<�?k��q��HByJ�Ǥm/+��6 �?��X�o
�Z(���m��a7��*��U����2�I�9�F_�?��CO��O��.�8X�&��_=6V�      �   6   x�3��4�4��4202�5 "#C+C#+C=s#KKCβԢ̴���=... ��
      �   V  x�m�Mn� �5�"b�V9G�6(��Md[U�ӗDm��Hl?��= /�i8M!��/1�A�������ڣc��.yLaށS
�����G�A1�5d	]Ô�qx:�1��NI�`jI-��2�����S?�r��f�u$�s���,K(7�P�["p�G�`��W��IZ}���9A���u{�ٿ2������1wAs׭,i���Qh`g� �)�M�"��8�y��4�V�Ge+dFQ$������Ya���\��c
�*���La)]۷��܅HSs��j2�yC�+��(+�{���m�ȋ�!Ku����ב��\�ma��z%0m}e������      �   �   x�}O�j�0<ǯ�޺��=��Л��K�]b^����P�������00�������a6Z
D1��"�psa/:��ǡ�9�C\G�J\�JȠ*`�ǒ:���:����������޻p�5��>-�v̾	�iHJI,YV�іL��Rn���}�O��~�ϡ�g�&m���_;��H=;o�����$]}G���Y�E�P�I	bX�+E���I�      �   �	  x��Zmo�8���
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