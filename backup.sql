--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO wdgcnxcq;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.account_emailaddress ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO wdgcnxcq;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.account_emailconfirmation ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO wdgcnxcq;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO wdgcnxcq;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO wdgcnxcq;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO wdgcnxcq;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO wdgcnxcq;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO wdgcnxcq;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO wdgcnxcq;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO wdgcnxcq;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO wdgcnxcq;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO wdgcnxcq;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO wdgcnxcq;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.django_site ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.django_summernote_attachment (
    id bigint NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO wdgcnxcq;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.django_summernote_attachment ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_summernote_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: scottish_gems_post; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.scottish_gems_post (
    id bigint NOT NULL,
    title character varying(300) NOT NULL,
    slug character varying(300) NOT NULL,
    content text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    "STATUS" integer NOT NULL,
    author_id integer NOT NULL,
    excerpt text NOT NULL,
    image character varying(100) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    region_id bigint NOT NULL,
    address character varying(200) NOT NULL
);


ALTER TABLE public.scottish_gems_post OWNER TO wdgcnxcq;

--
-- Name: scottish_gems_post_favorited_by; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.scottish_gems_post_favorited_by (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.scottish_gems_post_favorited_by OWNER TO wdgcnxcq;

--
-- Name: scottish_gems_post_favorited_by_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.scottish_gems_post_favorited_by ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.scottish_gems_post_favorited_by_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: scottish_gems_post_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.scottish_gems_post ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.scottish_gems_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: scottish_gems_region; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.scottish_gems_region (
    id bigint NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.scottish_gems_region OWNER TO wdgcnxcq;

--
-- Name: scottish_gems_region_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.scottish_gems_region ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.scottish_gems_region_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: scottish_gems_usercomments; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.scottish_gems_usercomments (
    id bigint NOT NULL,
    comment text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    author_id integer NOT NULL,
    place_id bigint NOT NULL
);


ALTER TABLE public.scottish_gems_usercomments OWNER TO wdgcnxcq;

--
-- Name: scottish_gems_usercomments_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.scottish_gems_usercomments ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.scottish_gems_usercomments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(200) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data jsonb NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO wdgcnxcq;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL,
    provider_id character varying(200) NOT NULL,
    settings jsonb NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO wdgcnxcq;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: wdgcnxcq
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO wdgcnxcq;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add post	7	add_post
26	Can change post	7	change_post
27	Can delete post	7	delete_post
28	Can view post	7	view_post
29	Can add user comments	8	add_usercomments
30	Can change user comments	8	change_usercomments
31	Can delete user comments	8	delete_usercomments
32	Can view user comments	8	view_usercomments
33	Can add attachment	9	add_attachment
34	Can change attachment	9	change_attachment
35	Can delete attachment	9	delete_attachment
36	Can view attachment	9	view_attachment
37	Can add region	10	add_region
38	Can change region	10	change_region
39	Can delete region	10	delete_region
40	Can view region	10	view_region
41	Can add email address	11	add_emailaddress
42	Can change email address	11	change_emailaddress
43	Can delete email address	11	delete_emailaddress
44	Can view email address	11	view_emailaddress
45	Can add email confirmation	12	add_emailconfirmation
46	Can change email confirmation	12	change_emailconfirmation
47	Can delete email confirmation	12	delete_emailconfirmation
48	Can view email confirmation	12	view_emailconfirmation
49	Can add social account	13	add_socialaccount
50	Can change social account	13	change_socialaccount
51	Can delete social account	13	delete_socialaccount
52	Can view social account	13	view_socialaccount
53	Can add social application	14	add_socialapp
54	Can change social application	14	change_socialapp
55	Can delete social application	14	delete_socialapp
56	Can view social application	14	view_socialapp
57	Can add social application token	15	add_socialtoken
58	Can change social application token	15	change_socialtoken
59	Can delete social application token	15	delete_socialtoken
60	Can view social application token	15	view_socialtoken
61	Can add site	16	add_site
62	Can change site	16	change_site
63	Can delete site	16	delete_site
64	Can view site	16	view_site
65	Can add email address	17	add_emailaddress
66	Can change email address	17	change_emailaddress
67	Can delete email address	17	delete_emailaddress
68	Can view email address	17	view_emailaddress
69	Can add email confirmation	18	add_emailconfirmation
70	Can change email confirmation	18	change_emailconfirmation
71	Can delete email confirmation	18	delete_emailconfirmation
72	Can view email confirmation	18	view_emailconfirmation
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$600000$LUjBEX6tSeCbhf3TaCxL5D$BZq9dnmlUrw6qCsyWrUCqunD5dwrEGP++GfGU3gbjvs=	2024-02-21 12:18:30.423016+00	f	AshBash2024			ashleighwatson.1@outlook.com	f	t	2024-02-10 20:23:02.725976+00
2	pbkdf2_sha256$600000$jWgVC5WPM4fmDauD2wXPC3$s5M+ZLnzcYOd0lpRdQ3uTerzZS5fObMjhqc1AZRUJfQ=	\N	f	Jamie_Connell	Jamie	Connell	jamie.connell_10@hotmail.com	f	t	2024-02-04 20:43:53+00
4	pbkdf2_sha256$600000$Y92Zwl5vNp5WOW3mpmLUhR$ITWdmkhNWZjeb0yvlVgJadtkBd4gYocJIkDYwPFeSPU=	\N	f	jimbob				f	t	2024-02-11 21:17:53.975345+00
1	pbkdf2_sha256$600000$e23J03U3X06WY2xGMmGvZk$vmAFPFGjBqV26nrktuNtLIL33CUCTcMTOGJTNPfnA/0=	2024-02-23 20:26:05.331502+00	t	GreenNinjaBoy			jamie.connell_10@hotmail.com	t	t	2024-02-01 19:55:23.874307+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-02-04 20:43:54.595895+00	2	Jamie_Connell	1	[{"added": {}}]	4	1
2	2024-02-04 20:45:27.750762+00	2	Jamie_Connell	2	[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]	4	1
3	2024-02-04 20:49:12.509394+00	1	Post object (1)	1	[{"added": {}}]	7	1
4	2024-02-04 21:26:30.735066+00	1	UserComments object (1)	1	[{"added": {}}]	8	1
5	2024-02-05 21:24:38.840682+00	2	Test_2	1	[{"added": {}}]	7	1
6	2024-02-08 20:51:09.297857+00	1	Test_post	2	[{"changed": {"fields": ["STATUS", "Image", "Field 3"]}}]	7	1
7	2024-02-08 21:46:56.118055+00	6	test 3	1	[{"added": {}}]	7	1
8	2024-02-18 14:46:22.503255+00	1	Edinburgh, Fife and East	1	[{"added": {}}]	10	1
9	2024-02-18 14:47:05.147446+00	2	Glasgow & West	1	[{"added": {}}]	10	1
10	2024-02-18 14:47:27.602871+00	3	Highlands & Islands	1	[{"added": {}}]	10	1
11	2024-02-18 14:47:39.827543+00	4	Grampian	1	[{"added": {}}]	10	1
12	2024-02-18 14:47:51.048114+00	5	South	1	[{"added": {}}]	10	1
13	2024-02-18 14:48:08.925439+00	6	Tayside and Central	1	[{"added": {}}]	10	1
14	2024-02-18 21:28:32.151508+00	7	test blog	3		7	1
15	2024-02-18 21:28:32.359496+00	2	Test_2	3		7	1
16	2024-02-18 21:28:32.565455+00	1	Test_post	3		7	1
17	2024-02-20 14:10:25.883576+00	22	Hooligan Wine	1	[{"added": {}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	scottish_gems	post
8	scottish_gems	usercomments
9	django_summernote	attachment
10	scottish_gems	region
11	account	emailaddress
12	account	emailconfirmation
13	socialaccount	socialaccount
14	socialaccount	socialapp
15	socialaccount	socialtoken
16	sites	site
17	allauth	emailaddress
18	allauth	emailconfirmation
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-02-01 19:52:53.607928+00
2	auth	0001_initial	2024-02-01 19:53:01.005053+00
3	admin	0001_initial	2024-02-01 19:53:03.17426+00
4	admin	0002_logentry_remove_auto_add	2024-02-01 19:53:03.884569+00
5	admin	0003_logentry_add_action_flag_choices	2024-02-01 19:53:04.82679+00
6	contenttypes	0002_remove_content_type_name	2024-02-01 19:53:06.245688+00
7	auth	0002_alter_permission_name_max_length	2024-02-01 19:53:07.42242+00
8	auth	0003_alter_user_email_max_length	2024-02-01 19:53:08.597486+00
9	auth	0004_alter_user_username_opts	2024-02-01 19:53:09.539252+00
10	auth	0005_alter_user_last_login_null	2024-02-01 19:53:10.714327+00
11	auth	0006_require_contenttypes_0002	2024-02-01 19:53:11.650226+00
12	auth	0007_alter_validators_add_error_messages	2024-02-01 19:53:12.592168+00
13	auth	0008_alter_user_username_max_length	2024-02-01 19:53:13.777396+00
14	auth	0009_alter_user_last_name_max_length	2024-02-01 19:53:14.9526+00
15	auth	0010_alter_group_name_max_length	2024-02-01 19:53:16.131233+00
16	auth	0011_update_proxy_permissions	2024-02-01 19:53:17.072541+00
17	auth	0012_alter_user_first_name_max_length	2024-02-01 19:53:18.256469+00
18	sessions	0001_initial	2024-02-01 19:53:20.149279+00
19	scottish_gems	0001_initial	2024-02-01 20:29:35.606682+00
20	scottish_gems	0002_post_excerpt_post_image_alter_post_author	2024-02-01 21:06:17.081295+00
21	scottish_gems	0003_post_updated_on_alter_post_author	2024-02-04 15:44:35.257491+00
22	scottish_gems	0004_usercomments	2024-02-04 21:19:26.923231+00
23	scottish_gems	0005_alter_post_options_alter_usercomments_options_and_more	2024-02-05 19:52:57.562458+00
24	scottish_gems	0006_post_field_2_post_field_3	2024-02-05 20:03:30.069429+00
25	scottish_gems	0007_alter_post_status	2024-02-05 20:53:26.975738+00
26	django_summernote	0001_initial	2024-02-05 21:18:52.60635+00
27	django_summernote	0002_update-help_text	2024-02-05 21:18:53.539835+00
28	django_summernote	0003_alter_attachment_id	2024-02-05 21:33:50.703976+00
29	scottish_gems	0008_remove_post_field_2_remove_post_field_3_and_more	2024-02-08 21:43:34.30999+00
30	scottish_gems	0009_alter_post_image	2024-02-08 22:24:35.446834+00
31	scottish_gems	0010_post_favorited_by	2024-02-16 16:22:53.330235+00
32	scottish_gems	0011_region	2024-02-18 14:45:36.191084+00
33	scottish_gems	0012_post_region	2024-02-18 14:54:10.771628+00
34	account	0001_initial	2024-02-18 20:58:11.680804+00
35	account	0002_email_max_length	2024-02-18 20:58:12.493329+00
36	account	0003_alter_emailaddress_create_unique_verified_email	2024-02-18 20:58:13.71653+00
37	account	0004_alter_emailaddress_drop_unique_email	2024-02-18 20:58:15.346334+00
38	account	0005_emailaddress_idx_upper_email	2024-02-18 20:58:16.368395+00
39	socialaccount	0001_initial	2024-02-18 21:41:25.766949+00
40	socialaccount	0002_token_max_lengths	2024-02-18 21:41:27.003987+00
41	socialaccount	0003_extra_data_default_dict	2024-02-18 21:41:27.823751+00
42	socialaccount	0004_app_provider_id_settings	2024-02-18 21:41:29.662098+00
43	socialaccount	0005_socialtoken_nullable_app	2024-02-18 21:41:31.503665+00
44	socialaccount	0006_alter_socialaccount_extra_data	2024-02-18 21:41:32.541347+00
45	sites	0001_initial	2024-02-18 22:05:15.589056+00
46	sites	0002_alter_domain_unique	2024-02-18 22:05:16.762818+00
47	scottish_gems	0013_alter_post_slug_alter_post_title	2024-02-25 20:09:34.460759+00
48	scottish_gems	0014_alter_post_content	2024-02-25 20:11:38.868129+00
49	scottish_gems	0015_post_address	2024-02-25 20:18:50.489206+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ssf7y52dqhh6wcvjo3r9ocu5e1l66ekp	.eJxVjEEOwiAQRe_C2hBh6JS6dN8zkBkGpGpoUtqV8e7apAvd_vfef6lA21rC1tISJlEXZdTpd2OKj1R3IHeqt1nHua7LxHpX9EGbHmdJz-vh_h0UauVbW45dTp6YB0BMFgl7tMJ0NtkPzvboDEDMJN6hYxHIHYoHyDZbZFHvD_FqODk:1rVdl2:Uy-BY0wjkdoF7jH-HbY1wqb3k3vsbbgFHKHezMjzqjo	2024-02-15 20:34:00.492093+00
27loisduxc550z8tfksi29tixcstuegt	.eJxVjEEOwiAQRe_C2hBh6JS6dN8zkBkGpGpoUtqV8e7apAvd_vfef6lA21rC1tISJlEXZdTpd2OKj1R3IHeqt1nHua7LxHpX9EGbHmdJz-vh_h0UauVbW45dTp6YB0BMFgl7tMJ0NtkPzvboDEDMJN6hYxHIHYoHyDZbZFHvD_FqODk:1rcCVW:8HVCOibfd1ujTg9l9Da_Yr4yasRNgCuRu4Q_t9MorM4	2024-03-04 22:53:06.284508+00
wx8dg2q4jnuki7lfrxbcjsey0zy4yovu	.eJxVjEEOwiAQRe_C2hBh6JS6dN8zkBkGpGpoUtqV8e7apAvd_vfef6lA21rC1tISJlEXZdTpd2OKj1R3IHeqt1nHua7LxHpX9EGbHmdJz-vh_h0UauVbW45dTp6YB0BMFgl7tMJ0NtkPzvboDEDMJN6hYxHIHYoHyDZbZFHvD_FqODk:1rVdl5:RLtZa-Dtf7sox7pjBQSxXxDTR4uJvjtPGiIdEgvWfy8	2024-02-15 20:34:03.462409+00
ws6ehsdew2e3t4y7xv7pacs5ahritemt	.eJxVjEEOwiAQRe_C2hBh6JS6dN8zkBkGpGpoUtqV8e7apAvd_vfef6lA21rC1tISJlEXZdTpd2OKj1R3IHeqt1nHua7LxHpX9EGbHmdJz-vh_h0UauVbW45dTp6YB0BMFgl7tMJ0NtkPzvboDEDMJN6hYxHIHYoHyDZbZFHvD_FqODk:1rVdoZ:Q0FIU-IUYIg1eE5mz3F8e7qmqcRckfcbpAukyUgmIxQ	2024-02-15 20:37:39.173145+00
x53sj8q1gq1dxa3b70n3zmsxxmmv0ckt	.eJxVjEEOwiAQRe_C2hBh6JS6dN8zkBkGpGpoUtqV8e7apAvd_vfef6lA21rC1tISJlEXZdTpd2OKj1R3IHeqt1nHua7LxHpX9EGbHmdJz-vh_h0UauVbW45dTp6YB0BMFgl7tMJ0NtkPzvboDEDMJN6hYxHIHYoHyDZbZFHvD_FqODk:1rcCVY:MUUYJLOAg35Gckrbx3biKMTqtRdcQK2Ut3T4DaoTtTE	2024-03-04 22:53:08.004897+00
u31f4uginp4ss6xfjcsbjvxmq88pm11l	.eJxVjEEOwiAQRe_C2hBh6JS6dN8zkBkGpGpoUtqV8e7apAvd_vfef6lA21rC1tISJlEXZdTpd2OKj1R3IHeqt1nHua7LxHpX9EGbHmdJz-vh_h0UauVbW45dTp6YB0BMFgl7tMJ0NtkPzvboDEDMJN6hYxHIHYoHyDZbZFHvD_FqODk:1rWeIa:pX16Xsu4tbM-18b8E2fL1203ZZt9sDt0pBH8KSS6XWI	2024-02-18 15:20:48.374437+00
aj32ov8lu6g0em8h24wc5ds6yrfsfmjg	.eJxVjEEOwiAQRe_C2hBh6JS6dN8zkBkGpGpoUtqV8e7apAvd_vfef6lA21rC1tISJlEXZdTpd2OKj1R3IHeqt1nHua7LxHpX9EGbHmdJz-vh_h0UauVbW45dTp6YB0BMFgl7tMJ0NtkPzvboDEDMJN6hYxHIHYoHyDZbZFHvD_FqODk:1rZeKv:bJbT2BYGU0CYxwwnvHGgNubjKNPpXPz3SK0YY5VW9_M	2024-02-26 21:59:37.674696+00
nj82d9h42sjd2eoautbq65kv7brkirso	.eJxVjEEOwiAQRe_C2pAKZQou3XsGMswMUjU0Ke3KeHfbpAvd_vfef6uI61Li2mSOI6uLsur0uyWkp9Qd8APrfdI01WUek94VfdCmbxPL63q4fwcFW9lqJx6Sc2dkciaj7bMlm4IBydCZwabOOxKfPToG2CAPEoIl7A0jGlCfL_GAOGw:1rclYU:eRpGD4RAeCrROrSxrlhUPtQzH7AkhUnuMIVhr0qSh5k	2024-03-06 12:18:30.625403+00
omtt2k22vngk07lgn1obt951s1g6lhq8	.eJxVjEEOwiAQRe_C2hBh6JS6dN8zkBkGpGpoUtqV8e7apAvd_vfef6lA21rC1tISJlEXZdTpd2OKj1R3IHeqt1nHua7LxHpX9EGbHmdJz-vh_h0UauVbW45dTp6YB0BMFgl7tMJ0NtkPzvboDEDMJN6hYxHIHYoHyDZbZFHvD_FqODk:1rbpzH:6S_xfBJUtGjXPtnSftE2fQKJGwFCjeEuwzJglA8yA0c	2024-03-03 22:50:19.603135+00
kj4tcmzm0xcrmtt5ts6e3yqzd95wo33i	.eJxVjEEOwiAQRe_C2hBh6JS6dN8zkBkGpGpoUtqV8e7apAvd_vfef6lA21rC1tISJlEXZdTpd2OKj1R3IHeqt1nHua7LxHpX9EGbHmdJz-vh_h0UauVbW45dTp6YB0BMFgl7tMJ0NtkPzvboDEDMJN6hYxHIHYoHyDZbZFHvD_FqODk:1rdc7R:OGiVoYXfU1G2KfhsGEf0JkwxWM_qo4z9vJ9DDxjz-i0	2024-03-08 20:26:05.531946+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
2	localhost	your-domain.com
3	127.0.0.1	your-domain.com
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
\.


--
-- Data for Name: scottish_gems_post; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.scottish_gems_post (id, title, slug, content, created_on, "STATUS", author_id, excerpt, image, updated_on, region_id, address) FROM stdin;
15	Glasgow test 1	glasgow-test-1	This is glagsow test 1 for filter	2024-02-18 15:37:26.831237+00	0	1			2024-02-18 15:37:26.831292+00	2	1
16	Edinburgh test 1	edinburgh-test-1	Testing Region function	2024-02-18 15:38:41.207051+00	0	1			2024-02-18 15:38:41.207098+00	1	1
17	Highlands test 1	highlands-test-1	This is the highlands test	2024-02-18 15:39:20.304745+00	0	1			2024-02-18 15:39:20.30479+00	3	1
18	Grampian Test 1	grampian-test-1	Region test for Grampian	2024-02-18 15:40:27.595465+00	0	1			2024-02-18 15:40:27.595517+00	4	1
19	south test 1	south-test-1	south region test	2024-02-18 15:41:14.141021+00	0	1			2024-02-18 15:41:14.14107+00	5	1
20	centeral test 1	centeral-test-1	region test for central	2024-02-18 15:42:15.916808+00	0	1			2024-02-18 15:42:15.916859+00	6	1
25	Holligan Wine	holligan-wine	Gem Description: Set in a traditional tenement building, it would be easy to pass this off as West End flats. But Holligan Wine is hidden in plain sight, among the likes of the more obvious Fly South and The Drake (the latter being its sister venue, along with Eighty Eight and Scamp). It’s all part of the understated philosophy of this bar, a minimal spot with plenty of reclaimed original features, serving sophisticated organic and biodiverse booze, cheese, charcuterie and small plates on weeknights and at weekends.	2024-02-20 21:15:10.153608+00	0	1		user_images/window-facing-booth_C1PsmXw.webp	2024-02-20 21:15:10.154399+00	2	1
\.


--
-- Data for Name: scottish_gems_post_favorited_by; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.scottish_gems_post_favorited_by (id, post_id, user_id) FROM stdin;
8	25	1
\.


--
-- Data for Name: scottish_gems_region; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.scottish_gems_region (id, name) FROM stdin;
1	Edinburgh, Fife and East
2	Glasgow & West
3	Highlands & Islands
4	Grampian
5	South
6	Tayside and Central
\.


--
-- Data for Name: scottish_gems_usercomments; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.scottish_gems_usercomments (id, comment, created_on, author_id, place_id) FROM stdin;
2	this is a test comment	2024-02-19 11:32:16.345235+00	1	20
19	this is another test	2024-02-19 14:07:21.394029+00	3	20
26	this is a comment	2024-02-21 12:19:22.892172+00	3	25
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key, provider_id, settings) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: wdgcnxcq
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 17, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 49, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.django_site_id_seq', 3, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, false);


--
-- Name: scottish_gems_post_favorited_by_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.scottish_gems_post_favorited_by_id_seq', 8, true);


--
-- Name: scottish_gems_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.scottish_gems_post_id_seq', 25, true);


--
-- Name: scottish_gems_region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.scottish_gems_region_id_seq', 6, true);


--
-- Name: scottish_gems_usercomments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.scottish_gems_usercomments_id_seq', 26, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 3, true);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wdgcnxcq
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress account_emailaddress_user_id_email_987c8728_uniq; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_email_987c8728_uniq UNIQUE (user_id, email);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: scottish_gems_post_favorited_by scottish_gems_post_favorited_by_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_post_favorited_by
    ADD CONSTRAINT scottish_gems_post_favorited_by_pkey PRIMARY KEY (id);


--
-- Name: scottish_gems_post_favorited_by scottish_gems_post_favorited_by_post_id_user_id_2d9acd9e_uniq; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_post_favorited_by
    ADD CONSTRAINT scottish_gems_post_favorited_by_post_id_user_id_2d9acd9e_uniq UNIQUE (post_id, user_id);


--
-- Name: scottish_gems_post scottish_gems_post_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_post
    ADD CONSTRAINT scottish_gems_post_pkey PRIMARY KEY (id);


--
-- Name: scottish_gems_post scottish_gems_post_slug_key; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_post
    ADD CONSTRAINT scottish_gems_post_slug_key UNIQUE (slug);


--
-- Name: scottish_gems_post scottish_gems_post_title_key; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_post
    ADD CONSTRAINT scottish_gems_post_title_key UNIQUE (title);


--
-- Name: scottish_gems_region scottish_gems_region_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_region
    ADD CONSTRAINT scottish_gems_region_pkey PRIMARY KEY (id);


--
-- Name: scottish_gems_usercomments scottish_gems_usercomments_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_usercomments
    ADD CONSTRAINT scottish_gems_usercomments_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_upper; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX account_emailaddress_upper ON public.account_emailaddress USING btree (upper((email)::text));


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: scottish_gems_post_author_id_ade8ac27; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX scottish_gems_post_author_id_ade8ac27 ON public.scottish_gems_post USING btree (author_id);


--
-- Name: scottish_gems_post_favorited_by_post_id_2e21b6e9; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX scottish_gems_post_favorited_by_post_id_2e21b6e9 ON public.scottish_gems_post_favorited_by USING btree (post_id);


--
-- Name: scottish_gems_post_favorited_by_user_id_dadff4f7; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX scottish_gems_post_favorited_by_user_id_dadff4f7 ON public.scottish_gems_post_favorited_by USING btree (user_id);


--
-- Name: scottish_gems_post_region_id_301bc98d; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX scottish_gems_post_region_id_301bc98d ON public.scottish_gems_post USING btree (region_id);


--
-- Name: scottish_gems_post_slug_1df93f08_like; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX scottish_gems_post_slug_1df93f08_like ON public.scottish_gems_post USING btree (slug varchar_pattern_ops);


--
-- Name: scottish_gems_post_title_ba24d59c_like; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX scottish_gems_post_title_ba24d59c_like ON public.scottish_gems_post USING btree (title varchar_pattern_ops);


--
-- Name: scottish_gems_usercomments_author_id_f239c9e2; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX scottish_gems_usercomments_author_id_f239c9e2 ON public.scottish_gems_usercomments USING btree (author_id);


--
-- Name: scottish_gems_usercomments_place_id_dc265505; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX scottish_gems_usercomments_place_id_dc265505 ON public.scottish_gems_usercomments USING btree (place_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: unique_verified_email; Type: INDEX; Schema: public; Owner: wdgcnxcq
--

CREATE UNIQUE INDEX unique_verified_email ON public.account_emailaddress USING btree (email) WHERE verified;


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: scottish_gems_post scottish_gems_post_author_id_ade8ac27_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_post
    ADD CONSTRAINT scottish_gems_post_author_id_ade8ac27_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: scottish_gems_post_favorited_by scottish_gems_post_f_post_id_2e21b6e9_fk_scottish_; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_post_favorited_by
    ADD CONSTRAINT scottish_gems_post_f_post_id_2e21b6e9_fk_scottish_ FOREIGN KEY (post_id) REFERENCES public.scottish_gems_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: scottish_gems_post_favorited_by scottish_gems_post_f_user_id_dadff4f7_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_post_favorited_by
    ADD CONSTRAINT scottish_gems_post_f_user_id_dadff4f7_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: scottish_gems_post scottish_gems_post_region_id_301bc98d_fk_scottish_; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_post
    ADD CONSTRAINT scottish_gems_post_region_id_301bc98d_fk_scottish_ FOREIGN KEY (region_id) REFERENCES public.scottish_gems_region(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: scottish_gems_usercomments scottish_gems_userco_place_id_dc265505_fk_scottish_; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_usercomments
    ADD CONSTRAINT scottish_gems_userco_place_id_dc265505_fk_scottish_ FOREIGN KEY (place_id) REFERENCES public.scottish_gems_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: scottish_gems_usercomments scottish_gems_usercomments_author_id_f239c9e2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.scottish_gems_usercomments
    ADD CONSTRAINT scottish_gems_usercomments_author_id_f239c9e2_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: wdgcnxcq
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

