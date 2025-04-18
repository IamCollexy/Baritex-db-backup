PGDMP  :                     }            tenderdexta    16.8 (Debian 16.8-1.pgdg120+1)    17.0 ;    b           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            c           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            d           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            e           1262    16389    tenderdexta    DATABASE     v   CREATE DATABASE tenderdexta WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE tenderdexta;
                     tenderdexta_user    false            f           0    0    tenderdexta    DATABASE PROPERTIES     4   ALTER DATABASE tenderdexta SET "TimeZone" TO 'utc';
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
       public               tenderdexta_user    false    5            �            1255    16440    update_updated_at_column()    FUNCTION     �   CREATE FUNCTION public.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$;
 1   DROP FUNCTION public.update_updated_at_column();
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
       public               tenderdexta_user    false    226    5            g           0    0    assessments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.assessments_id_seq OWNED BY public.assessments.id;
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
       public               tenderdexta_user    false    5    218            h           0    0    course_materials_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.course_materials_id_seq OWNED BY public.course_materials.id;
          public               tenderdexta_user    false    217            �            1259    16400    courses    TABLE     3  CREATE TABLE public.courses (
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
    creator character varying(255)
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
       public               tenderdexta_user    false    216    5            i           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public               tenderdexta_user    false    215            �            1259    16443    otps    TABLE     �   CREATE TABLE public.otps (
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
       public               tenderdexta_user    false    5    222            j           0    0    otps_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.otps_id_seq OWNED BY public.otps.id;
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
       public               tenderdexta_user    false    5    224            k           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
          public               tenderdexta_user    false    223            �            1259    16426    users    TABLE     �  CREATE TABLE public.users (
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
       public         heap r       tenderdexta_user    false    5            �            1259    16425    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               tenderdexta_user    false    220    5            l           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               tenderdexta_user    false    219            �           2604    16465    assessments id    DEFAULT     p   ALTER TABLE ONLY public.assessments ALTER COLUMN id SET DEFAULT nextval('public.assessments_id_seq'::regclass);
 =   ALTER TABLE public.assessments ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    226    225    226            �           2604    16414    course_materials id    DEFAULT     z   ALTER TABLE ONLY public.course_materials ALTER COLUMN id SET DEFAULT nextval('public.course_materials_id_seq'::regclass);
 B   ALTER TABLE public.course_materials ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    218    217    218            �           2604    16403 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    215    216    216            �           2604    16446    otps id    DEFAULT     b   ALTER TABLE ONLY public.otps ALTER COLUMN id SET DEFAULT nextval('public.otps_id_seq'::regclass);
 6   ALTER TABLE public.otps ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    221    222    222            �           2604    16453    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    223    224    224            �           2604    16429    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    219    220    220            _          0    16462    assessments 
   TABLE DATA           j   COPY public.assessments (id, course_id, title, description, deadline, created_at, updated_at) FROM stdin;
    public               tenderdexta_user    false    226   I       W          0    16411    course_materials 
   TABLE DATA           u   COPY public.course_materials (id, course_id, material_name, material_link, price, created_at, file_type) FROM stdin;
    public               tenderdexta_user    false    218   2J       U          0    16400    courses 
   TABLE DATA           �   COPY public.courses (id, title, description, instructor_id, price, duration, category, course_level, thumbnail_image, total_lesson, created_at, updated_at, creator) FROM stdin;
    public               tenderdexta_user    false    216   -K       [          0    16443    otps 
   TABLE DATA           9   COPY public.otps (id, email, otp, expiresat) FROM stdin;
    public               tenderdexta_user    false    222   8L       ]          0    16450 	   questions 
   TABLE DATA           �   COPY public.questions (id, assessment_id, question_type, question_text, correct_answer, max_score, options, created_at, updated_at) FROM stdin;
    public               tenderdexta_user    false    224   �L       Y          0    16426    users 
   TABLE DATA              COPY public.users (id, name, email, password, role, qualification, is_verified, createdat, updatedat, reset_token) FROM stdin;
    public               tenderdexta_user    false    220   AR       m           0    0    assessments_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.assessments_id_seq', 5, true);
          public               tenderdexta_user    false    225            n           0    0    course_materials_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.course_materials_id_seq', 9, true);
          public               tenderdexta_user    false    217            o           0    0    courses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courses_id_seq', 15, true);
          public               tenderdexta_user    false    215            p           0    0    otps_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.otps_id_seq', 2, true);
          public               tenderdexta_user    false    221            q           0    0    questions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.questions_id_seq', 4, true);
          public               tenderdexta_user    false    223            r           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
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
       public                 tenderdexta_user    false    216            �           2606    16448    otps otps_pkey 
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
       public               tenderdexta_user    false    226    228            �           2620    16460 %   questions update_questions_updated_at    TRIGGER     �   CREATE TRIGGER update_questions_updated_at BEFORE UPDATE ON public.questions FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
 >   DROP TRIGGER update_questions_updated_at ON public.questions;
       public               tenderdexta_user    false    224    227            �           2620    16441    users update_users_updated_at    TRIGGER     �   CREATE TRIGGER update_users_updated_at BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
 6   DROP TRIGGER update_users_updated_at ON public.users;
       public               tenderdexta_user    false    220    227            �           2606    16420 0   course_materials course_materials_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_materials
    ADD CONSTRAINT course_materials_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.course_materials DROP CONSTRAINT course_materials_course_id_fkey;
       public               tenderdexta_user    false    218    216    3252                       826    16391     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     W   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO tenderdexta_user;
                        postgres    false                       826    16393    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     S   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO tenderdexta_user;
                        postgres    false                       826    16392     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     W   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO tenderdexta_user;
                        postgres    false                       826    16390    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO tenderdexta_user;
                        postgres    false            _   �   x��н
�0��9�y���h�mVq�ɱK�����Tз7��H3(ܔ?�w5�q8_Nq�nv��ْi���}�Rpe�s^o޲�RC�N|%(�l��D�H�Aԑ��f������&��LĦ�����}��k7�wBh���U�?��@�E:��6�I�: ���l      W   �   x��λn�  ��?/`n��t�б����`\�S�O�(Sۥ�t��Ӡ/s]��l�y�5�󚯫I)�Wx��gj]ʀ������8��ٜ�{_B:�V��喍�w*9㚫N�	��Ǣ�p��ZT?;�:�W3��?�)~<LJ�@D`���t-� ��ΐ��=x���q���c2W�S����~��c�a<y;Mc�wYz `i�+.a���e�%?��5M��9u�      U   �   x�͑�N�0�g�)��5��l\X�+!��$�6��OO[�B
R��|g�tJ����wN�C6]������ �aq�t̋���8�9��R!����7N���D��0N?㜨�� t��n�*���n��z�=�~;��'�[k>wA�U�z�$��	&��+^c!�J�%#e����6/E�t|�y��.��]��-�f�U�z�����W�	��?�1��M|�7��EPr����W���)����b      [   _   x�E˻�  К�� w�'@����D;����?�S����T]�$�JԒ�D:"E�*�y�VϻW�%m_cC�onB�&Dt�����      ]   �  x��VMo7=˿b���d�vE��Nm4H���E���wI���#E��z�?1��oȕ,%�0�93���͐'��NU��,J��g4w�*�	��*k&7�{�����}����є��TI�Ri�wF��a�Q緿��ױ;���t������E��1��������C�������;�����`�`xF����||:蟟��=�l;�Vt����6�ĕ4s�^�r�-�u+�y+�W�V���n̏ƣ������󖭣Qg�̎V*c�"��̔m��/�D�қ���;?gz�Ba�<:&��x[�
�^�l�>8�N�īBUte�v�m��s[i����t1UU�����x8�F��I���i笳�&F��+��gk�Y2�j^$�JS�����:��SZx���&^�
e�­�C�3�T�ϳ*��/���R�����\��<��XE�tr��7΅�p��
N6��j	F(S�rQG9�;�#UZ(�P>�>]�^Ⱦ��@g �Bx��/�T)�!�3�-�&A�j]ȩ�6K Zr����s��Ч�s:in�ne��#D���K"��;/�)�
@�;�$b#�
G�\�,� vi%	�)�GE�~���9�S�. ���|b**��Tဠ�ȺH�1"��DQ'Qҩ�ǚa����I[�����^%�����>���Su���Y���ӊ)�M�#�dԇ���[�p��b�<z�'���z�E�1�?��p���)������]��D�޺��R~b���[B�^0)���^�~BW\Bf�lSu��kmT���,����J��'`��-���̋�FHZ�`�e�6��[�o\A�Ja"�z'�;�i�Yc�07}z-��.5��^3�@!��q%��+;O�췽L�%r��p9Ea�U�	F���Jr�c���K�q옞�D�7v��.�e�M�`�٥+�/��t���@�^!ŝs{DSq�d�������&�'�4@�&t���R��0�Hã g*����u���Gl���9V1P�|L?/�����4�nI��v&��.[�LI3���,M�{cj��J�MUW�k�h�Vgް�q��&���b�]H�!�N�����x�	�+P�'�4�e���2�X(�ĔM�t��3pc�U����(���`����%v�hB5^)W�`��yɶf��HP��q�u��@�L��$�[��JP�L��.l�RծݔS�F�vږp%���wñ��]ޗ2�!=�+O�=����	��7ˎ���.W��L��Y}#sg���k �u폁\F�LY�Dږ��n5ԤiЌeA��L���o8�8�7M�B�_�>���6�����o�yL��ad՞��:���o��r���*�3s�Vx�<�[�x����7��7�n����g��-[G��GGG��J]#      Y   �  x���[O�0���SDQ!�k��e�HPD/�6�&7>M�:��8i��� ��1ѧ����g�s,e�)%�T�����p��P=�2���2���RN��!�c7w�`�����4H�xM&��؏]dX���qCg	J��,�D�By��!!(I�$�]
�H�2)E92�J=����})l����.�J�@G��#l�V��~軶gH`
�D�1O��,���0���n���jg�v�%�_�e+^	��U�-H	��|��c�����#��4JY��4����I�$���ݞ �fS
�R�5;���1�.��s�N��o��Ԟ�)[�6m��t�m[������������������l�*qo��C��>��ٸ]�vE3�f~�tSG�� ��pU~��&�gm�ڄ�<]�g/�RV�������Q����D}q϶�SQ��^7�V��A�m����PAܚ/Vx�.!4�� �W��}�����7���ٳ���IZ4�}�\ӋNE=�I?��>�     