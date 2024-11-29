PGDMP      .            	    |           axcend    16.3 (Debian 16.3-1.pgdg120+1)    16.3     )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    16389    axcend    DATABASE     q   CREATE DATABASE axcend WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE axcend;
                axcend_user    false            -           0    0    axcend    DATABASE PROPERTIES     /   ALTER DATABASE axcend SET "TimeZone" TO 'utc';
                     axcend_user    false            �            1259    16478    otps    TABLE     �   CREATE TABLE public.otps (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    otp character varying(255) NOT NULL,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    expiresat timestamp without time zone
);
    DROP TABLE public.otps;
       public         heap    axcend_user    false            �            1259    16477    otps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.otps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.otps_id_seq;
       public          axcend_user    false    220            .           0    0    otps_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.otps_id_seq OWNED BY public.otps.id;
          public          axcend_user    false    219            �           2604    16481    otps id    DEFAULT     b   ALTER TABLE ONLY public.otps ALTER COLUMN id SET DEFAULT nextval('public.otps_id_seq'::regclass);
 6   ALTER TABLE public.otps ALTER COLUMN id DROP DEFAULT;
       public          axcend_user    false    219    220    220            &          0    16478    otps 
   TABLE DATA           D   COPY public.otps (id, email, otp, createdat, expiresat) FROM stdin;
    public          axcend_user    false    220   �       /           0    0    otps_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.otps_id_seq', 3, true);
          public          axcend_user    false    219            �           2606    16488    otps otps_email_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.otps
    ADD CONSTRAINT otps_email_key UNIQUE (email);
 =   ALTER TABLE ONLY public.otps DROP CONSTRAINT otps_email_key;
       public            axcend_user    false    220            �           2606    16486    otps otps_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.otps
    ADD CONSTRAINT otps_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.otps DROP CONSTRAINT otps_pkey;
       public            axcend_user    false    220            &   �   x�]�A�0�u{
.@33�2�+�R�����_da���G5L��ל�ﱎ�{���a���'E@�"�d�`)XoP���4���:��'�r|�1��C!�{�o��@��؝E6qV[��S�^�,y��2W��K�u���Ha��+���Z� �D<�     