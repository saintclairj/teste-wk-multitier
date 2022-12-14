PGDMP                     
    z            teste    13.0    13.0     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16644    teste    DATABASE     e   CREATE DATABASE teste WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE teste;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    16655    endereco    TABLE     ?   CREATE TABLE public.endereco (
    idendereco bigint NOT NULL,
    idpessoa bigint NOT NULL,
    dscep character varying(15)
);
    DROP TABLE public.endereco;
       public         heap    postgres    false    3            ?            1259    16653    endereco_idendereco_seq    SEQUENCE     ?   CREATE SEQUENCE public.endereco_idendereco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.endereco_idendereco_seq;
       public          postgres    false    3    203            ?           0    0    endereco_idendereco_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.endereco_idendereco_seq OWNED BY public.endereco.idendereco;
          public          postgres    false    202            ?            1259    16667    endereco_integracao    TABLE       CREATE TABLE public.endereco_integracao (
    idendereco bigint NOT NULL,
    dsuf character varying(50),
    nmcidade character varying(100),
    nmbairro character varying(50),
    nmlogradouro character varying(100),
    dscomplemento character varying(100)
);
 '   DROP TABLE public.endereco_integracao;
       public         heap    postgres    false    3            ?            1259    16647    pessoa    TABLE     ?   CREATE TABLE public.pessoa (
    idpessoa bigint NOT NULL,
    flnatureza smallint NOT NULL,
    dsdocumento character varying(20) NOT NULL,
    nmprimeiro character varying(100) NOT NULL,
    dtregistro date,
    nmsegundo character varying(100)
);
    DROP TABLE public.pessoa;
       public         heap    postgres    false    3            ?            1259    16645    pessoa_idpessoa_seq    SEQUENCE     |   CREATE SEQUENCE public.pessoa_idpessoa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pessoa_idpessoa_seq;
       public          postgres    false    3    201            ?           0    0    pessoa_idpessoa_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pessoa_idpessoa_seq OWNED BY public.pessoa.idpessoa;
          public          postgres    false    200            -           2604    16658    endereco idendereco    DEFAULT     z   ALTER TABLE ONLY public.endereco ALTER COLUMN idendereco SET DEFAULT nextval('public.endereco_idendereco_seq'::regclass);
 B   ALTER TABLE public.endereco ALTER COLUMN idendereco DROP DEFAULT;
       public          postgres    false    202    203    203            ,           2604    16650    pessoa idpessoa    DEFAULT     r   ALTER TABLE ONLY public.pessoa ALTER COLUMN idpessoa SET DEFAULT nextval('public.pessoa_idpessoa_seq'::regclass);
 >   ALTER TABLE public.pessoa ALTER COLUMN idpessoa DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    16655    endereco 
   TABLE DATA           ?   COPY public.endereco (idendereco, idpessoa, dscep) FROM stdin;
    public          postgres    false    203            ?          0    16667    endereco_integracao 
   TABLE DATA           p   COPY public.endereco_integracao (idendereco, dsuf, nmcidade, nmbairro, nmlogradouro, dscomplemento) FROM stdin;
    public          postgres    false    204            ?          0    16647    pessoa 
   TABLE DATA           f   COPY public.pessoa (idpessoa, flnatureza, dsdocumento, nmprimeiro, dtregistro, nmsegundo) FROM stdin;
    public          postgres    false    201            ?           0    0    endereco_idendereco_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.endereco_idendereco_seq', 19, true);
          public          postgres    false    202            ?           0    0    pessoa_idpessoa_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pessoa_idpessoa_seq', 26, true);
          public          postgres    false    200            2           2606    16660    endereco endereco_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pk PRIMARY KEY (idendereco);
 >   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pk;
       public            postgres    false    203            4           2606    16671 )   endereco_integracao enderecointegracao_pk 
   CONSTRAINT     o   ALTER TABLE ONLY public.endereco_integracao
    ADD CONSTRAINT enderecointegracao_pk PRIMARY KEY (idendereco);
 S   ALTER TABLE ONLY public.endereco_integracao DROP CONSTRAINT enderecointegracao_pk;
       public            postgres    false    204            /           2606    16652    pessoa pessoa_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT pessoa_pk PRIMARY KEY (idpessoa);
 :   ALTER TABLE ONLY public.pessoa DROP CONSTRAINT pessoa_pk;
       public            postgres    false    201            0           1259    16666    endereco_idpessoa    INDEX     J   CREATE INDEX endereco_idpessoa ON public.endereco USING btree (idpessoa);
 %   DROP INDEX public.endereco_idpessoa;
       public            postgres    false    203            5           2606    16661    endereco endereco_fk_pessoa    FK CONSTRAINT     ?   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_fk_pessoa FOREIGN KEY (idpessoa) REFERENCES public.pessoa(idpessoa) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_fk_pessoa;
       public          postgres    false    2863    203    201            6           2606    16672 2   endereco_integracao enderecointegracao_fk_endereco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.endereco_integracao
    ADD CONSTRAINT enderecointegracao_fk_endereco FOREIGN KEY (idendereco) REFERENCES public.endereco(idendereco) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.endereco_integracao DROP CONSTRAINT enderecointegracao_fk_endereco;
       public          postgres    false    204    2866    203            ?   '   x?3??42?4?060142?2??42s?LL͸b???? j??      ?   c   x?U?1
