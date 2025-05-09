PGDMP  $    1                }            td_lms    16.8 (Debian 16.8-1.pgdg120+1)    17.2 w    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public               td_lms_user    false    5            �            1259    16588    answers    TABLE     m  CREATE TABLE public.answers (
    id integer NOT NULL,
    user_id integer NOT NULL,
    question_id integer NOT NULL,
    course_id integer NOT NULL,
    material_link text,
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
       public               td_lms_user    false    215    5            �           0    0    assessments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.assessments_id_seq OWNED BY public.assessments.id;
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
       public               td_lms_user    false    5    217            �           0    0    course_materials_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.course_materials_id_seq OWNED BY public.course_materials.id;
          public               td_lms_user    false    218            �            1259    16415    courses    TABLE     o  CREATE TABLE public.courses (
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
    total_enrolments integer DEFAULT 0
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
       public               td_lms_user    false    5    219            �           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
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
       public               td_lms_user    false    221    5            �           0    0    enrollments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.enrollments_id_seq OWNED BY public.enrollments.id;
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
       public               td_lms_user    false    224    223            �           2604    16638    payments payment_id    DEFAULT     z   ALTER TABLE ONLY public.payments ALTER COLUMN payment_id SET DEFAULT nextval('public.payments_payment_id_seq'::regclass);
 B   ALTER TABLE public.payments ALTER COLUMN payment_id DROP DEFAULT;
       public               td_lms_user    false    236    235    236            �           2604    16503    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
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
    public               td_lms_user    false    215   D�       �          0    16563    comments 
   TABLE DATA           O   COPY public.comments (id, user_id, course_id, comment, created_at) FROM stdin;
    public               td_lms_user    false    232   ��       �          0    16408    course_materials 
   TABLE DATA           u   COPY public.course_materials (id, course_id, material_name, material_link, price, created_at, file_type) FROM stdin;
    public               td_lms_user    false    217   �       �          0    16415    courses 
   TABLE DATA           �   COPY public.courses (id, title, description, instructor_id, price, duration, category, course_level, thumbnail_image, total_lesson, created_at, updated_at, creator, rating, total_enrolments) FROM stdin;
    public               td_lms_user    false    219   }�       �          0    16423    enrollments 
   TABLE DATA           Y   COPY public.enrollments (id, student_id, course_id, enrollment_date, status) FROM stdin;
    public               td_lms_user    false    221   a�       �          0    16428    otps 
   TABLE DATA           9   COPY public.otps (id, email, otp, expiresat) FROM stdin;
    public               td_lms_user    false    223   ��       �          0    16635    payments 
   TABLE DATA             COPY public.payments (payment_id, payment_reference, payment_amount, payment_currency, payment_status, payment_method, payment_gateway, course_id, user_id, gateway_transaction_id, ip_address, payment_email, payment_phone_number, created_at, updated_at, payment_proof_url) FROM stdin;
    public               td_lms_user    false    236   ^�       �          0    16500 	   questions 
   TABLE DATA           �   COPY public.questions (id, question_type, question_text, correct_answer, max_score, options, created_at, updated_at, course_id) FROM stdin;
    public               td_lms_user    false    228   E�       �          0    16541    ratings 
   TABLE DATA           Y   COPY public.ratings (id, user_id, course_id, rating, created_at, updated_at) FROM stdin;
    public               td_lms_user    false    230   ��       �          0    16440    users 
   TABLE DATA              COPY public.users (id, name, email, password, role, qualification, is_verified, createdat, updatedat, reset_token) FROM stdin;
    public               td_lms_user    false    225   ;�       �           0    0    answers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.answers_id_seq', 52, true);
          public               td_lms_user    false    233            �           0    0    assessments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.assessments_id_seq', 11, true);
          public               td_lms_user    false    216            �           0    0    comments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comments_id_seq', 6, true);
          public               td_lms_user    false    231            �           0    0    course_materials_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.course_materials_id_seq', 66, true);
          public               td_lms_user    false    218            �           0    0    courses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courses_id_seq', 28, true);
          public               td_lms_user    false    220            �           0    0    enrollments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.enrollments_id_seq', 41, true);
          public               td_lms_user    false    222            �           0    0    otps_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.otps_id_seq', 17, true);
          public               td_lms_user    false    224            �           0    0    payments_payment_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.payments_payment_id_seq', 15, true);
          public               td_lms_user    false    235            �           0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 48, true);
          public               td_lms_user    false    227            �           0    0    ratings_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ratings_id_seq', 5, true);
          public               td_lms_user    false    229            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 34, true);
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
       public                 td_lms_user    false    223                       2606    16648 '   payments payments_payment_reference_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_payment_reference_key UNIQUE (payment_reference);
 Q   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_payment_reference_key;
       public                 td_lms_user    false    236                       2606    16646    payments payments_pkey 
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
       public                 td_lms_user    false    215                        1259    16659    idx_payment_reference    INDEX     W   CREATE INDEX idx_payment_reference ON public.payments USING btree (payment_reference);
 )   DROP INDEX public.idx_payment_reference;
       public                 td_lms_user    false    236                       1259    16661    idx_payment_relationships    INDEX     \   CREATE INDEX idx_payment_relationships ON public.payments USING btree (user_id, course_id);
 -   DROP INDEX public.idx_payment_relationships;
       public                 td_lms_user    false    236    236                       1259    16660    idx_payment_status    INDEX     Q   CREATE INDEX idx_payment_status ON public.payments USING btree (payment_status);
 &   DROP INDEX public.idx_payment_status;
       public                 td_lms_user    false    236            �           1259    16517    idx_questions_question_type    INDEX     Z   CREATE INDEX idx_questions_question_type ON public.questions USING btree (question_type);
 /   DROP INDEX public.idx_questions_question_type;
       public                 td_lms_user    false    228                       2620    16475 '   assessments update_assessment_timestamp    TRIGGER     �   CREATE TRIGGER update_assessment_timestamp BEFORE UPDATE ON public.assessments FOR EACH ROW EXECUTE FUNCTION public.update_timestamp();
 @   DROP TRIGGER update_assessment_timestamp ON public.assessments;
       public               td_lms_user    false    248    215                       2620    16663    payments update_payment_modtime    TRIGGER     �   CREATE TRIGGER update_payment_modtime BEFORE UPDATE ON public.payments FOR EACH ROW EXECUTE FUNCTION public.update_modified_column();
 8   DROP TRIGGER update_payment_modtime ON public.payments;
       public               td_lms_user    false    250    236                       2620    16476    users update_updatedat    TRIGGER     ~   CREATE TRIGGER update_updatedat BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();
 /   DROP TRIGGER update_updatedat ON public.users;
       public               td_lms_user    false    249    225                       2606    16610    answers answers_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_course_id_fkey;
       public               td_lms_user    false    219    234    3301                       2606    16605     answers answers_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_question_id_fkey;
       public               td_lms_user    false    228    3314    234                       2606    16600    answers answers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_user_id_fkey;
       public               td_lms_user    false    3311    234    225                       2606    16577     comments comments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_course_id_fkey;
       public               td_lms_user    false    232    219    3301                       2606    16572    comments comments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_user_id_fkey;
       public               td_lms_user    false    3311    225    232                       2606    16477 0   course_materials course_materials_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_materials
    ADD CONSTRAINT course_materials_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.course_materials DROP CONSTRAINT course_materials_course_id_fkey;
       public               td_lms_user    false    219    3301    217                       2606    16482 &   enrollments enrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_course_id_fkey;
       public               td_lms_user    false    219    221    3301            	           2606    16487 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public               td_lms_user    false    221    225    3311            
           2606    16582    questions fk_course    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.questions DROP CONSTRAINT fk_course;
       public               td_lms_user    false    3301    219    228                       2606    16654    payments fk_course    FK CONSTRAINT     u   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES public.courses(id);
 <   ALTER TABLE ONLY public.payments DROP CONSTRAINT fk_course;
       public               td_lms_user    false    219    3301    236                       2606    16649    payments fk_user    FK CONSTRAINT     o   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 :   ALTER TABLE ONLY public.payments DROP CONSTRAINT fk_user;
       public               td_lms_user    false    3311    236    225                       2606    16557    ratings ratings_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_course_id_fkey;
       public               td_lms_user    false    3301    230    219                       2606    16552    ratings ratings_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_user_id_fkey;
       public               td_lms_user    false    3311    225    230            ,           826    16391     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     R   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO td_lms_user;
                        postgres    false            .           826    16393    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     N   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO td_lms_user;
                        postgres    false            -           826    16392     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     R   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO td_lms_user;
                        postgres    false            +           826    16390    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO td_lms_user;
                        postgres    false            �   �  x�Ֆ]o�0��ï��.(�?I@��B�6m�Uiw1!U&1$[��m����4���&Ed�y�sr �E�F^�u��AP�ǹl������"H����Kd_���rɓ`�BJ!L-�Dԉ����nR���q���
-7�H62o�����O�ҼLX���e!jp.r�3Y�4�����R�R���~� 7gj������G��\-ⴔ�\eB�E��R(e�6J -Aa9@�"�AVjQ�؆�M�So��������oBlH%M]:��a�Y�� ���\ا��~�?��q�:��Fo��o�������x9���^��������|<yyIz}�ԅɯ�6��+�,��g�u�~X�?=˦7|
|�� :�l��Oςw-�,I�4�$����d��ɇ�I�L�&/!$���?9�l�f�vH��!��ϐ
��B&"�ż\suu��Od|�I�U���ꢫ�Ue��z�@�ߪ��W�/���ow��v�ַ�*S����������u1���7���S�k�5K��)�ua�6{��BF���)�����#���9r�}̴�O�l������0�9v�Ėɜz��;���:�d�9��LS5{��g�#l�i�3��>���c��Z��YڛY&u¼���%�]��גA��;aZK�,1tHĖ��;s�����*K�      �   M   x�34�42�)�L�Qp,.N-.�M�+Q0�&dd`d�k`�kl�```Fp1Cs+c+Cs=3s3<R\1z\\\ �O�      �   �   x�]�=nA���)�y����P@��iҬ`$�V;�Br�� W��$�H.��=?g�a1��]�u{�Oua�X��L�R�M�9J���u���#��T��i8����(��X}d�=�l�:�qw+������R*�I�| b�?�=���+����|H)�]J)�a6�~�����x)��W�;_;�im�7��;.�}D&�c�W _�ZG]      �   �  x���]o�0��ɯ�=�`cp@��5��I�-]�I�"���I��g�W�TZ�I�@����&F�@�`3n͵�T캒+��e�f��5L��M��y�<���-u�*/Y�6�?"a��\�\�|��f�r��'ySN*4]�"]�y�T3˃�ga�G/�>�	��ju�{���[�Z����l��� ���5���2����w��U�WcV�row�y>��d1��3����4����mk��8V�9:/}�����D�}���I]p�{$��o�X ��`��t��lnr���z��\.Ậu=���d~�\}f�+6��<��6c�>��	���?#gX�٫����(��5/58
Ə|��gf�r��H�����@
����X���*�z�oI�uXD��Y5��xL��8@�O`���9�-�P�D�(��8�}� Y&21�R����Iۭ���i�[m{l���N�6��V�>�â"'��{$F�}���V����^��Q��wBK^I.x-�<��M�2���e�sp[&ښl9E;�I�h�?VBs�7�Nc�aH=ӭ�9�,j�/��9�n��ͳ��x�cAP�G/��e�/���-�����W�x�[L65�~�<n/bti�9�M���T���m��_Ј� �q���n�M�u��P�趣3����=و���M	̷��-�ͭ/���u������=����K� ���+��R�yz�y��`���^�/r��      �   �  x����n�0E��W̾�ć�v� Z�������EX"�r�~}i�v��p\������/(��U��/,�ha$��)%����;�*�Æ���L��"�d��:�+צO6��ģi�����8tF6.�]*��p�)�f4��/3^�4Y���Zh����c++E2B#>'��yӣ�5ڽ��	O��Qv�pN9/�'�Z����>%�_I�Q5cAj��q���P�]!xք�d��'N�����F\��"j�Gaq`��(�	 �M�LYX1��<K���ֲ�;���3�Y{k��>(o�L�;y8�l�Uj����s���a�? �Xm��L6'����shC�U�܍<���p��DO�=F��D TČ��]-[ez	�J��ѻs4� �^Z��5��v��juh_J�y�N.��:ݢ�K]cs��c���СIv�f�X)�2+�<+��J��10�}��(�	ɪT�      �   6   x�31��4��4202�5 !K+SS+c#=C33#sβԢ̴���=... �
J      �   �  x�m�͎� �3<ż�"l>��9V��M�IB�DUۧ/S�f�G�d���}�I�u�y}��4%��>�_�izAH\�5�yJq9�7����"}@
`�7��b��8��<^ogD��4 �VsǺ�-qH�Xn�s���`=�,y�e��{ٶ45P������:�dC��p���A�M����u90��{��0�����.��M� �b�p���g��Z������1.Kk���-�W�'Q�#��E����m`,�>d���A>��l�iڏ��ݙF$8�� e����4ʼ�m#�sm�5蚜��*�5vSi�P�"���A�����\渕�=-=���)('��Y_�)/{~�iN�@�2�
��v¸zĎ2�..��h�̋�jt$����q���o�^A�XZ	������+�      �   �   x�}O�j�@�W_��&�j�{�JL �H�&�fe�X>	I���ϩKXfv��
>^?3o��+A�^���m�8����am����OA�â@I��
-Q(�V��&rB)�2:���o��yz�<�x�@�l�II�$UF;Rr�RU�N;�?��oۼVy����ތ������0�|�m���7ξ�q�ۚ��h$"҃8���I��mI�      �   S	  x��Y�o�8���D�l���\r�E�n��6MѤ����-�6�4�����������d�r�������-J�{3�f4>,�e��/���T~�sϸ��[�K�27Zh2�[1�ɕ`��I-�c�����z0����^��_��{ng³%��v7�KWǿ'l��&,�zƜ�܋٦��M{��Rd��'f%ڋ�ۋ�I�u*�b�5���F;־������NF�/O�7b��W�;������/�tr���������/:�y�3:����'���K�f�Bf"^�]��T:�1a�T�a��r��g�_�*��\��V��2y�7�Sc�Jp�w��p��m!�e�rbp��]��'����L�q��]aw�9���Nk+����Z��b�������D�\Λ���P<pa.sv�5�w�{���+&2�J_�d�H��(<]a���1�:=��)����pk��,-7�9w�V8l��Mr�	i��� j8f�NO_�.p��������WO��Nw����=�_����;������۟����7ҺE���/`�x�?� &�*��[cV~�����B˯��+|�ٹq���^|��ӷ�Vo���x��M�	YKc�^���LN��l<�n��ԚeH�H`�X���%�N����b*�AA�����4�͊F'g�7�p[�(nO6y��w�A��p���X>�QŘ�1��tNg*�Vw)�\K��|�D}�7�v8x{H �蝃�Q�V&�|���"Q� �R���ǜ�"�Tf�/B�Bt��$��`:�[/��>�6��Q?�	r�X�)|0�)2��4I��?���k�?�{�6I/�o���#v���>��5��m"�w�xB�DGxX�HТ���V$%�G�T�/ُ!p�� �H�(Z�/A��gQ�"G��~%�&^�3�%S�x�~ml�˓e���ra�QDJ��K-J9����ܠy��m�³���)�
*(a
~?�!#~��t�����p�w+\��_���y�T��ȸ�;�ެC����>��vn���|��e�eZ|�d/��Tq+���v��].m��ez6�P28�ϖ<b��s)�6��������).���:�Q�9OTn����jɻF��9�a�W �]��O?�pTU�.�vMd�\wAʹJ"[
=W��P͟WA<N��@y�`�b���uO�v̈́;�A�o�.��sR�a����ۃj�'9�����E�+e�.*)���w[z�Z�,�����|8����D�ICVQ�36�%�2������K�+�fA2�$@M���]�*Ա��R���z�]_��yW�������?>7x�#m��r�A+ak��]a=�����v8I�O�7���2�~'	Es&��+H	�+���_���&{;�h&�¸��P�ab:��$��,����SY#�o�8��x�KY�A3m,�v}X�m�ڃ�o���7��?A�N��];?�'o�����ɦ&���NS��}��}��"�S�ա(�������<a`q6~5:�]�.F��8�s����ZU����j�!�-�R$9B쐉Ƨ-ּٰ���8�8+h�*d�����A�Y���:V�0�}�|�6m%섨��h�_�_w��i�CK�$Q��M��a%߉�p}��bw��菑�E�9t�H�s| �L��.��BZ�I�(- C(�\R�N*E�n{5.5tǲ�S�"�8@i���"���*]h�V"+)1�P%;�EW��-�w�R����B8Εqi'�54cU�Aj�څ
F=Њµ��!�)��[,��Y(D��#�hr����I����{<�WFf���sWV?��]n��T�菕ؗh��]m��n!W�u i�&���� 1:�<RC�%�m*�@ϙ�	��A�������!�*���u��zv�D(��'�@�ֈE<#�B^���%� w�8mh��i��	b���i�fgP����ue~P?�7Gi+o�\�n+��b�Ƹ�ϓ�}�QIg�~t��YW�*�I����J�!�B��K=/1��D��k���� =����ScPRV�W�y
�b*�@a�
�S�؍d�zOi@c��S�p�"�>����wd*���t�A%C�ʛS���$�1��>)�"�������O�-��'r~�\E����Q���`�����ןo���C��RU�<�_���3�A�)�:�k.�ò
.Jц�v�t�,\��3����t�0O/��4�˪iv�V��q���I��\�qBս|e�g�g�����DU�"��Q��ږ^�W&|{R�怅���hL������FE��یR�<6ٴ�������V�qQdƓ��N�Ή�N����A������?b¸y      �   �   x�}��1�7T�6;$�Z��:n�sZ�#��eq�C\6.X�Y���|�)e
�]g�]Ë�s$}H��S���b�m����,Y�}qE@o�`��kf5X��4���;���`wb1����_˚:j      �   z  x�ŗَ�H����@���" X|U�{z�+��=&�b6��0�w� �z����鞑B�1��O���0�$�8g�o��9%��F��c1�!��φ�-�Wݽ��G&s5�#�<��X9���L`��lJ��l{�TqKz�"+�E�1���	�i�q�'���S�}�"�;<���;�I��1�����sI���ʜ��/�0�_E��*K���9�V�:ɱ�H\�|�ڔ��RS�vC�K���/�ӥġ�����W����)
�=������&�5�$Ws/^ط���!m�����~F*Rᖧ�:ޭ�ҭIH*���%I��HV����O���91P�� ~���bG;twȊ���:��i�,����Ę��R���\�N�σ�^[A���a,71'pX�y"�~>а�U��v����%n��(�7�_�YAk�D�>A ?�(z=A�V3/����N�;এ3���f��-Q��7W�j7�LbJ��MV�9���z��u��	�$ �D�d��a�$�U���}���b_s�*��O�qz�JI�؃�����:�����	��'�[��(} Ԏ@��AQ�Df�SZ�8f�o�����r��q�-�v�<���X��tY&����W� D#��43�.����k�hu!�ST��D�T���I�Y�����������w�v�/�iiA�,�M�����TUጌ�L�"S�k3k�{)�LiPR(Qc�8����$#,�~�i��{̄��Ex���qs����\n�Xh�q�d�{�*+ֱV��g��
��	&9�:	�$

f�m��zq������s����$�����n��B��^�D�u~����粪�
y�?ᄈSUI�GR�	��;��X��#L\r����W�ai�:����"�z����xk�[�,�sب����rn�џ��5E$���2��	��<g��;Ԍ].H������y�GQ���p��[!���yӯ"�*"Ω���@A;a��GMw�U� ���$�wY�^jQEfj̺�1���9鳌�+�����~P��yp���,�����1��5`.�)��uq����m%Kr4���Jr
\k� =�Z��O}rN��5��>	s:ɐ\E�����w#m*#��4��6IN�f�p�3��dV��͡FR�+��D�O%U�v)��:��)���
�S�D�6���k$z�%��s}�v�F���!���#���.
��n�[4yz���_2�b��)�֍�����"@�$q�$"��P���;��j�q� 7?�$s���|c��1<t˦:��ڞ��ݾ�)���1�u��f*�a�������F��2N�YB?�*��8�V����I���|��en/��Vg�jf��ؐ�%��W�/��C}$N�C��x)�ޝ�/@iS	��!(A >�(L?���?�K�KN�4�ݟ��n�5ܓ��=_��y�D~����&-�k��,Y��fdB��s�Ur0��l+m���(�#�ń�`��;��.�k�3$���� ox��s]�z�_O��1P���*חC&�G�d1}DI������RdF�Ψ_�τ�%����;��V�S����sS�@D_7�FR�6ko	���֕������ۡ�}�H7��DA������""��-�y3��Ͻӈ&V�̈�۩7Y����NJCN�c}m���nk��3n=r,}Lٞb��NB��#��RK�1F�m�	�u�v�"�vប��]�r;�+a�?snBڂ�Zi;˩G���%vM����n�|Ñ:P� ȩ}	C�$J*Bf�%�����H�H�go�Q����Ę�emK&�n�a��]�j7��v�r���j�d� ��^�L�4=P(�oܧO�����     