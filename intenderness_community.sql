PGDMP                       |           intenderness_community    16.3 (Debian 16.3-1.pgdg120+1)    16.3     "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    16389    intenderness_community    DATABASE     �   CREATE DATABASE intenderness_community WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
 &   DROP DATABASE intenderness_community;
                intenderness_community_user    false            &           0    0    intenderness_community    DATABASE PROPERTIES     ?   ALTER DATABASE intenderness_community SET "TimeZone" TO 'utc';
                     intenderness_community_user    false            �            1259    16413    intenderness_community    TABLE     >  CREATE TABLE public.intenderness_community (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    "howDidYouHearAboutUs" character varying(255),
    "phoneNumber" character varying(255),
    comments character varying(255),
    occupation character varying(255),
    "whereDoYouReside" character varying(255),
    "canAttend" boolean,
    "howManyPeople" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 *   DROP TABLE public.intenderness_community;
       public         heap    intenderness_community_user    false            �            1259    16418    games_night_waitlists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.games_night_waitlists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.games_night_waitlists_id_seq;
       public          intenderness_community_user    false    215            '           0    0    games_night_waitlists_id_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.games_night_waitlists_id_seq OWNED BY public.intenderness_community.id;
          public          intenderness_community_user    false    216            �           2604    16419    intenderness_community id    DEFAULT     �   ALTER TABLE ONLY public.intenderness_community ALTER COLUMN id SET DEFAULT nextval('public.games_night_waitlists_id_seq'::regclass);
 H   ALTER TABLE public.intenderness_community ALTER COLUMN id DROP DEFAULT;
       public          intenderness_community_user    false    216    215                      0    16413    intenderness_community 
   TABLE DATA           �   COPY public.intenderness_community (id, name, email, country, "howDidYouHearAboutUs", "phoneNumber", comments, occupation, "whereDoYouReside", "canAttend", "howManyPeople", "createdAt", "updatedAt") FROM stdin;
    public          intenderness_community_user    false    215   ;       (           0    0    games_night_waitlists_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.games_night_waitlists_id_seq', 310, true);
          public          intenderness_community_user    false    216            �           2606    16421 6   intenderness_community games_night_waitlists_email_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.intenderness_community
    ADD CONSTRAINT games_night_waitlists_email_key UNIQUE (email);
 `   ALTER TABLE ONLY public.intenderness_community DROP CONSTRAINT games_night_waitlists_email_key;
       public            intenderness_community_user    false    215            �           2606    16423 1   intenderness_community games_night_waitlists_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.intenderness_community
    ADD CONSTRAINT games_night_waitlists_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.intenderness_community DROP CONSTRAINT games_night_waitlists_pkey;
       public            intenderness_community_user    false    215            �           1259    16424 +   idx_country_howdidyouhearaboutus_occupation    INDEX     �   CREATE INDEX idx_country_howdidyouhearaboutus_occupation ON public.intenderness_community USING btree (country, "howDidYouHearAboutUs", occupation);
 ?   DROP INDEX public.idx_country_howdidyouhearaboutus_occupation;
       public            intenderness_community_user    false    215    215    215            �           1259    16425 	   idx_email    INDEX     T   CREATE UNIQUE INDEX idx_email ON public.intenderness_community USING btree (email);
    DROP INDEX public.idx_email;
       public            intenderness_community_user    false    215            �           1259    16426    idx_id    INDEX     G   CREATE INDEX idx_id ON public.intenderness_community USING btree (id);
    DROP INDEX public.idx_id;
       public            intenderness_community_user    false    215            �           1259    16427    idx_name_email_id    INDEX     _   CREATE INDEX idx_name_email_id ON public.intenderness_community USING btree (name, email, id);
 %   DROP INDEX public.idx_name_email_id;
       public            intenderness_community_user    false    215    215    215                  x��]�rGv]'�"�41T��lFM!����b"�]�݉��l���jv^x1����1/���+����|nVu� �
#����j�Ne�ǹ7o�<�J\���%u�Ҷ1����P�h�3��KΞJ�	�)_�z��q��j!�D�!�\,�k]�7��V�Lv�{M�:��}k��Z6w��=q�_[�'���e��E`��b)�F�vǮ}�Y�(|��BT���J.V�-�OC�7��=��R��ȧQ���o.'��>H�\�y"�-�2Mu7|\�	���s�a�*��楔��u�s��B'��⩨���������3��+y3%3]��{���/����+��L�x2L�G�vXVx��_��,���W��ɉ�3)W"/��u�)�{�5��8�-߹�*�':㘬��Bd[�p�k�P%�s�ϵ�0ݘ�����C%�(5+�T4�'�ZPx�c{���m���B�sQaN�L,W2�Ŵ�������^`>T.˒���2_�יX��c�')��D]�d�Y��eȠ�R	]WF�WR�R�uη�~�Ͼθ�+Y�@��:��4m`)�
�{.+.��L¢d��A�E]�#��)�sQj*9�ڋ����O�Ǟ�L�%�k��:�������'|��dV�Ȳ�i��5)�|^����K9](V
rq��	~yP!�H��(�p�����lӡ��/>�{S�F�K��@�%ďT�\8V��#�K��c�~�U�6\�O�a� ~"��R��9��H3CHR ���_��XK!�9l،;��B���;9��RrRN�
�L�1��M���a��n���
��v���`PS�{�cmy�Q��-1g�"]�mǎ=�{�b\����D�7�:��:6{%5�	�г���:��g�׎�Ŷ�Dnd9�+m8{���
B6 0���*O5d�I]�Fs���0s�0v�ъ����8�](�2Q1�L��e��G&��\�*�
�ܽ��OA˒ۖ�v�0�"���]Or6 (���=���afW�\6	�2��Њ����e��cB�v
��s6ՌX��ž(�	g��-�u%\?�v-Xe���m~��Z��z����J�p*���[��\����"�e+��ɑeWj	��ԅ�ӘY�u�M�H?�`��(��
�+��]��&��F��.X��dO���F4K���e=�kD�3�|��^�L`���[n����P��1P��Z�2��r%i$TY�����#��a�oC�J���V��[a�ǁg�����Q�;�q}\.l�(��W�R�Kn�t��hY���Sd���ݱ�W�&Z4�$��P��?;�+ɖLP��!���Vl���!���WE�irP1����ֿ�+��J�͈���������K��%��3ߛt�=���[ׁ��"
0�;촁�3�-�z����t�Q¹�����^�����k}0�s"X�+�^���u�K[�4�#:o�)�mX���1���}�e�Za��9TNY��� �Ǟ��%�A9��<E�`�"�9�٩(p3��av�R�3.���d�y��>���@X��|o<-'�]+~W��C�ĳ��cÍaW=�\rd!��j�mx����-bB
0�F1٪�� �nO��p@���	)���4�+���1��r!�,�<1�Lh	���Dw!�(7�ӈ�֟RH�ȶ��8��m"虼��^e�����{�O��F�9H�|�7��jV�|��z"a��6u���پo�ag�����fb�Yl� (F��R�����څ|�FF~�y���8W�/�:����fo�	��Cd%?��X��������/���������.�A�)rLPK
���5M�����GL�7�&�b4+YRP)��x�]��Q9�$k�'luI�*}�
�9�C��m��y�_D��ءy+���\P�.`e#������PM���i�e�D�s�_�T! g�4e��4Y��,�R��Q�D��`A��0��S�IC��K�
�	Fh�㻳�&�3��B�/�jAC����4}��,Z��}8h�ދ��{�����LU$��K��LvUw'8�o�y�a�C�����M�1� �.���JMAK��嬽�g�<?�]k�f�+l�����9&(}Eٿ�0	yw��M���k��зrJ6_Jj�!`F���)�PSq%��wd=e�dD>Hߛӷ�O���#2����(&�3�u^�ӏ2��D-%�'�]�\N�m�=/�\���O<㈮��@yN�1��a��u왨x>�j��ӷ�'g0;��&�`W:˚�N�??��-ϱ]'vp+MYy����f3-�:���EBzI	������S�7�(����`��t�I�n����rJiKxٱ�$�w��r�����x/z��]X>B�7f�*?�n	�� M��3�`r%C�$�Y���b�'��ˢ��<br�A�F�~����(����䖄 �cOd�&2#�G�u��F ��5�=�:eO�0c峷�N��B/%��9tU�=��6��1��np;p���5��9-7κ+�ԙ���� <'��� )�SY�R�5�7�u%��jj��f�h�y�k�bK0���Z������\�Z{��6�����
�})RP�m�3�XG.t��B��Z�jT]nC�Q��d���x�$�·�z����z&Kt]�U}���nII�'����e��E�6��+K�i��\_))�.ĵW�B���K{y��H*&��7����ߦ����VD_��n�y��Y�(�\L
%S/�Y������� �`*�+c�I�2	����σFRqUv�`:�h{�a�YE?��=�bcJ�:���;	�!������M��s�ಬ��v�s5;���簾�Q�'������v]���3ˣ�����R��a����c���
��iA< zźp�^ ���X/��:-��Q"Y��Y��ܒ��n|rl;>;@�2�/���"A�.
�\�2�3N�^�j�����y�i��=����������S���87\T�TLU۴]�,k�+� �x1��B�eS�rZ��B��`Ґbp���Kӽ�z���y�-�o
'ۼy�YX������� ш�b(	ς�]̩� ��Y�]�4m�h=�V^ ۡ'��G�e�&Z��B�;��P�fZ���x��3�p,�e��.�t�U������V�#7��s���,G�Ȳ�� ]P'U�RTGJQ�	DȾӽ䷻�GéQh�X�qU��F�r?S!6���.�v|7pL�
	;�b��a?#���d��F�2��Y��yu�x�$\nyZ�T8��m�VX�����Le�*T��O��|� "t؏�!v��L�uv�Y����6���,���i9�D�B��J[�E��E>����ᢹ�ZG�o�%X�th�v�0-�sck3p5XuH�B�+��������aw!_U1��m��]�-��� �M� ��Ok���w�8[	jC@Bʗ�:�9�H��P���y��7��v��zJZ!d�8�Ჽ��. ]���S��M����c���t���G�䠆��֚�u�+2Q��<%r���(�.�TP���eդ#0N��n��7 �f�,%%�/݀@NУ�c�(���D���7�κe81����+����&�K��)[���^Sm��M����[��y��}X�e���JYU�N/9b��K1�R�R��`+s�M�e���a�%*&5�RfɈ������u��U[�z�c�U�<)�H������rS���y�V*3�@�XB*�!*�n�E"�G�UQ�N���Hn���R�Mݷ|Z���,�-��� R�Ԋ��wC�M�%��r�o!r�_��m�U��\�c!��^�_�۫�� P��"��0'�d	n,�e|��[�4��)x�6_�JE��˨�g�fLl�1���z�����j6Ɓ�Wby��;���~�A�`���������?׵ÃʿU]��Sϥ���f��Z٢��(�4c0�;i�Ma��j˺��"�ϻ��N�����}(�K�n�����ص#����{�)oN�`��	���c�D.uR�ȕ��i݉>E�=�_z
