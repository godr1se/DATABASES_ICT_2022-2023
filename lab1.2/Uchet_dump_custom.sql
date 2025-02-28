PGDMP                         {            Uchet    15.2    15.2 {    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16399    Uchet    DATABASE     {   CREATE DATABASE "Uchet" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Uchet";
                postgres    false                        2615    16400    Uchet    SCHEMA        CREATE SCHEMA "Uchet";
    DROP SCHEMA "Uchet";
                postgres    false            s           1247    16705    status_of_purchase    TYPE     �   CREATE TYPE "Uchet".status_of_purchase AS ENUM (
    'Оплачен',
    'Ожидает оплаты',
    'Не оплачен'
);
 &   DROP TYPE "Uchet".status_of_purchase;
       Uchet          postgres    false    6            �           1247    16799    status_of_stage    TYPE     �   CREATE TYPE "Uchet".status_of_stage AS ENUM (
    'Не начат',
    'Выполняется',
    'Заморожен',
    'Звершен',
    'Завершен'
);
 #   DROP TYPE "Uchet".status_of_stage;
       Uchet          postgres    false    6                       1247    16760    status_of_task    TYPE        CREATE TYPE "Uchet".status_of_task AS ENUM (
    'Выполняется',
    'Заморожен',
    'Завершен'
);
 "   DROP TYPE "Uchet".status_of_task;
       Uchet          postgres    false    6            g           1247    16660    status_vipolneniya    TYPE     �   CREATE TYPE "Uchet".status_vipolneniya AS ENUM (
    'Не начат',
    'Выполняется',
    'Заморожен',
    'Завершен'
);
 &   DROP TYPE "Uchet".status_vipolneniya;
       Uchet          postgres    false    6            �            1259    16670    client    TABLE     �   CREATE TABLE "Uchet".client (
    id_organisation integer NOT NULL,
    name_of_organisation character(50) NOT NULL,
    contacts_of_organisation character(11) NOT NULL
);
    DROP TABLE "Uchet".client;
       Uchet         heap    postgres    false    6            �            1259    16669    client_id_organisation_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".client_id_organisation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "Uchet".client_id_organisation_seq;
       Uchet          postgres    false    6    225            �           0    0    client_id_organisation_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE "Uchet".client_id_organisation_seq OWNED BY "Uchet".client.id_organisation;
          Uchet          postgres    false    224            �            1259    16712 
   department    TABLE     �   CREATE TABLE "Uchet".department (
    id_department integer NOT NULL,
    name_of_department character(50) NOT NULL,
    contacts_of_department character(11) NOT NULL
);
    DROP TABLE "Uchet".department;
       Uchet         heap    postgres    false    6            �            1259    16711    department_id_department_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".department_id_department_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "Uchet".department_id_department_seq;
       Uchet          postgres    false    6    232            �           0    0    department_id_department_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "Uchet".department_id_department_seq OWNED BY "Uchet".department.id_department;
          Uchet          postgres    false    231            �            1259    16698    employee    TABLE     �   CREATE TABLE "Uchet".employee (
    id_employee integer NOT NULL,
    name_of_employee character(50) NOT NULL,
    contacts_of_employee character(11) NOT NULL
);
    DROP TABLE "Uchet".employee;
       Uchet         heap    postgres    false    6            �            1259    16697    employee_id_employee_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".employee_id_employee_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "Uchet".employee_id_employee_seq;
       Uchet          postgres    false    6    230            �           0    0    employee_id_employee_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "Uchet".employee_id_employee_seq OWNED BY "Uchet".employee.id_employee;
          Uchet          postgres    false    229            �            1259    16637    employee_in_department    TABLE     <  CREATE TABLE "Uchet".employee_in_department (
    id_employee_in_department integer NOT NULL,
    hours_of_work character(20) NOT NULL,
    salary integer NOT NULL,
    id_department integer NOT NULL,
    id_employee integer NOT NULL,
    id_positions integer NOT NULL,
    CONSTRAINT salary CHECK ((salary > 0))
);
 +   DROP TABLE "Uchet".employee_in_department;
       Uchet         heap    postgres    false    6            �            1259    16634 (   employee_in_department_id_department_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".employee_in_department_id_department_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "Uchet".employee_in_department_id_department_seq;
       Uchet          postgres    false    6    222            �           0    0 (   employee_in_department_id_department_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "Uchet".employee_in_department_id_department_seq OWNED BY "Uchet".employee_in_department.id_department;
          Uchet          postgres    false    219            �            1259    16633 4   employee_in_department_id_employee_in_department_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".employee_in_department_id_employee_in_department_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE "Uchet".employee_in_department_id_employee_in_department_seq;
       Uchet          postgres    false    6    222            �           0    0 4   employee_in_department_id_employee_in_department_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "Uchet".employee_in_department_id_employee_in_department_seq OWNED BY "Uchet".employee_in_department.id_employee_in_department;
          Uchet          postgres    false    218            �            1259    16635 &   employee_in_department_id_employee_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".employee_in_department_id_employee_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "Uchet".employee_in_department_id_employee_seq;
       Uchet          postgres    false    222    6            �           0    0 &   employee_in_department_id_employee_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "Uchet".employee_in_department_id_employee_seq OWNED BY "Uchet".employee_in_department.id_employee;
          Uchet          postgres    false    220            �            1259    16636 '   employee_in_department_id_positions_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".employee_in_department_id_positions_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "Uchet".employee_in_department_id_positions_seq;
       Uchet          postgres    false    222    6            �           0    0 '   employee_in_department_id_positions_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE "Uchet".employee_in_department_id_positions_seq OWNED BY "Uchet".employee_in_department.id_positions;
          Uchet          postgres    false    221            �            1259    16724 	   positions    TABLE     �   CREATE TABLE "Uchet".positions (
    id_position integer NOT NULL,
    name_of_position character(50) NOT NULL,
    salary_of_position integer NOT NULL,
    CONSTRAINT salary_of_position CHECK ((salary_of_position >= 0))
);
    DROP TABLE "Uchet".positions;
       Uchet         heap    postgres    false    6            �            1259    16723    positions_id_position_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".positions_id_position_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "Uchet".positions_id_position_seq;
       Uchet          postgres    false    6    234            �           0    0    positions_id_position_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "Uchet".positions_id_position_seq OWNED BY "Uchet".positions.id_position;
          Uchet          postgres    false    233            �            1259    16618    project    TABLE     �  CREATE TABLE "Uchet".project (
    id_project integer NOT NULL,
    name_of_project character(50) NOT NULL,
    id_client integer NOT NULL,
    price_of_project integer NOT NULL,
    date_of_contract_sign date NOT NULL,
    deadline_of_project date NOT NULL,
    date_of_start date,
    date_of_finish date,
    id_employee_in_department integer NOT NULL,
    status_vipolneniya "Uchet".status_vipolneniya NOT NULL,
    CONSTRAINT date_of_contract_sign CHECK ((date_of_contract_sign > '1999-01-01'::date)),
    CONSTRAINT date_of_finish CHECK ((date_of_finish > '1999-01-01'::date)),
    CONSTRAINT date_of_start CHECK ((date_of_start > '1999-01-01'::date)),
    CONSTRAINT "date_of_start <= date_of_finish" CHECK ((date_of_start <= date_of_finish)),
    CONSTRAINT deadline_of_project CHECK ((deadline_of_project > '1999-01-01'::date)),
    CONSTRAINT price_of_project CHECK ((price_of_project > 0))
);
    DROP TABLE "Uchet".project;
       Uchet         heap    postgres    false    6    871            �            1259    16617    project_id_client_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".project_id_client_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "Uchet".project_id_client_seq;
       Uchet          postgres    false    6    217            �           0    0    project_id_client_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "Uchet".project_id_client_seq OWNED BY "Uchet".project.id_client;
          Uchet          postgres    false    216            �            1259    16645 %   project_id_employee_in_department_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".project_id_employee_in_department_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "Uchet".project_id_employee_in_department_seq;
       Uchet          postgres    false    217    6            �           0    0 %   project_id_employee_in_department_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE "Uchet".project_id_employee_in_department_seq OWNED BY "Uchet".project.id_employee_in_department;
          Uchet          postgres    false    223            �            1259    16615    project_id_project_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".project_id_project_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "Uchet".project_id_project_seq;
       Uchet          postgres    false    217    6            �           0    0    project_id_project_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "Uchet".project_id_project_seq OWNED BY "Uchet".project.id_project;
          Uchet          postgres    false    215            �            1259    16683    purchase    TABLE       CREATE TABLE "Uchet".purchase (
    id_purchase integer NOT NULL,
    id_project integer NOT NULL,
    project_price integer NOT NULL,
    date_of_purchase date,
    purchase_status "Uchet".status_of_purchase NOT NULL,
    CONSTRAINT project_price CHECK ((project_price > 0))
);
    DROP TABLE "Uchet".purchase;
       Uchet         heap    postgres    false    883    6            �            1259    16682    purchase_id_project_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".purchase_id_project_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE "Uchet".purchase_id_project_seq;
       Uchet          postgres    false    6    228            �           0    0    purchase_id_project_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "Uchet".purchase_id_project_seq OWNED BY "Uchet".purchase.id_project;
          Uchet          postgres    false    227            �            1259    16681    purchase_id_purchase_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".purchase_id_purchase_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "Uchet".purchase_id_purchase_seq;
       Uchet          postgres    false    6    228            �           0    0    purchase_id_purchase_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "Uchet".purchase_id_purchase_seq OWNED BY "Uchet".purchase.id_purchase;
          Uchet          postgres    false    226            �            1259    16780    stage    TABLE     �  CREATE TABLE "Uchet".stage (
    id_stage integer NOT NULL,
    id_task integer NOT NULL,
    id_employee integer NOT NULL,
    date_of_start date,
    date_of_finish date,
    name_of_work character(50) NOT NULL,
    salary_of_stage integer NOT NULL,
    stage_status "Uchet".status_of_stage NOT NULL,
    CONSTRAINT "date_of_finish >= date_of_start" CHECK ((date_of_finish >= date_of_start)),
    CONSTRAINT salary_of_stage CHECK ((salary_of_stage >= 0))
);
    DROP TABLE "Uchet".stage;
       Uchet         heap    postgres    false    6    901            �            1259    16779    stage_id_employee_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".stage_id_employee_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "Uchet".stage_id_employee_seq;
       Uchet          postgres    false    242    6            �           0    0    stage_id_employee_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "Uchet".stage_id_employee_seq OWNED BY "Uchet".stage.id_employee;
          Uchet          postgres    false    241            �            1259    16777    stage_id_stage_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".stage_id_stage_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Uchet".stage_id_stage_seq;
       Uchet          postgres    false    6    242            �           0    0    stage_id_stage_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Uchet".stage_id_stage_seq OWNED BY "Uchet".stage.id_stage;
          Uchet          postgres    false    239            �            1259    16778    stage_id_task_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".stage_id_task_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE "Uchet".stage_id_task_seq;
       Uchet          postgres    false    242    6            �           0    0    stage_id_task_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "Uchet".stage_id_task_seq OWNED BY "Uchet".stage.id_task;
          Uchet          postgres    false    240            �            1259    16749    task    TABLE     �  CREATE TABLE "Uchet".task (
    id_task integer NOT NULL,
    id_inspector integer NOT NULL,
    id_project integer NOT NULL,
    name_of_task character(50) NOT NULL,
    deadline_of_task date NOT NULL,
    salary_for_task integer NOT NULL,
    date_of_inspection date,
    task_status "Uchet".status_of_task NOT NULL,
    CONSTRAINT date_of_inspection CHECK ((date_of_inspection > '1990-01-01'::date)),
    CONSTRAINT salary_for_task CHECK ((salary_for_task >= 0))
);
    DROP TABLE "Uchet".task;
       Uchet         heap    postgres    false    895    6            �            1259    16747    task_id_inspector_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".task_id_inspector_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "Uchet".task_id_inspector_seq;
       Uchet          postgres    false    6    238            �           0    0    task_id_inspector_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "Uchet".task_id_inspector_seq OWNED BY "Uchet".task.id_inspector;
          Uchet          postgres    false    236            �            1259    16748    task_id_project_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".task_id_project_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "Uchet".task_id_project_seq;
       Uchet          postgres    false    6    238            �           0    0    task_id_project_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "Uchet".task_id_project_seq OWNED BY "Uchet".task.id_project;
          Uchet          postgres    false    237            �            1259    16746    task_id_task_seq    SEQUENCE     �   CREATE SEQUENCE "Uchet".task_id_task_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "Uchet".task_id_task_seq;
       Uchet          postgres    false    6    238            �           0    0    task_id_task_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "Uchet".task_id_task_seq OWNED BY "Uchet".task.id_task;
          Uchet          postgres    false    235            �           2604    16673    client id_organisation    DEFAULT     �   ALTER TABLE ONLY "Uchet".client ALTER COLUMN id_organisation SET DEFAULT nextval('"Uchet".client_id_organisation_seq'::regclass);
 F   ALTER TABLE "Uchet".client ALTER COLUMN id_organisation DROP DEFAULT;
       Uchet          postgres    false    225    224    225            �           2604    16715    department id_department    DEFAULT     �   ALTER TABLE ONLY "Uchet".department ALTER COLUMN id_department SET DEFAULT nextval('"Uchet".department_id_department_seq'::regclass);
 H   ALTER TABLE "Uchet".department ALTER COLUMN id_department DROP DEFAULT;
       Uchet          postgres    false    231    232    232            �           2604    16701    employee id_employee    DEFAULT     ~   ALTER TABLE ONLY "Uchet".employee ALTER COLUMN id_employee SET DEFAULT nextval('"Uchet".employee_id_employee_seq'::regclass);
 D   ALTER TABLE "Uchet".employee ALTER COLUMN id_employee DROP DEFAULT;
       Uchet          postgres    false    230    229    230            �           2604    16640 0   employee_in_department id_employee_in_department    DEFAULT     �   ALTER TABLE ONLY "Uchet".employee_in_department ALTER COLUMN id_employee_in_department SET DEFAULT nextval('"Uchet".employee_in_department_id_employee_in_department_seq'::regclass);
 `   ALTER TABLE "Uchet".employee_in_department ALTER COLUMN id_employee_in_department DROP DEFAULT;
       Uchet          postgres    false    218    222    222            �           2604    16641 $   employee_in_department id_department    DEFAULT     �   ALTER TABLE ONLY "Uchet".employee_in_department ALTER COLUMN id_department SET DEFAULT nextval('"Uchet".employee_in_department_id_department_seq'::regclass);
 T   ALTER TABLE "Uchet".employee_in_department ALTER COLUMN id_department DROP DEFAULT;
       Uchet          postgres    false    222    219    222            �           2604    16642 "   employee_in_department id_employee    DEFAULT     �   ALTER TABLE ONLY "Uchet".employee_in_department ALTER COLUMN id_employee SET DEFAULT nextval('"Uchet".employee_in_department_id_employee_seq'::regclass);
 R   ALTER TABLE "Uchet".employee_in_department ALTER COLUMN id_employee DROP DEFAULT;
       Uchet          postgres    false    220    222    222            �           2604    16643 #   employee_in_department id_positions    DEFAULT     �   ALTER TABLE ONLY "Uchet".employee_in_department ALTER COLUMN id_positions SET DEFAULT nextval('"Uchet".employee_in_department_id_positions_seq'::regclass);
 S   ALTER TABLE "Uchet".employee_in_department ALTER COLUMN id_positions DROP DEFAULT;
       Uchet          postgres    false    221    222    222            �           2604    16727    positions id_position    DEFAULT     �   ALTER TABLE ONLY "Uchet".positions ALTER COLUMN id_position SET DEFAULT nextval('"Uchet".positions_id_position_seq'::regclass);
 E   ALTER TABLE "Uchet".positions ALTER COLUMN id_position DROP DEFAULT;
       Uchet          postgres    false    234    233    234            �           2604    16621    project id_project    DEFAULT     z   ALTER TABLE ONLY "Uchet".project ALTER COLUMN id_project SET DEFAULT nextval('"Uchet".project_id_project_seq'::regclass);
 B   ALTER TABLE "Uchet".project ALTER COLUMN id_project DROP DEFAULT;
       Uchet          postgres    false    217    215    217            �           2604    16623    project id_client    DEFAULT     x   ALTER TABLE ONLY "Uchet".project ALTER COLUMN id_client SET DEFAULT nextval('"Uchet".project_id_client_seq'::regclass);
 A   ALTER TABLE "Uchet".project ALTER COLUMN id_client DROP DEFAULT;
       Uchet          postgres    false    217    216    217            �           2604    16646 !   project id_employee_in_department    DEFAULT     �   ALTER TABLE ONLY "Uchet".project ALTER COLUMN id_employee_in_department SET DEFAULT nextval('"Uchet".project_id_employee_in_department_seq'::regclass);
 Q   ALTER TABLE "Uchet".project ALTER COLUMN id_employee_in_department DROP DEFAULT;
       Uchet          postgres    false    223    217            �           2604    16686    purchase id_purchase    DEFAULT     ~   ALTER TABLE ONLY "Uchet".purchase ALTER COLUMN id_purchase SET DEFAULT nextval('"Uchet".purchase_id_purchase_seq'::regclass);
 D   ALTER TABLE "Uchet".purchase ALTER COLUMN id_purchase DROP DEFAULT;
       Uchet          postgres    false    226    228    228            �           2604    16687    purchase id_project    DEFAULT     |   ALTER TABLE ONLY "Uchet".purchase ALTER COLUMN id_project SET DEFAULT nextval('"Uchet".purchase_id_project_seq'::regclass);
 C   ALTER TABLE "Uchet".purchase ALTER COLUMN id_project DROP DEFAULT;
       Uchet          postgres    false    228    227    228            �           2604    16783    stage id_stage    DEFAULT     r   ALTER TABLE ONLY "Uchet".stage ALTER COLUMN id_stage SET DEFAULT nextval('"Uchet".stage_id_stage_seq'::regclass);
 >   ALTER TABLE "Uchet".stage ALTER COLUMN id_stage DROP DEFAULT;
       Uchet          postgres    false    239    242    242            �           2604    16784    stage id_task    DEFAULT     p   ALTER TABLE ONLY "Uchet".stage ALTER COLUMN id_task SET DEFAULT nextval('"Uchet".stage_id_task_seq'::regclass);
 =   ALTER TABLE "Uchet".stage ALTER COLUMN id_task DROP DEFAULT;
       Uchet          postgres    false    242    240    242            �           2604    16785    stage id_employee    DEFAULT     x   ALTER TABLE ONLY "Uchet".stage ALTER COLUMN id_employee SET DEFAULT nextval('"Uchet".stage_id_employee_seq'::regclass);
 A   ALTER TABLE "Uchet".stage ALTER COLUMN id_employee DROP DEFAULT;
       Uchet          postgres    false    241    242    242            �           2604    16752    task id_task    DEFAULT     n   ALTER TABLE ONLY "Uchet".task ALTER COLUMN id_task SET DEFAULT nextval('"Uchet".task_id_task_seq'::regclass);
 <   ALTER TABLE "Uchet".task ALTER COLUMN id_task DROP DEFAULT;
       Uchet          postgres    false    235    238    238            �           2604    16753    task id_inspector    DEFAULT     x   ALTER TABLE ONLY "Uchet".task ALTER COLUMN id_inspector SET DEFAULT nextval('"Uchet".task_id_inspector_seq'::regclass);
 A   ALTER TABLE "Uchet".task ALTER COLUMN id_inspector DROP DEFAULT;
       Uchet          postgres    false    236    238    238            �           2604    16754    task id_project    DEFAULT     t   ALTER TABLE ONLY "Uchet".task ALTER COLUMN id_project SET DEFAULT nextval('"Uchet".task_id_project_seq'::regclass);
 ?   ALTER TABLE "Uchet".task ALTER COLUMN id_project DROP DEFAULT;
       Uchet          postgres    false    237    238    238            y          0    16670    client 
   TABLE DATA           b   COPY "Uchet".client (id_organisation, name_of_organisation, contacts_of_organisation) FROM stdin;
    Uchet          postgres    false    225   t�       �          0    16712 
   department 
   TABLE DATA           `   COPY "Uchet".department (id_department, name_of_department, contacts_of_department) FROM stdin;
    Uchet          postgres    false    232   ʛ       ~          0    16698    employee 
   TABLE DATA           X   COPY "Uchet".employee (id_employee, name_of_employee, contacts_of_employee) FROM stdin;
    Uchet          postgres    false    230   (�       v          0    16637    employee_in_department 
   TABLE DATA           �   COPY "Uchet".employee_in_department (id_employee_in_department, hours_of_work, salary, id_department, id_employee, id_positions) FROM stdin;
    Uchet          postgres    false    222   ��       �          0    16724 	   positions 
   TABLE DATA           W   COPY "Uchet".positions (id_position, name_of_position, salary_of_position) FROM stdin;
    Uchet          postgres    false    234   �       q          0    16618    project 
   TABLE DATA           �   COPY "Uchet".project (id_project, name_of_project, id_client, price_of_project, date_of_contract_sign, deadline_of_project, date_of_start, date_of_finish, id_employee_in_department, status_vipolneniya) FROM stdin;
    Uchet          postgres    false    217   ]�       |          0    16683    purchase 
   TABLE DATA           n   COPY "Uchet".purchase (id_purchase, id_project, project_price, date_of_purchase, purchase_status) FROM stdin;
    Uchet          postgres    false    228   �       �          0    16780    stage 
   TABLE DATA           �   COPY "Uchet".stage (id_stage, id_task, id_employee, date_of_start, date_of_finish, name_of_work, salary_of_stage, stage_status) FROM stdin;
    Uchet          postgres    false    242   u�       �          0    16749    task 
   TABLE DATA           �   COPY "Uchet".task (id_task, id_inspector, id_project, name_of_task, deadline_of_task, salary_for_task, date_of_inspection, task_status) FROM stdin;
    Uchet          postgres    false    238   ��       �           0    0    client_id_organisation_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"Uchet".client_id_organisation_seq', 1, false);
          Uchet          postgres    false    224            �           0    0    department_id_department_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"Uchet".department_id_department_seq', 1, false);
          Uchet          postgres    false    231            �           0    0    employee_id_employee_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"Uchet".employee_id_employee_seq', 1, false);
          Uchet          postgres    false    229            �           0    0 (   employee_in_department_id_department_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('"Uchet".employee_in_department_id_department_seq', 1, true);
          Uchet          postgres    false    219            �           0    0 4   employee_in_department_id_employee_in_department_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('"Uchet".employee_in_department_id_employee_in_department_seq', 1, true);
          Uchet          postgres    false    218            �           0    0 &   employee_in_department_id_employee_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"Uchet".employee_in_department_id_employee_seq', 1, false);
          Uchet          postgres    false    220            �           0    0 '   employee_in_department_id_positions_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"Uchet".employee_in_department_id_positions_seq', 1, true);
          Uchet          postgres    false    221            �           0    0    positions_id_position_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"Uchet".positions_id_position_seq', 1, false);
          Uchet          postgres    false    233            �           0    0    project_id_client_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"Uchet".project_id_client_seq', 1, false);
          Uchet          postgres    false    216            �           0    0 %   project_id_employee_in_department_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"Uchet".project_id_employee_in_department_seq', 1, false);
          Uchet          postgres    false    223            �           0    0    project_id_project_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"Uchet".project_id_project_seq', 1, false);
          Uchet          postgres    false    215            �           0    0    purchase_id_project_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"Uchet".purchase_id_project_seq', 1, false);
          Uchet          postgres    false    227            �           0    0    purchase_id_purchase_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"Uchet".purchase_id_purchase_seq', 1, false);
          Uchet          postgres    false    226            �           0    0    stage_id_employee_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"Uchet".stage_id_employee_seq', 1, false);
          Uchet          postgres    false    241            �           0    0    stage_id_stage_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Uchet".stage_id_stage_seq', 1, false);
          Uchet          postgres    false    239            �           0    0    stage_id_task_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"Uchet".stage_id_task_seq', 1, false);
          Uchet          postgres    false    240            �           0    0    task_id_inspector_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"Uchet".task_id_inspector_seq', 1, false);
          Uchet          postgres    false    236            �           0    0    task_id_project_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"Uchet".task_id_project_seq', 1, false);
          Uchet          postgres    false    237            �           0    0    task_id_task_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"Uchet".task_id_task_seq', 1, false);
          Uchet          postgres    false    235            �           2606    16675    client client_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Uchet".client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id_organisation);
 =   ALTER TABLE ONLY "Uchet".client DROP CONSTRAINT client_pkey;
       Uchet            postgres    false    225            �           2606    16691    purchase date_of_purchase    CHECK CONSTRAINT     |   ALTER TABLE "Uchet".purchase
    ADD CONSTRAINT date_of_purchase CHECK ((date_of_purchase > '1990-01-01'::date)) NOT VALID;
 ?   ALTER TABLE "Uchet".purchase DROP CONSTRAINT date_of_purchase;
       Uchet          postgres    false    228    228            �           2606    16717    department department_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY "Uchet".department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id_department);
 E   ALTER TABLE ONLY "Uchet".department DROP CONSTRAINT department_pkey;
       Uchet            postgres    false    232            �           2606    16652 2   employee_in_department employee_in_department_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "Uchet".employee_in_department
    ADD CONSTRAINT employee_in_department_pkey PRIMARY KEY (id_employee_in_department);
 ]   ALTER TABLE ONLY "Uchet".employee_in_department DROP CONSTRAINT employee_in_department_pkey;
       Uchet            postgres    false    222            �           2606    16703    employee employee_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Uchet".employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id_employee);
 A   ALTER TABLE ONLY "Uchet".employee DROP CONSTRAINT employee_pkey;
       Uchet            postgres    false    230            �           2606    16730    positions positions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Uchet".positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (id_position);
 C   ALTER TABLE ONLY "Uchet".positions DROP CONSTRAINT positions_pkey;
       Uchet            postgres    false    234            �           2606    16626    project project_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "Uchet".project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id_project);
 ?   ALTER TABLE ONLY "Uchet".project DROP CONSTRAINT project_pkey;
       Uchet            postgres    false    217            �           2606    16689    purchase purchase_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Uchet".purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (id_purchase);
 A   ALTER TABLE ONLY "Uchet".purchase DROP CONSTRAINT purchase_pkey;
       Uchet            postgres    false    228            �           2606    16787    stage stage_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "Uchet".stage
    ADD CONSTRAINT stage_pkey PRIMARY KEY (id_stage);
 ;   ALTER TABLE ONLY "Uchet".stage DROP CONSTRAINT stage_pkey;
       Uchet            postgres    false    242            �           2606    16758    task task_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY "Uchet".task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id_task);
 9   ALTER TABLE ONLY "Uchet".task DROP CONSTRAINT task_pkey;
       Uchet            postgres    false    238            �           2606    16676    project id_client    FK CONSTRAINT     �   ALTER TABLE ONLY "Uchet".project
    ADD CONSTRAINT id_client FOREIGN KEY (id_client) REFERENCES "Uchet".client(id_organisation) NOT VALID;
 <   ALTER TABLE ONLY "Uchet".project DROP CONSTRAINT id_client;
       Uchet          postgres    false    3274    225    217            �           2606    16731 $   employee_in_department id_department    FK CONSTRAINT     �   ALTER TABLE ONLY "Uchet".employee_in_department
    ADD CONSTRAINT id_department FOREIGN KEY (id_department) REFERENCES "Uchet".department(id_department) NOT VALID;
 O   ALTER TABLE ONLY "Uchet".employee_in_department DROP CONSTRAINT id_department;
       Uchet          postgres    false    222    3280    232            �           2606    16741 "   employee_in_department id_employee    FK CONSTRAINT     �   ALTER TABLE ONLY "Uchet".employee_in_department
    ADD CONSTRAINT id_employee FOREIGN KEY (id_employee) REFERENCES "Uchet".employee(id_employee) NOT VALID;
 M   ALTER TABLE ONLY "Uchet".employee_in_department DROP CONSTRAINT id_employee;
       Uchet          postgres    false    3278    222    230            �           2606    16793    stage id_employee    FK CONSTRAINT     �   ALTER TABLE ONLY "Uchet".stage
    ADD CONSTRAINT id_employee FOREIGN KEY (id_employee) REFERENCES "Uchet".employee_in_department(id_employee_in_department);
 <   ALTER TABLE ONLY "Uchet".stage DROP CONSTRAINT id_employee;
       Uchet          postgres    false    3272    242    222            �           2606    16653 !   project id_employee_in_department    FK CONSTRAINT     �   ALTER TABLE ONLY "Uchet".project
    ADD CONSTRAINT id_employee_in_department FOREIGN KEY (id_employee_in_department) REFERENCES "Uchet".employee_in_department(id_employee_in_department) NOT VALID;
 L   ALTER TABLE ONLY "Uchet".project DROP CONSTRAINT id_employee_in_department;
       Uchet          postgres    false    3272    222    217            �           2606    16772    task id_inspector    FK CONSTRAINT     �   ALTER TABLE ONLY "Uchet".task
    ADD CONSTRAINT id_inspector FOREIGN KEY (id_inspector) REFERENCES "Uchet".employee_in_department(id_employee_in_department) NOT VALID;
 <   ALTER TABLE ONLY "Uchet".task DROP CONSTRAINT id_inspector;
       Uchet          postgres    false    222    238    3272            �           2606    16736 #   employee_in_department id_positions    FK CONSTRAINT     �   ALTER TABLE ONLY "Uchet".employee_in_department
    ADD CONSTRAINT id_positions FOREIGN KEY (id_positions) REFERENCES "Uchet".positions(id_position) NOT VALID;
 N   ALTER TABLE ONLY "Uchet".employee_in_department DROP CONSTRAINT id_positions;
       Uchet          postgres    false    3282    222    234            �           2606    16692    purchase id_project    FK CONSTRAINT     �   ALTER TABLE ONLY "Uchet".purchase
    ADD CONSTRAINT id_project FOREIGN KEY (id_project) REFERENCES "Uchet".project(id_project) NOT VALID;
 >   ALTER TABLE ONLY "Uchet".purchase DROP CONSTRAINT id_project;
       Uchet          postgres    false    3270    217    228            �           2606    16767    task id_project    FK CONSTRAINT     �   ALTER TABLE ONLY "Uchet".task
    ADD CONSTRAINT id_project FOREIGN KEY (id_project) REFERENCES "Uchet".project(id_project) NOT VALID;
 :   ALTER TABLE ONLY "Uchet".task DROP CONSTRAINT id_project;
       Uchet          postgres    false    217    238    3270            �           2606    16788    stage id_task    FK CONSTRAINT     r   ALTER TABLE ONLY "Uchet".stage
    ADD CONSTRAINT id_task FOREIGN KEY (id_task) REFERENCES "Uchet".task(id_task);
 8   ALTER TABLE ONLY "Uchet".stage DROP CONSTRAINT id_task;
       Uchet          postgres    false    3284    242    238            y   F   x�3����W��p�vT pZX���!��g����k��!��1�������I��W� ma�      �   N   x�3�t��	��Q pZX����[Xrq��9�x���b�����.cN� _l�```a``n``����� [E}      ~   u   x���A
�0��W��ؖ�VB�I�����w���Z�:�Ē���[}8F�b�$jvO���11ݭ�����Iq��V��B��"���?��5�,$+mv�͜�!N�y��y=�      v   X   x�u���@����*�bl�I�u+��������
tv Ժ�Ƅ�c�*k�ƀ�h9"k[�j��嶺�h���0Z]m݇�����      �   8   x�3��putQ�wSpqp
�u�Q  8M��ˈ3�?��5��r��`�1z\\\ 'N`      q   �   x�3���7T 	pq� ����������	�i
b����qa
�^�p����9C\�CH��Ӑ�� �2S�e�ȢPK']쾰�¾�/��a�Ŧ�����A�4"џ���4FXm��{]#cN�ą�6\����bǅ��r��qqq 
+U[      |   ^   x�3�4�45 N##c]]Cc��.쿰����^��e�iU��ya
��(0�B��y�]�qa˅�^lB�m������� ��4      �   t  x�͔[R�0��a�@�\Zu��kp�8^�}t��p������b1C�'3�$'��s�1.2�D�Xm�H�G�krBk*hG�y���?QI
�m9�
�5�'�>���|C5,8�غ��gp����2����RF9<�G�&�m��"� UC�f8�z:��(W���]}��19O*��~DF�L/E�������-A-�G}5b�����D灜Q��� ��]u�?��`��I�܏.�>�G�V���A�/}�y��%%����O-�ղ��8{��F�P�\'�3��9�ڪ�`U��)ۣ�ڪdád���>��Lo�+��
�J�����|���X���ʧ��w/<������      �   �   x���A
�0EדSx��LҪ��'�aڮ7^�*��^�ύLhQ�.&�0���E��#4��=������v��!��EGև%��|�5�Z�u���%?���	��t��+�Z��Q=D����F� *3�&Q˄�+X+�.����A�Τ�D���v��B��GQDg�7�ֻ��7[co`�     