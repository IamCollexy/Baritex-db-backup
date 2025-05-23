PGDMP  6    "                 }            td_lms    16.8 (Debian 16.8-1.pgdg120+1)    17.2 Z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public               td_lms_user    false    5            �            1259    16400    assessments    TABLE     T  CREATE TABLE public.assessments (
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
       public               td_lms_user    false    232    5            �           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
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
          public               td_lms_user    false    218            �            1259    16415    courses    TABLE     G  CREATE TABLE public.courses (
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
    rating integer
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
       public               td_lms_user    false    223    5            �           0    0    otps_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.otps_id_seq OWNED BY public.otps.id;
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
          public               td_lms_user    false    229            �            1259    16440    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(50) DEFAULT 'student'::character varying,
    qualification jsonb,
    is_verified boolean DEFAULT false,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    reset_token character varying(255),
    total_enrollment integer
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
          public               td_lms_user    false    226            �           2604    16492    assessments id    DEFAULT     p   ALTER TABLE ONLY public.assessments ALTER COLUMN id SET DEFAULT nextval('public.assessments_id_seq'::regclass);
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
       public               td_lms_user    false    227    228    228            �           2604    16544 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    229    230    230            �           2604    16498    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               td_lms_user    false    226    225            }          0    16400    assessments 
   TABLE DATA           j   COPY public.assessments (id, course_id, title, description, deadline, created_at, updated_at) FROM stdin;
    public               td_lms_user    false    215   �o       �          0    16563    comments 
   TABLE DATA           O   COPY public.comments (id, user_id, course_id, comment, created_at) FROM stdin;
    public               td_lms_user    false    232   Yp                 0    16408    course_materials 
   TABLE DATA           u   COPY public.course_materials (id, course_id, material_name, material_link, price, created_at, file_type) FROM stdin;
    public               td_lms_user    false    217   q       �          0    16415    courses 
   TABLE DATA           �   COPY public.courses (id, title, description, instructor_id, price, duration, category, course_level, thumbnail_image, total_lesson, created_at, updated_at, creator, rating) FROM stdin;
    public               td_lms_user    false    219   's       �          0    16423    enrollments 
   TABLE DATA           Q   COPY public.enrollments (id, student_id, course_id, enrollment_date) FROM stdin;
    public               td_lms_user    false    221   �t       �          0    16428    otps 
   TABLE DATA           9   COPY public.otps (id, email, otp, expiresat) FROM stdin;
    public               td_lms_user    false    223   �t       �          0    16500 	   questions 
   TABLE DATA           �   COPY public.questions (id, question_type, question_text, correct_answer, max_score, options, created_at, updated_at, course_id) FROM stdin;
    public               td_lms_user    false    228   Lv       �          0    16541    ratings 
   TABLE DATA           Y   COPY public.ratings (id, user_id, course_id, rating, created_at, updated_at) FROM stdin;
    public               td_lms_user    false    230   �z       �          0    16440    users 
   TABLE DATA           �   COPY public.users (id, name, email, password, role, qualification, is_verified, createdat, updatedat, reset_token, total_enrollment) FROM stdin;
    public               td_lms_user    false    225   �z       �           0    0    assessments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.assessments_id_seq', 11, true);
          public               td_lms_user    false    216            �           0    0    comments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comments_id_seq', 4, true);
          public               td_lms_user    false    231            �           0    0    course_materials_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.course_materials_id_seq', 57, true);
          public               td_lms_user    false    218            �           0    0    courses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courses_id_seq', 25, true);
          public               td_lms_user    false    220            �           0    0    enrollments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.enrollments_id_seq', 17, true);
          public               td_lms_user    false    222            �           0    0    otps_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.otps_id_seq', 13, true);
          public               td_lms_user    false    224            �           0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 20, true);
          public               td_lms_user    false    227            �           0    0    ratings_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ratings_id_seq', 3, true);
          public               td_lms_user    false    229            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 19, true);
          public               td_lms_user    false    226            �           2606    16458    assessments assessments_pkey 
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
       public                 td_lms_user    false    230    230            �           2606    16472    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 td_lms_user    false    225            �           2606    16474    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 td_lms_user    false    225            �           1259    16515    idx_assessments_course_id    INDEX     V   CREATE INDEX idx_assessments_course_id ON public.assessments USING btree (course_id);
 -   DROP INDEX public.idx_assessments_course_id;
       public                 td_lms_user    false    215            �           1259    16517    idx_questions_question_type    INDEX     Z   CREATE INDEX idx_questions_question_type ON public.questions USING btree (question_type);
 /   DROP INDEX public.idx_questions_question_type;
       public                 td_lms_user    false    228            �           2620    16475 '   assessments update_assessment_timestamp    TRIGGER     �   CREATE TRIGGER update_assessment_timestamp BEFORE UPDATE ON public.assessments FOR EACH ROW EXECUTE FUNCTION public.update_timestamp();
 @   DROP TRIGGER update_assessment_timestamp ON public.assessments;
       public               td_lms_user    false    244    215            �           2620    16476    users update_updatedat    TRIGGER     ~   CREATE TRIGGER update_updatedat BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();
 /   DROP TRIGGER update_updatedat ON public.users;
       public               td_lms_user    false    245    225            �           2606    16577     comments comments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_course_id_fkey;
       public               td_lms_user    false    219    3280    232            �           2606    16572    comments comments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_user_id_fkey;
       public               td_lms_user    false    232    225    3290            �           2606    16477 0   course_materials course_materials_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_materials
    ADD CONSTRAINT course_materials_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.course_materials DROP CONSTRAINT course_materials_course_id_fkey;
       public               td_lms_user    false    219    3280    217            �           2606    16482 &   enrollments enrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_course_id_fkey;
       public               td_lms_user    false    219    3280    221            �           2606    16487 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public               td_lms_user    false    3290    225    221            �           2606    16582    questions fk_course    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.questions DROP CONSTRAINT fk_course;
       public               td_lms_user    false    219    3280    228            �           2606    16557    ratings ratings_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_course_id_fkey;
       public               td_lms_user    false    219    230    3280            �           2606    16552    ratings ratings_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_user_id_fkey;
       public               td_lms_user    false    230    225    3290            !           826    16391     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     R   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO td_lms_user;
                        postgres    false            #           826    16393    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     N   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO td_lms_user;
                        postgres    false            "           826    16392     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     R   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO td_lms_user;
                        postgres    false                        826    16390    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO td_lms_user;
                        postgres    false            }   M   x�34�42�)�L�Qp,.N-.�M�+Q0�&dd`d�k`�kl�```Fp1Cs+c+Cs=3s3<R\1z\\\ �O�      �   �   x�]�1�@��z�����,�˖Z�����I !� zO�=�AMH�ߗ�Y��:���v���d���]Nĉl*�!
�&e��I�.C/쫾���(��T�q�"�KǪ�(��'�������Ѡ������&07���+r�e�rA1z�g��~x2s         
  x���O��0���S�alcÂTU��*5jմ=U��lhf��?��$��f�����{?�<� ��E-;���A�A���E��VX��F�Fw��ε6��!1.d�)�|�����Ѫ�9htw�w2��6R٨8	�� ���J���\��)����!L����#�r���$%Y�}���qA/�F�Jn���՛�z��?�x�r��T�4�^���g�}� �|��m�j� W��z�I��p'��$�&����>����R��Fv��X=���i�m4�FG�hKSg�R��ԀuԳѶ~�RoM��Վ�jg�ǿ�3>�|1�y�)��	O�q���~������?+&��떟�&A��L�"���ۡx"��y�|��+�뱝^h��6�6�Gsv�y��>�ܔ/]e��y�L�Z?�'7�M��!���!���~�[%���o�q���0#]5����ΫC���kt�����n���/`�IW�?n?|�Z���H��x��<f8%	O_��_x2�����      �   U  x����o�0����}�����l�K����.�-)E�����LM�xk����=��ءQ���f�`�%�"�W�p�����P�\?daXS�B����_PpR�.�U�������طFVCx.Ez�Eq��3&0�Y�3*H�	Oo�M�4�P���g�����)��38g:�x�<'y�R�-t��9��O�ރ�+8�u�g��3���V`��J:�[n���n&l���D,)a\pvӕ7�t�evF���G譓��'OzF����Y�|{&N �`@�Qӕ,���%Tw�]I�e���Lz��-�,J�8%I�Σ�S��/Z�$�o8��U      �   A   x�Eʱ�0���F<<�b��?G�*WZZ"%<j;7�CLc�^��F��W`��n�n\}LU_��      �   _  x�m�Mn� ��p
