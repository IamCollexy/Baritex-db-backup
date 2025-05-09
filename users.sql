PGDMP                      |           intendernessmatchmaker    16.3 (Debian 16.3-1.pgdg120+1)    16.3     5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16389    intendernessmatchmaker    DATABASE     �   CREATE DATABASE intendernessmatchmaker WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
 &   DROP DATABASE intendernessmatchmaker;
                intendernessmatchmaker_user    false            9           0    0    intendernessmatchmaker    DATABASE PROPERTIES     ?   ALTER DATABASE intendernessmatchmaker SET "TimeZone" TO 'utc';
                     intendernessmatchmaker_user    false            �            1259    16400    Users    TABLE       CREATE TABLE public."Users" (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    middle_name character varying(255),
    last_name character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    fullname character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    age integer NOT NULL,
    place_of_origin character varying(255) NOT NULL,
    religion character varying(255) NOT NULL,
    tribe character varying(255) NOT NULL,
    body_size character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    genotype character varying(255) NOT NULL,
    blood_group character varying(255) NOT NULL,
    marital_status character varying(255) NOT NULL,
    occupation character varying(255) NOT NULL,
    preferred_age_range character varying(255) NOT NULL,
    preferred_height character varying(255) NOT NULL,
    preferred_religion character varying(255) NOT NULL,
    preferred_state_tribe character varying(255) NOT NULL,
    kids character varying(255) NOT NULL,
    preferred_complexion character varying(255) NOT NULL,
    interests character varying(255)[] NOT NULL,
    social_media_handles jsonb,
    role integer[] DEFAULT ARRAY[2001] NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    complexion character varying(50),
    preferred_body_size character varying(50),
    height character varying(10)
);
    DROP TABLE public."Users";
       public         heap    intendernessmatchmaker_user    false            �            1259    16399    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          intendernessmatchmaker_user    false    216            :           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          intendernessmatchmaker_user    false    215            �           2604    16403    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          intendernessmatchmaker_user    false    215    216    216            2          0    16400    Users 
   TABLE DATA           �  COPY public."Users" (id, first_name, middle_name, last_name, username, email, password, fullname, state, age, place_of_origin, religion, tribe, body_size, gender, genotype, blood_group, marital_status, occupation, preferred_age_range, preferred_height, preferred_religion, preferred_state_tribe, kids, preferred_complexion, interests, social_media_handles, role, "createdAt", "updatedAt", complexion, preferred_body_size, height) FROM stdin;
    public          intendernessmatchmaker_user    false    216          ;           0    0    Users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users_id_seq"', 15, true);
          public          intendernessmatchmaker_user    false    215            �           2606    16412    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            intendernessmatchmaker_user    false    216            �           2606    16408    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            intendernessmatchmaker_user    false    216            �           2606    16410    Users Users_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key";
       public            intendernessmatchmaker_user    false    216            �           1259    16518    idx_users_age    INDEX     @   CREATE INDEX idx_users_age ON public."Users" USING btree (age);
 !   DROP INDEX public.idx_users_age;
       public            intendernessmatchmaker_user    false    216            �           1259    16522    idx_users_body_size_genotype    INDEX     _   CREATE INDEX idx_users_body_size_genotype ON public."Users" USING btree (body_size, genotype);
 0   DROP INDEX public.idx_users_body_size_genotype;
       public            intendernessmatchmaker_user    false    216    216            �           1259    16516    idx_users_email    INDEX     D   CREATE INDEX idx_users_email ON public."Users" USING btree (email);
 #   DROP INDEX public.idx_users_email;
       public            intendernessmatchmaker_user    false    216            �           1259    16517    idx_users_interests    INDEX     J   CREATE INDEX idx_users_interests ON public."Users" USING gin (interests);
 '   DROP INDEX public.idx_users_interests;
       public            intendernessmatchmaker_user    false    216            �           1259    16523 $   idx_users_preferred_age_range_height    INDEX     y   CREATE INDEX idx_users_preferred_age_range_height ON public."Users" USING btree (preferred_age_range, preferred_height);
 8   DROP INDEX public.idx_users_preferred_age_range_height;
       public            intendernessmatchmaker_user    false    216    216            �           1259    16521    idx_users_preferred_state_tribe    INDEX     d   CREATE INDEX idx_users_preferred_state_tribe ON public."Users" USING btree (preferred_state_tribe);
 3   DROP INDEX public.idx_users_preferred_state_tribe;
       public            intendernessmatchmaker_user    false    216            �           1259    16519    idx_users_state    INDEX     D   CREATE INDEX idx_users_state ON public."Users" USING btree (state);
 #   DROP INDEX public.idx_users_state;
       public            intendernessmatchmaker_user    false    216            �           1259    16520    idx_users_tribe    INDEX     D   CREATE INDEX idx_users_tribe ON public."Users" USING btree (tribe);
 #   DROP INDEX public.idx_users_tribe;
       public            intendernessmatchmaker_user    false    216            2   Z  x���]s�:ǯ�`�ޭB/�\���������93;)����;�����j׽a&���$�*�nH# H"@�C�_����@vX��R�}�t����S�!KG��bw�W�� ]�����1Sc�t��]��6.f��#�Y4�1�9���8�"/��^q�}nI�n����4�ŘD�qi�<�ƜH�ȧ!h��C`x�`ު!�����-����v���z�����۽���5���1gH�+��B�IWQ���6��@��T��C^[�J(�㌬�d�Ne��k�ԏ�h��s�K;T���ބf�%��꭮n�����0�P�;mu'Yv`��e�5� =d�K����~����+�Im2��9E��k�-B_y�X�fto���O;[��(j��/�G'�ζ��b���o.��R�Y�w.xB&�� �b~�@ߣ���U�d��g(!��4`4�?�T����*�N��(�1���_�T���#�*9�tQ��A����J*�H�"M6Q�;�Q:����C���l`3V	�j�&��"�����G�����r[�����[>�$Y
|Z*��v�����㐴Ҽ�����A=�#�jWWG6?s�J��cfn�Ӂ���AFSˇNΊ�r]L��R�!���gN;D�~ �r���%���{�EP��#��*��a��jk�+�]��PoCC��~Z����pD �T�s�Q�<�:Y|���Ytgt�R���O}�Ě~6�h>}��t;�}�ƞ:��75�RQ��{�R���O�y�9�����'ćο���dn}l=��zt���2����]�-#M3��	�ߨG���[��+�j��s�j     