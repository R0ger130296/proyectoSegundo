PGDMP     %                     w            reservalumen    11.1    11.1 :    F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            I           1262    17219    reservalumen    DATABASE     �   CREATE DATABASE reservalumen WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
    DROP DATABASE reservalumen;
             postgres    false            �            1259    17480    detalle_reserva    TABLE     �   CREATE TABLE public.detalle_reserva (
    detalle_id integer NOT NULL,
    mesa_id integer NOT NULL,
    reserva_id integer NOT NULL,
    numerousuarios integer NOT NULL
);
 #   DROP TABLE public.detalle_reserva;
       public         postgres    false            �            1259    17478    detalle_reserva_detalle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_reserva_detalle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.detalle_reserva_detalle_id_seq;
       public       postgres    false    209            J           0    0    detalle_reserva_detalle_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.detalle_reserva_detalle_id_seq OWNED BY public.detalle_reserva.detalle_id;
            public       postgres    false    208            �            1259    17454    estado    TABLE     k   CREATE TABLE public.estado (
    estado_id integer NOT NULL,
    nombre character varying(255) NOT NULL
);
    DROP TABLE public.estado;
       public         postgres    false            �            1259    17452    estado_estado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.estado_estado_id_seq;
       public       postgres    false    205            K           0    0    estado_estado_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.estado_estado_id_seq OWNED BY public.estado.estado_id;
            public       postgres    false    204            �            1259    17462    mesa    TABLE     y   CREATE TABLE public.mesa (
    mesa_id integer NOT NULL,
    tipo_id integer NOT NULL,
    estado_id integer NOT NULL
);
    DROP TABLE public.mesa;
       public         postgres    false            �            1259    17460    mesa_mesa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mesa_mesa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.mesa_mesa_id_seq;
       public       postgres    false    207            L           0    0    mesa_mesa_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.mesa_mesa_id_seq OWNED BY public.mesa.mesa_id;
            public       postgres    false    206            �            1259    17222 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false            �            1259    17220    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    197            M           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196            �            1259    17411    person    TABLE     �   CREATE TABLE public.person (
    pers_ci integer NOT NULL,
    nombre character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    correo character varying(255) NOT NULL,
    clave character varying(255) NOT NULL
);
    DROP TABLE public.person;
       public         postgres    false            �            1259    17409    person_pers_ci_seq    SEQUENCE     �   CREATE SEQUENCE public.person_pers_ci_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.person_pers_ci_seq;
       public       postgres    false    199            N           0    0    person_pers_ci_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.person_pers_ci_seq OWNED BY public.person.pers_ci;
            public       postgres    false    198            �            1259    17430    reserva    TABLE     x   CREATE TABLE public.reserva (
    reserva_id integer NOT NULL,
    pers_ci integer NOT NULL,
    fecha date NOT NULL
);
    DROP TABLE public.reserva;
       public         postgres    false            �            1259    17428    reserva_reserva_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reserva_reserva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.reserva_reserva_id_seq;
       public       postgres    false    201            O           0    0    reserva_reserva_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.reserva_reserva_id_seq OWNED BY public.reserva.reserva_id;
            public       postgres    false    200            �            1259    17443 	   tipo_mesa    TABLE     �   CREATE TABLE public.tipo_mesa (
    tipo_id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    capacidad character varying(255) NOT NULL
);
    DROP TABLE public.tipo_mesa;
       public         postgres    false            �            1259    17441    tipo_mesa_tipo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_mesa_tipo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipo_mesa_tipo_id_seq;
       public       postgres    false    203            P           0    0    tipo_mesa_tipo_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipo_mesa_tipo_id_seq OWNED BY public.tipo_mesa.tipo_id;
            public       postgres    false    202            �
           2604    17483    detalle_reserva detalle_id    DEFAULT     �   ALTER TABLE ONLY public.detalle_reserva ALTER COLUMN detalle_id SET DEFAULT nextval('public.detalle_reserva_detalle_id_seq'::regclass);
 I   ALTER TABLE public.detalle_reserva ALTER COLUMN detalle_id DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    17457    estado estado_id    DEFAULT     t   ALTER TABLE ONLY public.estado ALTER COLUMN estado_id SET DEFAULT nextval('public.estado_estado_id_seq'::regclass);
 ?   ALTER TABLE public.estado ALTER COLUMN estado_id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    17465    mesa mesa_id    DEFAULT     l   ALTER TABLE ONLY public.mesa ALTER COLUMN mesa_id SET DEFAULT nextval('public.mesa_mesa_id_seq'::regclass);
 ;   ALTER TABLE public.mesa ALTER COLUMN mesa_id DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    17225    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    17414    person pers_ci    DEFAULT     p   ALTER TABLE ONLY public.person ALTER COLUMN pers_ci SET DEFAULT nextval('public.person_pers_ci_seq'::regclass);
 =   ALTER TABLE public.person ALTER COLUMN pers_ci DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    17433    reserva reserva_id    DEFAULT     x   ALTER TABLE ONLY public.reserva ALTER COLUMN reserva_id SET DEFAULT nextval('public.reserva_reserva_id_seq'::regclass);
 A   ALTER TABLE public.reserva ALTER COLUMN reserva_id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    17446    tipo_mesa tipo_id    DEFAULT     v   ALTER TABLE ONLY public.tipo_mesa ALTER COLUMN tipo_id SET DEFAULT nextval('public.tipo_mesa_tipo_id_seq'::regclass);
 @   ALTER TABLE public.tipo_mesa ALTER COLUMN tipo_id DROP DEFAULT;
       public       postgres    false    203    202    203            C          0    17480    detalle_reserva 
   TABLE DATA               Z   COPY public.detalle_reserva (detalle_id, mesa_id, reserva_id, numerousuarios) FROM stdin;
    public       postgres    false    209   �?       ?          0    17454    estado 
   TABLE DATA               3   COPY public.estado (estado_id, nombre) FROM stdin;
    public       postgres    false    205   �?       A          0    17462    mesa 
   TABLE DATA               ;   COPY public.mesa (mesa_id, tipo_id, estado_id) FROM stdin;
    public       postgres    false    207   @       7          0    17222 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197   B@       9          0    17411    person 
   TABLE DATA               J   COPY public.person (pers_ci, nombre, telefono, correo, clave) FROM stdin;
    public       postgres    false    199   A       ;          0    17430    reserva 
   TABLE DATA               =   COPY public.reserva (reserva_id, pers_ci, fecha) FROM stdin;
    public       postgres    false    201   tA       =          0    17443 	   tipo_mesa 
   TABLE DATA               D   COPY public.tipo_mesa (tipo_id, descripcion, capacidad) FROM stdin;
    public       postgres    false    203   �A       Q           0    0    detalle_reserva_detalle_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.detalle_reserva_detalle_id_seq', 3, true);
            public       postgres    false    208            R           0    0    estado_estado_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.estado_estado_id_seq', 1, true);
            public       postgres    false    204            S           0    0    mesa_mesa_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mesa_mesa_id_seq', 1, true);
            public       postgres    false    206            T           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 15, true);
            public       postgres    false    196            U           0    0    person_pers_ci_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.person_pers_ci_seq', 1, false);
            public       postgres    false    198            V           0    0    reserva_reserva_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.reserva_reserva_id_seq', 1, true);
            public       postgres    false    200            W           0    0    tipo_mesa_tipo_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tipo_mesa_tipo_id_seq', 1, true);
            public       postgres    false    202            �
           2606    17485 $   detalle_reserva detalle_reserva_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.detalle_reserva
    ADD CONSTRAINT detalle_reserva_pkey PRIMARY KEY (detalle_id);
 N   ALTER TABLE ONLY public.detalle_reserva DROP CONSTRAINT detalle_reserva_pkey;
       public         postgres    false    209            �
           2606    17459    estado estado_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (estado_id);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public         postgres    false    205            �
           2606    17467    mesa mesa_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_pkey PRIMARY KEY (mesa_id);
 8   ALTER TABLE ONLY public.mesa DROP CONSTRAINT mesa_pkey;
       public         postgres    false    207            �
           2606    17227    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            �
           2606    17419    person person_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (pers_ci);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public         postgres    false    199            �
           2606    17435    reserva reserva_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (reserva_id);
 >   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_pkey;
       public         postgres    false    201            �
           2606    17451    tipo_mesa tipo_mesa_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.tipo_mesa
    ADD CONSTRAINT tipo_mesa_pkey PRIMARY KEY (tipo_id);
 B   ALTER TABLE ONLY public.tipo_mesa DROP CONSTRAINT tipo_mesa_pkey;
       public         postgres    false    203            �
           2606    17486 /   detalle_reserva detalle_reserva_mesa_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_reserva
    ADD CONSTRAINT detalle_reserva_mesa_id_foreign FOREIGN KEY (mesa_id) REFERENCES public.mesa(mesa_id);
 Y   ALTER TABLE ONLY public.detalle_reserva DROP CONSTRAINT detalle_reserva_mesa_id_foreign;
       public       postgres    false    207    209    2741            �
           2606    17491 2   detalle_reserva detalle_reserva_reserva_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_reserva
    ADD CONSTRAINT detalle_reserva_reserva_id_foreign FOREIGN KEY (reserva_id) REFERENCES public.reserva(reserva_id);
 \   ALTER TABLE ONLY public.detalle_reserva DROP CONSTRAINT detalle_reserva_reserva_id_foreign;
       public       postgres    false    201    209    2735            �
           2606    17473    mesa mesa_estado_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_estado_id_foreign FOREIGN KEY (estado_id) REFERENCES public.estado(estado_id);
 E   ALTER TABLE ONLY public.mesa DROP CONSTRAINT mesa_estado_id_foreign;
       public       postgres    false    2739    207    205            �
           2606    17468    mesa mesa_tipo_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_tipo_id_foreign FOREIGN KEY (tipo_id) REFERENCES public.tipo_mesa(tipo_id);
 C   ALTER TABLE ONLY public.mesa DROP CONSTRAINT mesa_tipo_id_foreign;
       public       postgres    false    207    2737    203            �
           2606    17436    reserva reserva_pers_ci_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pers_ci_foreign FOREIGN KEY (pers_ci) REFERENCES public.person(pers_ci);
 I   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_pers_ci_foreign;
       public       postgres    false    2733    199    201            C      x�3�4BS�=... ��      ?      x�3�t�,.���L�I����� 5�      A      x�3�4�4����� �X      7   �   x�}�A�� �u|�6�]*!:��RfR%��T�f�h7�y��o��`L�D��1}o����l���J>/2!���}�����؎��̍��m���Y�[4��������NI2��#�!�����!�؀���f�f��]��e�=0�c$ԓ��\hz��z��DE���E@�,��]U[���v���E��*t��\[�� ���ǃ      9   H   x�347��01231����H�WH-�I�J�4�4��47����,�e���s3s���s9��ML͸b���� ҫ�      ;   %   x�3�447��01231�420��50�52����� No�      =   '   x�3��M-NTpK����L,R��OI-�K�4����� ���     