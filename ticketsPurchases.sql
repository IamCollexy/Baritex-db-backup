PGDMP                      |           intendernessmatchmaker    16.3 (Debian 16.3-1.pgdg120+1)    16.3     ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    16389    intendernessmatchmaker    DATABASE     �   CREATE DATABASE intendernessmatchmaker WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
 &   DROP DATABASE intendernessmatchmaker;
                intendernessmatchmaker_user    false            0           0    0    intendernessmatchmaker    DATABASE PROPERTIES     ?   ALTER DATABASE intendernessmatchmaker SET "TimeZone" TO 'utc';
                     intendernessmatchmaker_user    false            �            1259    16494    ticketsPurchases    TABLE     �  CREATE TABLE public."ticketsPurchases" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "totalQuantity" integer NOT NULL,
    "totalPrice" numeric(10,2) NOT NULL,
    items jsonb NOT NULL,
    "paymentReference" character varying(255) NOT NULL,
    status character varying(255),
    "cloudinaryUrl" text[] NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."ticketsPurchases";
       public         heap    intendernessmatchmaker_user    false            �            1259    16493    ticketsPurchases_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ticketsPurchases_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ticketsPurchases_id_seq";
       public          intendernessmatchmaker_user    false    220            1           0    0    ticketsPurchases_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ticketsPurchases_id_seq" OWNED BY public."ticketsPurchases".id;
          public          intendernessmatchmaker_user    false    219            �           2604    16497    ticketsPurchases id    DEFAULT     ~   ALTER TABLE ONLY public."ticketsPurchases" ALTER COLUMN id SET DEFAULT nextval('public."ticketsPurchases_id_seq"'::regclass);
 D   ALTER TABLE public."ticketsPurchases" ALTER COLUMN id DROP DEFAULT;
       public          intendernessmatchmaker_user    false    220    219    220            )          0    16494    ticketsPurchases 
   TABLE DATA           �   COPY public."ticketsPurchases" (id, "userId", "totalQuantity", "totalPrice", items, "paymentReference", status, "cloudinaryUrl", "createdAt", "updatedAt") FROM stdin;
    public          intendernessmatchmaker_user    false    220   z       2           0    0    ticketsPurchases_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ticketsPurchases_id_seq"', 53, true);
          public          intendernessmatchmaker_user    false    219            �           2606    16501 &   ticketsPurchases ticketsPurchases_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."ticketsPurchases"
    ADD CONSTRAINT "ticketsPurchases_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."ticketsPurchases" DROP CONSTRAINT "ticketsPurchases_pkey";
       public            intendernessmatchmaker_user    false    220            �           1259    16514    idx_tickets_purchases_id    INDEX     U   CREATE INDEX idx_tickets_purchases_id ON public."ticketsPurchases" USING btree (id);
 ,   DROP INDEX public.idx_tickets_purchases_id;
       public            intendernessmatchmaker_user    false    220            �           1259    16515 !   idx_tickets_purchases_id_covering    INDEX     �   CREATE INDEX idx_tickets_purchases_id_covering ON public."ticketsPurchases" USING btree (id) INCLUDE ("paymentReference", "totalQuantity", "totalPrice");
 5   DROP INDEX public.idx_tickets_purchases_id_covering;
       public            intendernessmatchmaker_user    false    220    220    220    220            �           1259    16513    idx_tickets_purchases_user_id    INDEX     `   CREATE INDEX idx_tickets_purchases_user_id ON public."ticketsPurchases" USING btree ("userId");
 1   DROP INDEX public.idx_tickets_purchases_user_id;
       public            intendernessmatchmaker_user    false    220            �           2606    16502 -   ticketsPurchases ticketsPurchases_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ticketsPurchases"
    ADD CONSTRAINT "ticketsPurchases_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.games_night_waitlists(id);
 [   ALTER TABLE ONLY public."ticketsPurchases" DROP CONSTRAINT "ticketsPurchases_userId_fkey";
       public          intendernessmatchmaker_user    false    220            )   �  x���͎�0�3<E�k[��y��zo����8C��%�}�z[i�d�HUЮ����-���*��@|\۴���j��ff4ِV�ϫ���?��b73����	��qH�3n�K�O�g�:�{�������Bp�6���2x�;��Iwy��f�i7E����c������M��y<�U�f�H$e�6p�����y���¦�g�.ޏ�t�Kw�*ܥmڸ��m�  ��?+�	�X�%A��<�l�P�"r��D9]�NJ>KWe`ƭۖ}הm
�[tD$�����tWi��ӑw/:��$2|9FP�ʍ�uE��Էj��+�o�!&��J7�Ґ� 1����r8'��!eD�ݮ��8���Uw.�Cv�2����+ߍ�%�E�Pqٮ7Ӑ_s�?脠����1&���s��nk�|[W�FM�Wr�'L$TF �T�J�ur�9��Miy��[�H�4{�%���8���1�{�-/G���%���?�0O�     