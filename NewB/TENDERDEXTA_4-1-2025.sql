PGDMP                      }            tenderdexta    16.8 (Debian 16.8-1.pgdg120+1)    17.0 E    q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            r           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            s           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            t           1262    16389    tenderdexta    DATABASE     v   CREATE DATABASE tenderdexta WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE tenderdexta;
                     tenderdexta_user    false            u           0    0    tenderdexta    DATABASE PROPERTIES     4   ALTER DATABASE tenderdexta SET "TimeZone" TO 'utc';
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
       public               tenderdexta_user    false    5    226            v           0    0    assessments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.assessments_id_seq OWNED BY public.assessments.id;
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
       public               tenderdexta_user    false    5    218            w           0    0    course_materials_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.course_materials_id_seq OWNED BY public.course_materials.id;
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
       public               tenderdexta_user    false    216    5            x           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
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
       public               tenderdexta_user    false    228    5            y           0    0    enrollments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.enrollments_id_seq OWNED BY public.enrollments.id;
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
       public               tenderdexta_user    false    5    222            z           0    0    otps_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.otps_id_seq OWNED BY public.otps.id;
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
       public               tenderdexta_user    false    224    5            {           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
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
       public               tenderdexta_user    false    220    5            |           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               tenderdexta_user    false    219            �           2604    16465    assessments id    DEFAULT     p   ALTER TABLE ONLY public.assessments ALTER COLUMN id SET DEFAULT nextval('public.assessments_id_seq'::regclass);
 =   ALTER TABLE public.assessments ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    226    225    226            �           2604    16414    course_materials id    DEFAULT     z   ALTER TABLE ONLY public.course_materials ALTER COLUMN id SET DEFAULT nextval('public.course_materials_id_seq'::regclass);
 B   ALTER TABLE public.course_materials ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    217    218    218            �           2604    16403 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    216    215    216            �           2604    16488    enrollments id    DEFAULT     p   ALTER TABLE ONLY public.enrollments ALTER COLUMN id SET DEFAULT nextval('public.enrollments_id_seq'::regclass);
 =   ALTER TABLE public.enrollments ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    228    227    228            �           2604    16446    otps id    DEFAULT     b   ALTER TABLE ONLY public.otps ALTER COLUMN id SET DEFAULT nextval('public.otps_id_seq'::regclass);
 6   ALTER TABLE public.otps ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    222    221    222            �           2604    16453    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    224    223    224            �           2604    16429    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               tenderdexta_user    false    219    220    220            l          0    16462    assessments 
   TABLE DATA           j   COPY public.assessments (id, course_id, title, description, deadline, created_at, updated_at) FROM stdin;
    public               tenderdexta_user    false    226   �V       d          0    16411    course_materials 
   TABLE DATA           u   COPY public.course_materials (id, course_id, material_name, material_link, price, created_at, file_type) FROM stdin;
    public               tenderdexta_user    false    218   �W       b          0    16400    courses 
   TABLE DATA           �   COPY public.courses (id, title, description, instructor_id, price, duration, category, course_level, thumbnail_image, total_lesson, created_at, updated_at, creator) FROM stdin;
    public               tenderdexta_user    false    216   �X       n          0    16485    enrollments 
   TABLE DATA           Q   COPY public.enrollments (id, student_id, course_id, enrollment_date) FROM stdin;
    public               tenderdexta_user    false    228   �Y       h          0    16443    otps 
   TABLE DATA           9   COPY public.otps (id, email, otp, expiresat) FROM stdin;
    public               tenderdexta_user    false    222   Z       j          0    16450 	   questions 
   TABLE DATA           �   COPY public.questions (id, assessment_id, question_type, question_text, correct_answer, max_score, options, created_at, updated_at) FROM stdin;
    public               tenderdexta_user    false    224   �Z       f          0    16426    users 
   TABLE DATA              COPY public.users (id, name, email, password, role, qualification, is_verified, createdat, updatedat, reset_token) FROM stdin;
    public               tenderdexta_user    false    220   E`       }           0    0    assessments_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.assessments_id_seq', 5, true);
          public               tenderdexta_user    false    225            ~           0    0    course_materials_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.course_materials_id_seq', 9, true);
          public               tenderdexta_user    false    217                       0    0    courses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courses_id_seq', 15, true);
          public               tenderdexta_user    false    215            �           0    0    enrollments_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.enrollments_id_seq', 5, true);
          public               tenderdexta_user    false    227            �           0    0    otps_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.otps_id_seq', 3, true);
          public               tenderdexta_user    false    221            �           0    0    questions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.questions_id_seq', 4, true);
          public               tenderdexta_user    false    223            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
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
       public               tenderdexta_user    false    230    226            �           2620    16460 %   questions update_questions_updated_at    TRIGGER     �   CREATE TRIGGER update_questions_updated_at BEFORE UPDATE ON public.questions FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
 >   DROP TRIGGER update_questions_updated_at ON public.questions;
       public               tenderdexta_user    false    224    229            �           2620    16441    users update_users_updated_at    TRIGGER     �   CREATE TRIGGER update_users_updated_at BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
 6   DROP TRIGGER update_users_updated_at ON public.users;
       public               tenderdexta_user    false    229    220            �           2606    16420 0   course_materials course_materials_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_materials
    ADD CONSTRAINT course_materials_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.course_materials DROP CONSTRAINT course_materials_course_id_fkey;
       public               tenderdexta_user    false    3259    216    218            �           2606    16499 &   enrollments enrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_course_id_fkey;
       public               tenderdexta_user    false    216    3259    228            �           2606    16494 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public               tenderdexta_user    false    3265    228    220                       826    16391     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     W   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO tenderdexta_user;
                        postgres    false                       826    16393    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     S   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO tenderdexta_user;
                        postgres    false                       826    16392     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     W   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO tenderdexta_user;
                        postgres    false                       826    16390    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO tenderdexta_user;
                        postgres    false            l   �   x���=
1�:9E.`��d�M+b���6�\W���FqAa���7�P��������,s�T��" ?Q0 �1�7o������<iR���7"~%bb���"�f��%<$"��I�ףKĔ0Z] Ѿ�����w��L.uӽ�_��jiCP*"\)j��T�͢?ov�7��(�<��`H��1x$��Z��gm�      d   �   x��λn�  ��?/`n��t�б����`\�S�O�(Sۥ�t��Ӡ/s]��l�y�5�󚯫I)�Wx��gj]ʀ������8��ٜ�{_B:�V��喍�w*9㚫N�	��Ǣ�p��ZT?;�:�W3��?�)~<LJ�@D`���t-� ��ΐ��=x���q���c2W�S����~��c�a<y;Mc�wYz `i�+.a���e�%?��5M��9u�      b   �   x�͑�N�0�g�)��5��l\X�+!��$�6��OO[�B
R��|g�tJ����wN�C6]������ �aq�t̋���8�9��R!����7N���D��0N?㜨�� t��n�*���n��z�=�~;��'�[k>wA�U�z�$��	&��+^c!�J�%#e����6/E�t|�y��.��]��-�f�U�z�����W�	��?�1��M|�7��EPr����W���)����b      n   L   x�m���0�7T�l݁�0���:��o����-�	�vO�_��H�r��	fY��i��;~�/Σ�R���.      h   y   x�E�K�  �5s�^ 23��9������+Oߚ�֏U^Z���>ߥ�����L^�b!Q��4Z�〘$&M�.�����3ǁ�1G�كU���u������������j `^�%�      j   �  x��V�n7]�_q����z%Pn^u�A͢)�CiXϐ*��#E���鮟�/��Ȓ�`ƈ���sν�Y�S�e��R}���Ru>"��
E+Q֊���ǏKM�)X
kK���%-K!��fg�Σ�ou�ڄ��=�n��+�/�td0:6������ɱA�x�i���A0~�>�i0��&�Q?�LF�Ö��AgЊ�,T�%���jfK�[G/l�������Ekѯg�%?Ww��h:�d����dҲu2�;k�CP�0~�\��|j�J�F�e`�K]��	�@�e�I���ήt��Mj#*@�ƅ]��-	���*�sN���ں2'�\��2hk|ֹ��<�6��n�܅ڼtz�3U���f^��H Ø��Yڐ*-�1�K���2�|:��J� fQ��{p�E��x��ْEL���I��Z�z��V*�MP'J��Oʩi�s�6S�����j���.=��꩚k�� X�#�A�
!E�?��]Zs©K������P����(�sm>�Ղ�r��_ZT�`dl ���^8]�ԙ�����E�eJ���/�9�읈�c��J��]��Wj�G��)�y�M~8N�������}.nsLvʣ'{�K�gI䰝���?�IvG_�������]�J�RHx�mz	,�f:�T}D�������i9p���gt�%dfֹG���i�`�d\�:�>ԩO��r{���^��
���8m�K�幖;�k�е0�S�o�wg7"�M�6�7��b3_4�MQ��j\�lp�,">�m�a�,<ת�A�.�^K|]N��U��;�'��u����ݪ�����JBlfeK�K��ވ� W'���y��LЕ���@�!���=o�~�L8�V��_���C@X�HÁ�Tg$��Y�;�j�y���3��*�YL�%�ПE��-�{�����&+�SR/��l�Uc��JltUW���VF&ܰ.a�D30�f����u�Gƕ�����U�IǱ�30l��Y3]6��O�Q7Vl�%
~|�k,5�>|[�l4�5�b��͊S+ej�APh�	24&캮>�|�ɂu����Q��)3����5������}�2y[�[�H�Z��D�B��a�_~r��|4\J�*�#]�r	��j`��韵��<wv���d���)*��S�5�y.�[�4��-pX��u�]���#�q��jP��C��R{���
�~���tQ.,FvQ(�q}�����7���B�=�pv�g�������xk}���p�u������󖭓!n��>�7�3�v98�M����@�m`=�P�a�}���	| »�V��Ȣ7�i�Μ(D����i��V�V��-]����Ư?�q8�����l2���a��?�G'������]]8      f   K  x���Ko�0 �s��M�éZQ��B��Z�xH�6��\��oڮ��v�iW���X�Ϟ$�X�&4���=�r��i��I��l'��iGw�/&�0��i����nXl�f�C�HF
"b&V�z�צk� u��ˤ�}�y��X$�^$)�r?��U� W$�8k^�d��]���J-x�0QK䘺�ڦn�(��@-�w��bT�j��Y��1[�.'umY
'�����8Mֿ~��g�U�5Y��X��Z�-�U�3#/���fU��`�A�(�:��6� ,��:�$JI\��n
)��
yƌ��2�~���7i-�n�hƉ�˺10�AW�C�c|Y�U<�6]Sz��R��Fj����$�e��6��&���n��)��`������Wqy�4��P�F>X�L�EA�gJO�Y�^]��%�td
u.�m��n���O�	��܎q�����d���j���������A`vwyoli���A�7�mEsL���:�-�d��C�u���
���M�b�h7��x�l+z5���
Ӹ\��� ��)�G~~�n��\G��4j�F4O4$#w�u�Q�渎w(���^����m=     