?0 ?9yE_ ?騠⠈?K?A?B??~]?????lb?v?.???#?Fn!?zeQ??²?㕓x???ZSɒ?y??ݘ?4RN?͸????#      ?   O   x?32?4?433??LL??4202?54?54?H-J?,J?22?0΀??\???D???"??Ĕ?⒢Ĕ|?=... x??          ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16644    teste    DATABASE     e   CREATE DATABASE teste WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE teste;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    16655    endereco    TABLE     ?   CREATE TABLE public.endereco (
    idendereco bigint NOT NULL,
    idpessoa bigint NOT NULL,
    dscep character varying(15)
);
    DROP TABLE public.endereco;
       public         heap    postgres    false    3            ?            1259    16653    endereco_idendereco_seq    SEQUENCE     ?   CREATE SEQUENCE public.endereco_idendereco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.endereco_idendereco_seq;
       public          postgres    false    3    203            ?           0    0    endereco_idendereco_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.endereco_idendereco_seq OWNED BY public.endereco.idendereco;
          public          postgres    false    202            ?            1259    16667    endereco_integracao    TABLE       CREATE TABLE public.endereco_integracao (
    idendereco bigint NOT NULL,
    dsuf character varying(50),
    nmcidade character varying(100),
    nmbairro character varying(50),
    nmlogradouro character varying(100),
    dscomplemento character varying(100)
);
 '   DROP TABLE public.endereco_integracao;
       public         heap    postgres    false    3            ?            1259    16647    pessoa    TABLE     ?   CREATE TABLE public.pessoa (
    idpessoa bigint NOT NULL,
    flnatureza smallint NOT NULL,
    dsdocumento character varying(20) NOT NULL,
    nmprimeiro character varying(100) NOT NULL,
    dtregistro date,
    nmsegundo character varying(100)
);
    DROP TABLE public.pessoa;
       public         heap    postgres    false    3            ?            1259    16645    pessoa_idpessoa_seq    SEQUENCE     |   CREATE SEQUENCE public.pessoa_idpessoa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pessoa_idpessoa_seq;
       public          postgres    false    3    201            ?           0    0    pessoa_idpessoa_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pessoa_idpessoa_seq OWNED BY public.pessoa.idpessoa;
          public          postgres    false    200            -           2604    16658    endereco idendereco    DEFAULT     z   ALTER TABLE ONLY public.endereco ALTER COLUMN idendereco SET DEFAULT nextval('public.endereco_idendereco_seq'::regclass);
 B   ALTER TABLE public.endereco ALTER COLUMN idendereco DROP DEFAULT;
       public          postgres    false    202    203    203            ,           2604    16650    pessoa idpessoa    DEFAULT     r   ALTER TABLE ONLY public.pessoa ALTER COLUMN idpessoa SET DEFAULT nextval('public.pessoa_idpessoa_seq'::regclass);
 >   ALTER TABLE public.pessoa ALTER COLUMN idpessoa DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    16655    endereco 
   TABLE DATA           ?   COPY public.endereco (idendereco, idpessoa, dscep) FROM stdin;
    public          postgres    false    203   ?       ?          0    16667    endereco_integracao 
   TABLE DATA           p   COPY public.endereco_integracao (idendereco, dsuf, nmcidade, nmbairro, nmlogradouro, dscomplemento) FROM stdin;
    public          postgres    false    204   1        ?          0    16647    pessoa 
   TABLE DATA           f   COPY public.pessoa (idpessoa, flnatureza, dsdocumento, nmprimeiro, dtregistro, nmsegundo) FROM stdin;
    public          postgres    false    201   m        ?           0    0    endereco_idendereco_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.endereco_idendereco_seq', 19, true);
          public          postgres    false    202            ?           0    0    pessoa_idpessoa_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pessoa_idpessoa_seq', 26, true);
          public          postgres    false    200            2           2606    16660    endereco endereco_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pk PRIMARY KEY (idendereco);
 >   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pk;
       public            postgres    false    203            4           2606    16671 )   endereco_integracao enderecointegracao_pk 
   CONSTRAINT     o   ALTER TABLE ONLY public.endereco_integracao
    ADD CONSTRAINT enderecointegracao_pk PRIMARY KEY (idendereco);
 S   ALTER TABLE ONLY public.endereco_integracao DROP CONSTRAINT enderecointegracao_pk;
       public            postgres    false    204            /           2606    16652    pessoa pessoa_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT pessoa_pk PRIMARY KEY (idpessoa);
 :   ALTER TABLE ONLY public.pessoa DROP CONSTRAINT pessoa_pk;
       public            postgres    false    201            0           1259    16666    endereco_idpessoa    INDEX     J   CREATE INDEX endereco_idpessoa ON public.endereco USING btree (idpessoa);
 %   DROP INDEX public.endereco_idpessoa;
       public            postgres    false    203            5           2606    16661    endereco endereco_fk_pessoa    FK CONSTRAINT     ?   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_fk_pessoa FOREIGN KEY (idpessoa) REFERENCES public.pessoa(idpessoa) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_fk_pessoa;
       public          postgres    false    2863    203    201            6           2606    16672 2   endereco_integracao enderecointegracao_fk_endereco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.endereco_integracao
    ADD CONSTRAINT enderecointegracao_fk_endereco FOREIGN KEY (idendereco) REFERENCES public.endereco(idendereco) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.endereco_integracao DROP CONSTRAINT enderecointegracao_fk_endereco;
       public          postgres    false    204    2866    203           