_ ��Y�U7ؠ��6�mUmO_U5i+�r>� cX�0�iM�>�yO�y�XY/�He	rT'.O ;�G`��y�L�yybC������	]���AC%��k�RX�)�?�s�q��xP�)GYC��8�h�/���EI�`jI-�6��>�K�܀���f�u$�sY.쥬k�Pn��B����r�>�Q����� I�i����ͪ��Sܬy�:��C.sXK��ֈ�xUG2n�"�4�e˯�4�6Hm�rQ�~�TuV� *�����K��P�몈c����Ҫq������FP$����:VX| ��c
�>3J�Z�~      �   .  x��Wmo�H����_�"�y	|AI�J��^�DU��Z챽g{�ڗPt�t��~����\�BOB`v��y��yf��X�2+�?���D	�hAH�ZJ�l�p�!�T[36��0�}��m�mO��+Jg�h��*�N�_:���5�6ٶ8۶(O�68�6�r����m~n������7x����7폻=o��?y�s�~�78���X��?�@��B�y�K���EX6�$�-���F*��5Rq�e���+����b|���r�s��@eJ��Y�p;.4�l��&l؈�<�������O�RkQ~��,Q�{J|�$haЀ�U%,��.�xf��ه�Sޯ�}���P"#�-�<B��Z��L�Y�㾿��yU��+��K�97���͛�w��K�%�8iN���D���4�@E���zlJ������O{��h�'�\��[�A.�.H+�rJ���.N����kkR���*2�[d�����u�j,�#��'`�S�_��P%����c����U��r�CERpy�rBT���we+z��u���U���*��S�b�cg�
 <H��	��*r�$���A���B�!!<(��;}{�(�����L�2�N	��u�劚"�L��FG�֚k�Ij��hB�p:n,�s�̱��q����8c�iMߋF�g����kx���G;��Dc��'��p��U� ��'�u|��C
F5���4��6�(إK��\ú�K���D s26�P�K-Р���)�Zq�fM����ht%f�Us�����x��\�k]5��ŊB�r�#��J�E$�%?7N�E��]"�q��1�Gii��Њ�U��(�2�f!��D.[��3B�1D�NіRk���0h:��N}�$�ķ���	5>ͩ�Z-mҁ����+ES�X)VA�TJ�,=т~rTCag�|ABwUm~�	R��2X7�!L�0l�yBc�ƒ(�g�?o��k�&S<������M��e��՛�d�Ց�YE!��&�(��F��u�Qݠs�� �;cDG���������j��"N�      �   `   x�}ͻ�@ј��A�މ�Z��3����@B@��q.�|�Þ���z!�܂x�\^�c��݌��4~9e�-s��Q����=,K�9Џ��T#'      �   �  x���Y��H �g�W�TAq�4��:�x����FA�rɥ�1�}q������="*��4�H�0z�~�3���?�4���!�$���@x?3����s������TM�W�z�8=b��	L�Ȧ�y�?�ϒ*�)��`��N�d�Ͽ?�4}~��>t��(Ҽ���9'LJ��8�/��1���+s>�'�L���eU� ��z.�o$qʈ�E�׀H��$�K�JM�������O�ñġ�!�������}�EA���?���V~C�ħ0�\�=zY`� &��Z��t����Q��T8�)qC����nICZ�`W��$!�Ӭ�~���e� � � d���N{wȊ�m
u$��dYR%��]�$�l�m-5���I�m��
����rs��O�ٱ�4l{�Q�.�c�t���%i�)��W4��M���#�{�+}y��f����F$��p�Ǚ�J�r�!�zMUa�M�ڌ�S��R�܍�!��к��:P�E�v/u�Ɍ�e�4o˛qH{;��=\n�m-L����S<���I+%ql�{J�G�䬯�Il�$�[O)} Ԏ�.���*ڽ�U�0s����c&}	n�~o��x�q���>Ɵf�Q�΋��z���b��f�f&'#��o��V[iH�U�2���UF��$����ǹ�Yb�����7�v̏�~nA��&��c>�TU�ߌ�"�&Jw6̬�~�)���q@AH���*5f��{l�f�e�/o�6�ɭ4�!w��k7�qҐ�U���9OqJG��WYqkU~P��Я��@䴶� p/u��Yb�g�^D	��!�D�o��l|0.	¾��i���3�l����K�;M���]��TV{P!o!�*D��J���K�P�nh�	-<����:�wJ`�Å�[G�����SWz�ź��t���5��-g�F��-��SӍ~���#�(�K�h!3 ħl�9C�O�>�rA�e4��J��E��ᢷ3�s!���Ӫ_EtQD�\t�"P�F��Ǧ����:@j[�$�7{�:�����k͞l�k��,Cp��p}���r�[M�S/�͢�Jsj_��M��8���q�[��D��!~�����KG�^�E��$�$>����0oG��薼�<�d��Md�}j!���M��S�h��a�V��JW�9�h��F�u�w(�=p%Ux�(��:�P�e�>G"�N��kf��SIv�m�P���1�rH��rf����( *:�n����1(�dfj�Q���"�t&���ꯈ�m�$q�$"���*�>^��v)���C.��?�4_�κ�wݲ��d�/���l��2��Y��R�3�߉`���mn}U�ߊAGjY�dA��Wb�ӮvX����Wk� ;L���%��ȟY��Nknq�Y��&�6�x����x���I�kT������(���TBP�@����޽{���e     