PGDMP                  	    |           axcend    16.3 (Debian 16.3-1.pgdg120+1)    16.3     '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            *           1262    16389    axcend    DATABASE     q   CREATE DATABASE axcend WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE axcend;
                axcend_user    false            +           0    0    axcend    DATABASE PROPERTIES     /   ALTER DATABASE axcend SET "TimeZone" TO 'utc';
                     axcend_user    false            �            1259    16400    testers    TABLE     �   CREATE TABLE public.testers (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.testers;
       public         heap    axcend_user    false            �            1259    16399    testers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.testers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.testers_id_seq;
       public          axcend_user    false    216            ,           0    0    testers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.testers_id_seq OWNED BY public.testers.id;
          public          axcend_user    false    215            �           2604    16403 
   testers id    DEFAULT     h   ALTER TABLE ONLY public.testers ALTER COLUMN id SET DEFAULT nextval('public.testers_id_seq'::regclass);
 9   ALTER TABLE public.testers ALTER COLUMN id DROP DEFAULT;
       public          axcend_user    false    216    215    216            $          0    16400    testers 
   TABLE DATA           8   COPY public.testers (id, email, created_at) FROM stdin;
    public          axcend_user    false    216   h       -           0    0    testers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.testers_id_seq', 46, true);
          public          axcend_user    false    215            �           2606    16406    testers testers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.testers
    ADD CONSTRAINT testers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.testers DROP CONSTRAINT testers_pkey;
       public            axcend_user    false    216            $   ;  x���Az� ����@�!h��A�u��i����������^!P�k��c�k@��YXc��μv���{����΃qf<�x\*&���:2B�8o�<N���*���)�&Q��:�3�Lw)ً��}o��c.����.����H���(Sb/k�ҩ8~ȝ[��Pj������+��.��W���-��$�(��Tu��<gI�����U�F�J�+�ŗ'�`����x���t�ˎ.ke�rt�Bj��T�=ע������?�b=�	gz��敳�%qnQm��ƞ�1�r�|�u�(f�T��|:�~Y�#g     