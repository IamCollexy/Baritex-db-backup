PGDMP  $                	    |           axcend    16.3 (Debian 16.3-1.pgdg120+1)    16.3     .           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            /           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            1           1262    16389    axcend    DATABASE     q   CREATE DATABASE axcend WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE axcend;
                axcend_user    false            2           0    0    axcend    DATABASE PROPERTIES     /   ALTER DATABASE axcend SET "TimeZone" TO 'utc';
                     axcend_user    false            �            1259    16463    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    profile_type character varying(50) DEFAULT 'standard'::character varying,
    bio text,
    profile_photo_url character varying(255),
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    role integer DEFAULT 2001,
    reset_token character varying(255)
);
    DROP TABLE public.users;
       public         heap    axcend_user    false            �            1259    16462    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          axcend_user    false    218            3           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          axcend_user    false    217            �           2604    16466    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          axcend_user    false    218    217    218            +          0    16463    users 
   TABLE DATA           �   COPY public.users (id, name, email, password, profile_type, bio, profile_photo_url, createdat, updatedat, role, reset_token) FROM stdin;
    public          axcend_user    false    218   F       4           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 28, true);
          public          axcend_user    false    217            �           2606    16491    users unique_email 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_email UNIQUE (email);
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT unique_email;
       public            axcend_user    false    218            �           2606    16473    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            axcend_user    false    218            �           2606    16471    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            axcend_user    false    218            +   �  x���I��0�s�)r�k6K���%dU�0�	�����V=L�J���g맧�����)�V#�R���Ǖt�����$U��-�4A�^~���>d[�i�@��Yd[�����\U�ir%x�3UW�5��	tP���2|��b?��q#(�<+CLE�I��ǻ!4)?�4�0%n�+����oƩNa�o��3ek1&r��s�����v�ӛ�O"!(É�C B�I� ���W���zZT���VTM|t�wU}
E0@�}�9�N��?����-��{af�Ϋ�8_�s����	�{msD�Z�-�ޒՒ��z�5�����P���*�rf��Vb��|6Qt��H;������<8�+���V���q/�p�Ah����Lq��p2Ei0��lǸ�|����P:L�c%b
^ݮ��e�k���]i
������F�T�DA�&�����Ob�o4��kn�jpZ}u���i�^8���}�HX����\<7�t�F/$��^®���=w
H��c&ѓ����MYĤ�F�����
��B��N�+M�܌@e��c'&T4p*�F���a����КֶI�V��8y" E�$�t"��R�^}\�u��R��և�0#��E@ꀸ�/^�dc���E$ؙ�2F����'d��GO�O�w0��Y"     