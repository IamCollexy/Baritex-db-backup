PGDMP                      }            tenderdexta    16.8 (Debian 16.8-1.pgdg120+1)    17.2 D    p           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            r           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            s           1262    16389    tenderdexta    DATABASE     v   CREATE DATABASE tenderdexta WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE tenderdexta;
                     tenderdexta_user    false            t           0    0    tenderdexta    DATABASE PROPERTIES     4   ALTER DATABASE tenderdexta SET "TimeZone" TO 'utc';
                          tenderdexta_user    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     tenderdexta_user    false            �            1255    16472    update_timestamp()    FUNCTION     �   CREATE FUNCTION public.update_timestamp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$;
 )   DROP FUNCTION public.update_timestamp();
       public               tenderdexta_user    false    5            �            1255    16504    update_updatedat_column()    FUNCTION     �   CREATE FUNCTION public.update_updatedat_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  NEW.updatedat = CURRENT_TIMESTAMP;
  RETURN NEW;
END;
$$;
 0   DROP FUNCTION public.update_updatedat_column();
       public               tenderdexta_user    false    5            �            1259    16462    assessments    TABLE     T  CREATE TABLE public.assessments (
    id integer NOT NULL,
    course_id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    deadline timestamp without time zone,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.assessments;
       public         heap r       tenderdexta_user    false    5            �            1259    16461    assessments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.assessments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.assessments_id_seq;
       public               tenderdexta_user    false    5    226            u           0    0    assessments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.assessments_id_seq OWNED BY public.assessments.id;
          public               tenderdexta_user    false    225            �            1259    16411    course_materials    TABLE     8  CREATE TABLE public.course_materials (
    id integer NOT NULL,
    course_id integer NOT NULL,
    material_name character varying(255) NOT NULL,
    material_link text NOT NULL,
    price numeric(10,2) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    file_type character varying(255)
);
 $   DROP TABLE public.course_materials;
       public         heap r       tenderdexta_user    false    5            �            1259    16410    course_materials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.course_materials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.course_materials_id_seq;
       public               tenderdexta_user    false    5    218            v           0    0    course_materials_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.course_materials_id_seq OWNED BY public.course_materials.id;
          public               tenderdexta_user    false    217            �            1259    16400    courses    TABLE     G  CREATE TABLE public.courses (
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
       public         heap r       tenderdexta_user    false    5            �            1259    16399    courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public               tenderdexta_user    false    5    216            w           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public               tenderdexta_user    false    215            �            1259    16485    enrollments    TABLE     �   CREATE TABLE public.enrollments (
    id integer NOT NULL,
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    enrollment_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.enrollments;
       public         heap r       tenderdexta_user    false    5            �            1259    16484    enrollments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.enrollments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.enrollments_id_seq;
       public               tenderdexta_user    false    228    5            x           0    0    enrollments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.enrollments_id_seq OWNED BY public.enrollments.id;
          public               tenderdexta_user    false    227            �            1259    16443    otps    TABLE     �   CREATE TABLE public.otps (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    otp character varying(6) NOT NULL,
    expiresat timestamp without time zone NOT NULL
);
    DROP TABLE public.otps;
       public         heap r       tenderdexta_user    false    5            �            1259    16442    otps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.otps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.otps_id_seq;
       public               tenderdexta_user    false    5    222            y           0    0    otps_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.otps_id_seq OWNED BY public.otps.id;
          public               tenderdexta_user    false    221            �            1259    16450 	   questions    TABLE     �  CREATE TABLE public.questions (
    id integer NOT NULL,
    assessment_id integer NOT NULL,
    question_type character varying(50) NOT NULL,
    question_text text NOT NULL,
    correct_answer character varying(2500),
    max_score integer NOT NULL,
    options jsonb,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.questions;
       public         heap r       tenderdexta_user    false    5            �            1259    16449    questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.questions_id_seq;
       public               tenderdexta_user    false    5    224            z           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
          public               tenderdexta_user    false    223            �            1259    16426    users    TABLE       CREATE TABLE public.users (
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
       public         heap r       tenderdexta_user    false    5            �            1259    16425    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               tenderdexta_user    false    5    220            {           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               tenderdexta_user    false    219            �           2604    16465    assessments id    DEFAULT     p   ALTER TABLE ONLY public.assessments ALTER COLUMN id SET DEFAULT nextval('public.assessments_id_seq'::regclass);
 =   ALTER TABLE public.assessments ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    226    225    226            �           2604    16414    course_materials id    DEFAULT     z   ALTER TABLE ONLY public.course_materials ALTER COLUMN id SET DEFAULT nextval('public.course_materials_id_seq'::regclass);
 B   ALTER TABLE public.course_materials ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    218    217    218            �           2604    16403 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    216    215    216            �           2604    16488    enrollments id    DEFAULT     p   ALTER TABLE ONLY public.enrollments ALTER COLUMN id SET DEFAULT nextval('public.enrollments_id_seq'::regclass);
 =   ALTER TABLE public.enrollments ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    228    227    228            �           2604    16446    otps id    DEFAULT     b   ALTER TABLE ONLY public.otps ALTER COLUMN id SET DEFAULT nextval('public.otps_id_seq'::regclass);
 6   ALTER TABLE public.otps ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    221    222    222            �           2604    16453    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    224    223    224            �           2604    16429    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    220    219    220            k          0    16462    assessments 
   TABLE DATA           j   COPY public.assessments (id, course_id, title, description, deadline, created_at, updated_at) FROM stdin;
    public               tenderdexta_user    false    226   �U       c          0    16411    course_materials 
   TABLE DATA           u   COPY public.course_materials (id, course_id, material_name, material_link, price, created_at, file_type) FROM stdin;
    public               tenderdexta_user    false    218   �U       a          0    16400    courses 
   TABLE DATA           �   COPY public.courses (id, title, description, instructor_id, price, duration, category, course_level, thumbnail_image, total_lesson, created_at, updated_at, creator, rating) FROM stdin;
    public               tenderdexta_user    false    216   �W       m          0    16485    enrollments 
   TABLE DATA           Q   COPY public.enrollments (id, student_id, course_id, enrollment_date) FROM stdin;
    public               tenderdexta_user    false    228   �X       g          0    16443    otps 
   TABLE DATA           9   COPY public.otps (id, email, otp, expiresat) FROM stdin;
    public               tenderdexta_user    false    222   *Y       i          0    16450 	   questions 
   TABLE DATA           �   COPY public.questions (id, assessment_id, question_type, question_text, correct_answer, max_score, options, created_at, updated_at) FROM stdin;
    public               tenderdexta_user    false    224   Z       e          0    16426    users 
   TABLE DATA           �   COPY public.users (id, name, email, password, role, qualification, is_verified, createdat, updatedat, reset_token, total_enrollment) FROM stdin;
    public               tenderdexta_user    false    220   �\       |           0    0    assessments_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.assessments_id_seq', 9, true);
          public               tenderdexta_user    false    225            }           0    0    course_materials_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.course_materials_id_seq', 53, true);
          public               tenderdexta_user    false    217            ~           0    0    courses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courses_id_seq', 25, true);
          public               tenderdexta_user    false    215                       0    0    enrollments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.enrollments_id_seq', 16, true);
          public               tenderdexta_user    false    227            �           0    0    otps_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.otps_id_seq', 12, true);
          public               tenderdexta_user    false    221            �           0    0    questions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.questions_id_seq', 8, true);
          public               tenderdexta_user    false    223            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 18, true);
          public               tenderdexta_user    false    219            �           2606    16471    assessments assessments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.assessments
    ADD CONSTRAINT assessments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.assessments DROP CONSTRAINT assessments_pkey;
       public                 tenderdexta_user    false    226            �           2606    16419 &   course_materials course_materials_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.course_materials
    ADD CONSTRAINT course_materials_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.course_materials DROP CONSTRAINT course_materials_pkey;
       public                 tenderdexta_user    false    218            �           2606    16409    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public                 tenderdexta_user    false    216            �           2606    16491    enrollments enrollments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
       public                 tenderdexta_user    false    228            �           2606    16493 0   enrollments enrollments_student_id_course_id_key 
   CONSTRAINT     |   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_course_id_key UNIQUE (student_id, course_id);
 Z   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_course_id_key;
       public                 tenderdexta_user    false    228    228            �           2606    16448    otps otps_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.otps
    ADD CONSTRAINT otps_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.otps DROP CONSTRAINT otps_pkey;
       public                 tenderdexta_user    false    222            �           2606    16459    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public                 tenderdexta_user    false    224            �           2606    16439    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 tenderdexta_user    false    220            �           2606    16437    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 tenderdexta_user    false    220            �           2620    16473 '   assessments update_assessment_timestamp    TRIGGER     �   CREATE TRIGGER update_assessment_timestamp BEFORE UPDATE ON public.assessments FOR EACH ROW EXECUTE FUNCTION public.update_timestamp();
 @   DROP TRIGGER update_assessment_timestamp ON public.assessments;
       public               tenderdexta_user    false    226    229            �           2620    16506    users update_updatedat    TRIGGER     ~   CREATE TRIGGER update_updatedat BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.update_updatedat_column();
 /   DROP TRIGGER update_updatedat ON public.users;
       public               tenderdexta_user    false    230    220            �           2606    16420 0   course_materials course_materials_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_materials
    ADD CONSTRAINT course_materials_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.course_materials DROP CONSTRAINT course_materials_course_id_fkey;
       public               tenderdexta_user    false    3259    218    216            �           2606    16499 &   enrollments enrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_course_id_fkey;
       public               tenderdexta_user    false    3259    228    216            �           2606    16494 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public               tenderdexta_user    false    228    3265    220                       826    16391     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     W   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO tenderdexta_user;
                        postgres    false                       826    16393    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     S   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO tenderdexta_user;
                        postgres    false                       826    16392     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     W   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO tenderdexta_user;
                        postgres    false                       826    16390    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO tenderdexta_user;
                        postgres    false            k      x������ � �      c   �  x���Mo�0 ���[ۘ�pk��Cڦ���ä��Na��&M��H�fm�n\H�}�)`1�a=���*cU�:�����byJ�ˢhCH�ע�[��Q�.tm�ZE^�R�+��"�L��tѲThHE�����aIHxH9�,�I3��	OS u�5��AB�^v�j�s�����W��]?�M��
�Z>�����4�OR2�����Ԑ�t�J�蔇�<4��_��e|��$������p&�����>�0V��Zܩ���/9�]�}��(���� 8-�u���拋�7h��>4��{�����T:Hb��]�C\�ޫ�Wl��UՈ۱3�;�-P�2�q<��M�P03ۼ����֝�Za�C��7e�Xv.�F��hKSO9�,~bɞu�sѶ�WE��kC7�����o��G&�/�O1e����KN�a��� a+�v�3Rx%_�����v��A��pz      a   U  x����o�0����}�����l�K����.�-)E�����LM�xk����=��ءQ���f�`�%�"�W�p�����P�\?daXS�B����_PpR�.�U�������طFVCx.Ez�Eq��3&0�Y�3*H�	Oo�M�4�P���g�����)��38g:�x�<'y�R�-t��9��O�ރ�+8�u�g��3���V`��J:�[n���n&l���D,)a\pvӕ7�t�evF���G譓��'OzF����Y�|{&N �`@�Qӕ,���%Tw�]I�e���Lz��-�,J�8%I�Σ�S��/Z�$�o8��U      m   /   x�34�4�42�4202�50�54Q04�21�26�312�������� �4�      g   E  x�m�Kn� �5�"b�7����d��&�V���u*5!m�Y�7�f I_�)/k>_ҜN����2aA䨎\A �B/�h
@ư,a�RM�.Լ���N�ԁ���G`��
��-�[8ݒ>&�$=L��@^���4�mGt����3h�$�p�S
�8��6��w�ŜrԐ��9E��� �?J��PKjɾ�b��2�~���D�@;�H�9��Ԛ��ކ��PȟD�$�����g��I�^��}9ݼQ(��V�W%��*KI�iZ�R�jU����;S��`�!U��s�C-]{k�x0ƫ�$��+��~����      i     x��TAn�0<S�X���,۲/E��	�C[4��XS�@.�E�޵�&��ho��hg8i,&���tg�^5N+yw�V�tPh�Р|�fڮMD�0 5k�J�v����][qC>*�����)�wJ�.p:��(��]��x�\��ޞ�v���NY���oN9���(���bX^�#ȫ����y6��t�%1[����K���]#	t��JO�Β�Σ���q�	�\_~�����I�
���I��WH�:Tz�� Z�!z�48���ǳG�GK<�+ ݢ�e�_a۽)�vR�:���2~�! [� i[�/	k�a �w�P�V�آ���{@/��ڻ-5X��1 h�c�5a�"��܆��'�_B�5l�Dւ�m���Dm�.;+JoEz��ۊ�:����l^�YY�Y�%SQ��ÿQ�"���,��@I%f/����zG�p�Dr��h6��-����1\;KM8��aܛ��U�Y嫤�\~��k>�p>ʳ�,�����'�|ɒ$�	�H      e   r  x���[��H �g�+��<&@�ŧ(�hf��:����n�r��_&Nv'1c^��U]��c�gs8} c$QМqϯ�!%1���(�87���"z��sk]LN��'�LgZJ�Ay������<�X2���eMZ���"+�"ɘ���Ai.*���������(Ҽ���97JJP�5O��1���/s>C'�L�a��,*�"��/�$ä.�8q˘�"���S[b�'N����!�R��y��K�gºI�����{R$������Z�mBOQ,{�w��Щ[ %��Z��t�+�C��T��{��^�-ID*Dv��I�Ɋ�H~��wfψ���{QdE�'I���:PT�����+����'�[od��]-�������m���ì���RN��4��2?��2��J�ޚ@q��E�����Mb��&�����k�3~y�H�0�-�/t�nv��,X%`���I�&���g�_m&����@,�{��@�$������p�*P��:��`��k�w�͸����.�ŶfvU��É�iz�KY�:�ថ��2��u~׆�r#���k~����ZO��A�T�Z�T��v��(�>�`�����Nr�<9�Þ����$N���~��bF�d�n%'3�+���VWiP�TM�Z�L����s'`\�)�'�l�e�I�c~���(?�Ԇ~y�� �*�'3��i>S���ڟ�3{k\sJ�~�P!T�d�J�� J��HFX�����b�\JqG�Q�L��N�C�*W��u���db<��MH���_��D
$N�z�Rg+�%r���3Y��H��K�;�,�K�hh?�a{���M�Z�F	��Qy+��)�����P�	U���Ɋ�]K=S�m(E�>�8_��#���X��Bޭc��F���cA+#�a�s���E`�2��L�՜`�i����h��Q��$]K=kEf�q@��s�� w}���$�Ht���-�3� ��`gu!����jX�dQ��<��"T�F=�ms]���ܵvY�.��e�Y+1w���=��þ5�FU��v@ͥ6��n5O�XE?v��r�P�����i���v����!���^��JO����Գ�eH	=���(�F�k���xw��)���
BJg�C��}{k�;�J�*���k��T�OT���PRw�ʚ��Q��&	b�Q�	�>��M��53�����$;�~h��C����H��rf:��Wtq4X7^��E�1,�_23u�(?��x�L�����B�]s�A�d	j�W��a��,��t�HA� ��$�i�r�u5��eی��X:�Y���We:ܷ󮍥�e���n�G���M�~/=�cNPE�߈�^��aET��Oܛ7o����I     