�(   �h?�S9�SQܬ�ld�nH)�\JÚ��3�;g���Dݳ*XNDł{i���Fܤn�J4�Pn��L���&&,���)u�2%����)Js�����g>�?*�U�n8Û�G];�t"%��m��O)V�nHA����)�h3dHM�ttR��nL��+E�����Q�M��KZ]P�P�:_�1��U�
U����3{�r5���3P�vI�	A{�#��=O���mwgn���w7t1t������d. >�JzI�myH�w{K����׿���3�oR)��n���\�U�pڇ2�SQ�7��h�X;Uj��Y�/����������������%�p�?k�d!����ܸ}�j4�9t��
����BU�\�s����M��LP��k�'�$YL_��{i:-Z���E�m���=�����h��Tjz%���ʻF�w=�v|���hO��=��ʯ�'3u�2S2��HVˏ����v�O5]���R��M���!D�T�fÍ��0*o'��}�W�G����M���!w�c�xщc�"��y���G����M�lJ>n����:D�SJq��x9�}�[n�  isOw{�Nk�<�+S�6��v�W4m�-t�۾K=�ִ�������2����Z���4�sZ���=׍c�wُ���;�i�B�Af��m�hgYA9�ۉISW���II�fAm�8r�a��p�5#��Zh��j~�}�=��6;0�_�S��w����h;݀�1�2H/1�2�ض�e?c_�ˍ��!����6Q��rN�fE���z���d"� �k���,�p�Q�}f66���h�Vrp<6;�im�=��` ���S�Kk����)���I@E������%T:�#ڧas��b8�h<|jC#����v"3<b�]�S/7.ۦ�R����%7%�B��SmB��Qz�J����i��l�a��ƭ~�o9P8�����)�D�TK�Z�)�V�5��(�aQ�@�Q*��ڌ��D.��@l.��C���������=S��k�b�Du����&�b���*�5�<�D���	��'𜜽ӫJC�<��Z9^��߰<�7Zl.�ר����a� f\TZ�t���[,��	��8�C����B�)�N$�n/�ޘ�`bb�3�动Κ�[��f&[�����B�+b�7�'�~�6��c�,�%S�s���W��T�~�Av�Y)Ĕ�C4�����XE���n��+�Q�P�zE�\2C��.�NɎ�͕�n�jh����Q1�{&r%S~����kx��BOP��
}����.�y�2E���g���WNuM�7�.]dm.a��٥�%̶�r[&�8q?E
,����� ��Ӳ���ɲ�ҋ�z�,���f[4��>��"�aFk�S>s�(���ц��՞��։�jVu�m�g@;�8���YǷhm���+�]bat���z�:��u��?4�>��Ch�n@��6�9��b�]����K6�a���v���#t)���EC��z29�mq��=|�ܻD4�x<v�z
��`RLd�����ω"�N�L?&�=�lu
��X@g�cb�>q��F��GC�2�h��^6��b"YR��jWv��Ł�v����������!O�KH?�������R����;
�#v��j"8�>}�T��W�dZӮѓ� >�2!��\G?�V�b��)�ɤ���M+��E��1D�G��;'��9�dZw�}��~�6{�!+�D��K\�I��C)��J�0����Yg|h^��V{N�]�w��^KźR�u~�|�~�!$6r����q�tn,��?(���~���kUNG2��+P�aX��y8����U������������� �sB��[���15n�:��EI/�P�^&Lg�τ��
�Dp���F:ɔ_�)��f��O�"/v�.Ou�q�짹��j�״0������|!�t��������Pԝ��ϧ�N��ĹI��8���o�488sf�DQE�D�cbb$��{*n�L�ا���(,�p���B����$m��ڪk~>+I��b�܇�ޡ�.%��'���iV�9([��:v腎��:��铋���鋟^������SFK:QZ=�CwC�Jp�Z?6Z�NSUif�؇&�f߸,��~�J�K��}�pŢ��ܶN��ĳG��q�����G\�٤���6Dm�j�M�����S{� N6�װ񤾢sv ��։�l���;�x��<1��i�t)��/��Q�4t3z�6�uK��o ������l��x�. ���������1r����I5��53�T��"�Y����S!I�5
@����]`��3qE �',��W�kU�"�)�G�� �����u�x[�	�щi�F`��<��ȉ-6^��򷰵��AM���%���C�A�nme�E+q���?���ya��C;�h0m���ðQ���R�{uk���ɄF�b ^��Os�L0?�2>��8���wљ��o��f�c��l���s�b�ȼ�W��q���O&c��9�{�n>�J@SHH��vo�J#ZO���1'f�Pi�*PnO��֦�=��<�J��L����������x�ȉ,����x�]����������3�����ū1-���H��>��@"�wb#?
��=��#z�):,jL>g⺬�s������(�-�OC|M��F26���a���*��I�G7y<IM�7�E��_���2���^8kn�����.y)�f{o��5�0����<���4��F�j�h�9j���#U�����B�����vJ��,��TP��o��o�͡����`��3+�]�8v�C6�4 �M�.�s�H*w7���-�B��>�r�!�����cw#bO�^��;;�/1�2L�y�����i=�X��d��jқB�p!��o�B��\o��]���"��
�����Jq�3������~�C�Lp{����*ͨf��T��;]��Ph�r8;0��}�Z6e�أ���b�-7�(Z��-n��
��u�^n{�s����'ض�A�f���=p�.�9��$�DLh!�l��j7�;=�Fi�3�#"�@y	3b�����ۚ�+��c�|Lrf�;���]�u�y]@����o��i�t���sn����84�n�u��顰 G���	�}Hwi��JB�ĳビX�s1Eh���� 1���>�%��g[�vO|lwD'����u�.8]B�	!La
�OL���^��-|��#G�k�l�n��;���[�� ���h��8�����ܲOܐd�s�aGwG�m;^�2|���X�c�N��iR�J�ƅ1�|ߊ ����ѣG�+u     