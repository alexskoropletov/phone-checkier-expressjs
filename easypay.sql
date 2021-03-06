PGDMP     5                
    u            easypay    9.6.6    10.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    33128    easypay    DATABASE     y   CREATE DATABASE easypay WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';
    DROP DATABASE easypay;
             easypay    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12429    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    33144    phone    TABLE     V   CREATE TABLE phone (
    id integer NOT NULL,
    phone character varying NOT NULL
);
    DROP TABLE public.phone;
       public         easypay    false    3            �            1259    33150    phone_id_seq    SEQUENCE     n   CREATE SEQUENCE phone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.phone_id_seq;
       public       easypay    false    187    3            �           0    0    phone_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE phone_id_seq OWNED BY phone.id;
            public       easypay    false    188            �            1259    33132    user    TABLE     z   CREATE TABLE "user" (
    id integer NOT NULL,
    username character varying,
    password character varying NOT NULL
);
    DROP TABLE public."user";
       public         easypay    false    3            �            1259    33138    user_id_seq    SEQUENCE     m   CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public       easypay    false    185    3            �           0    0    user_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE user_id_seq OWNED BY "user".id;
            public       easypay    false    186                       2604    33152    phone id    DEFAULT     V   ALTER TABLE ONLY phone ALTER COLUMN id SET DEFAULT nextval('phone_id_seq'::regclass);
 7   ALTER TABLE public.phone ALTER COLUMN id DROP DEFAULT;
       public       easypay    false    188    187                       2604    33140    user id    DEFAULT     V   ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public       easypay    false    186    185            �          0    33144    phone 
   TABLE DATA               #   COPY phone (id, phone) FROM stdin;
    public       easypay    false    187   &       ~          0    33132    user 
   TABLE DATA               1   COPY "user" (id, username, password) FROM stdin;
    public       easypay    false    185   b       �           0    0    phone_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('phone_id_seq', 6, true);
            public       easypay    false    188            �           0    0    user_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('user_id_seq', 3, true);
            public       easypay    false    186                       2606    33154    phone phone_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY phone
    ADD CONSTRAINT phone_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_pkey;
       public         easypay    false    187                       2606    33142    user user_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         easypay    false    185                       1259    33155    phone_email_index    INDEX     D   CREATE UNIQUE INDEX phone_email_index ON phone USING btree (phone);
 %   DROP INDEX public.phone_email_index;
       public         easypay    false    187                       1259    33143    user_username_index    INDEX     J   CREATE UNIQUE INDEX user_username_index ON "user" USING btree (username);
 '   DROP INDEX public.user_username_index;
       public         easypay    false    185            �   ,   x�3��016�415�56�55�2
k���Ÿb���� ���      ~   R   x�3�LL����T1JT14P��w�-4��*r)3v����HNvO��Գ�uNv�,�t,�̲��1��.J5M��rt����� a��     