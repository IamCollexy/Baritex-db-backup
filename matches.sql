PGDMP  ;                    |           intendernessmatchmaker    16.3 (Debian 16.3-1.pgdg120+1)    16.3     *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    16389    intendernessmatchmaker    DATABASE     �   CREATE DATABASE intendernessmatchmaker WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
 &   DROP DATABASE intendernessmatchmaker;
                intendernessmatchmaker_user    false            .           0    0    intendernessmatchmaker    DATABASE PROPERTIES     ?   ALTER DATABASE intendernessmatchmaker SET "TimeZone" TO 'utc';
                     intendernessmatchmaker_user    false            �            1259    16584    matches    TABLE       CREATE TABLE public.matches (
    id integer NOT NULL,
    user_id_1 integer NOT NULL,
    user_id_2 integer NOT NULL,
    matched_at timestamp without time zone DEFAULT now(),
    match_status character varying(20) DEFAULT 'unmatched'::character varying
);
    DROP TABLE public.matches;
       public         heap    intendernessmatchmaker_user    false            �            1259    16583    matches_id_seq    SEQUENCE     �   CREATE SEQUENCE public.matches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.matches_id_seq;
       public          intendernessmatchmaker_user    false    222            /           0    0    matches_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.matches_id_seq OWNED BY public.matches.id;
          public          intendernessmatchmaker_user    false    221            �           2604    16587 
   matches id    DEFAULT     h   ALTER TABLE ONLY public.matches ALTER COLUMN id SET DEFAULT nextval('public.matches_id_seq'::regclass);
 9   ALTER TABLE public.matches ALTER COLUMN id DROP DEFAULT;
       public          intendernessmatchmaker_user    false    222    221    222            '          0    16584    matches 
   TABLE DATA           U   COPY public.matches (id, user_id_1, user_id_2, matched_at, match_status) FROM stdin;
    public          intendernessmatchmaker_user    false    222   �       0           0    0    matches_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.matches_id_seq', 2, true);
          public          intendernessmatchmaker_user    false    221            �           2606    16591    matches matches_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.matches DROP CONSTRAINT matches_pkey;
       public            intendernessmatchmaker_user    false    222            '   5   x�3���4202�50�5�T04�22�2��377�0��M,I�HM����� �'	A     