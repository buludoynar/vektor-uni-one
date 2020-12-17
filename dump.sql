--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: babayevsamirx_category_; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.babayevsamirx_category_ (
    id integer NOT NULL,
    title character varying(255),
    description text,
    categ_repeater text,
    categ_img text,
    parent_id integer NOT NULL
);


ALTER TABLE public.babayevsamirx_category_ OWNER TO caprkbhcrqjawk;

--
-- Name: babayevsamirx_category__id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.babayevsamirx_category__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.babayevsamirx_category__id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: babayevsamirx_category__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.babayevsamirx_category__id_seq OWNED BY public.babayevsamirx_category_.id;


--
-- Name: babayevsamirx_category_category_product; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.babayevsamirx_category_category_product (
    category_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.babayevsamirx_category_category_product OWNER TO caprkbhcrqjawk;

--
-- Name: babayevsamirx_category_product; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.babayevsamirx_category_product (
    id integer NOT NULL,
    code character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    product_repeater text,
    product_img text
);


ALTER TABLE public.babayevsamirx_category_product OWNER TO caprkbhcrqjawk;

--
-- Name: babayevsamirx_category_product_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.babayevsamirx_category_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.babayevsamirx_category_product_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: babayevsamirx_category_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.babayevsamirx_category_product_id_seq OWNED BY public.babayevsamirx_category_product.id;


--
-- Name: backend_access_log; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.backend_access_log (
    id integer NOT NULL,
    user_id integer NOT NULL,
    ip_address character varying(191),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.backend_access_log OWNER TO caprkbhcrqjawk;

--
-- Name: backend_access_log_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.backend_access_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_access_log_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: backend_access_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.backend_access_log_id_seq OWNED BY public.backend_access_log.id;


--
-- Name: backend_user_groups; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.backend_user_groups (
    id integer NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    code character varying(191),
    description text,
    is_new_user_default boolean DEFAULT false NOT NULL
);


ALTER TABLE public.backend_user_groups OWNER TO caprkbhcrqjawk;

--
-- Name: backend_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.backend_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_user_groups_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: backend_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.backend_user_groups_id_seq OWNED BY public.backend_user_groups.id;


--
-- Name: backend_user_preferences; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.backend_user_preferences (
    id integer NOT NULL,
    user_id integer NOT NULL,
    namespace character varying(100) NOT NULL,
    "group" character varying(50) NOT NULL,
    item character varying(150) NOT NULL,
    value text
);


ALTER TABLE public.backend_user_preferences OWNER TO caprkbhcrqjawk;

--
-- Name: backend_user_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.backend_user_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_user_preferences_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: backend_user_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.backend_user_preferences_id_seq OWNED BY public.backend_user_preferences.id;


--
-- Name: backend_user_roles; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.backend_user_roles (
    id integer NOT NULL,
    name character varying(191) NOT NULL,
    code character varying(191),
    description text,
    permissions text,
    is_system boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.backend_user_roles OWNER TO caprkbhcrqjawk;

--
-- Name: backend_user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.backend_user_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_user_roles_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: backend_user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.backend_user_roles_id_seq OWNED BY public.backend_user_roles.id;


--
-- Name: backend_user_throttle; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.backend_user_throttle (
    id integer NOT NULL,
    user_id integer,
    ip_address character varying(191),
    attempts integer DEFAULT 0 NOT NULL,
    last_attempt_at timestamp(0) without time zone,
    is_suspended boolean DEFAULT false NOT NULL,
    suspended_at timestamp(0) without time zone,
    is_banned boolean DEFAULT false NOT NULL,
    banned_at timestamp(0) without time zone
);


ALTER TABLE public.backend_user_throttle OWNER TO caprkbhcrqjawk;

--
-- Name: backend_user_throttle_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.backend_user_throttle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_user_throttle_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: backend_user_throttle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.backend_user_throttle_id_seq OWNED BY public.backend_user_throttle.id;


--
-- Name: backend_users; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.backend_users (
    id integer NOT NULL,
    first_name character varying(191),
    last_name character varying(191),
    login character varying(191) NOT NULL,
    email character varying(191) NOT NULL,
    password character varying(191) NOT NULL,
    activation_code character varying(191),
    persist_code character varying(191),
    reset_password_code character varying(191),
    permissions text,
    is_activated boolean DEFAULT false NOT NULL,
    role_id integer,
    activated_at timestamp(0) without time zone,
    last_login timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    is_superuser boolean DEFAULT false NOT NULL
);


ALTER TABLE public.backend_users OWNER TO caprkbhcrqjawk;

--
-- Name: backend_users_groups; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.backend_users_groups (
    user_id integer NOT NULL,
    user_group_id integer NOT NULL
);


ALTER TABLE public.backend_users_groups OWNER TO caprkbhcrqjawk;

--
-- Name: backend_users_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.backend_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backend_users_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: backend_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.backend_users_id_seq OWNED BY public.backend_users.id;


--
-- Name: cache; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.cache (
    key character varying(191) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO caprkbhcrqjawk;

--
-- Name: cms_theme_data; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.cms_theme_data (
    id integer NOT NULL,
    theme character varying(191),
    data text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cms_theme_data OWNER TO caprkbhcrqjawk;

--
-- Name: cms_theme_data_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.cms_theme_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_theme_data_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: cms_theme_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.cms_theme_data_id_seq OWNED BY public.cms_theme_data.id;


--
-- Name: cms_theme_logs; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.cms_theme_logs (
    id integer NOT NULL,
    type character varying(20) NOT NULL,
    theme character varying(191),
    template character varying(191),
    old_template character varying(191),
    content text,
    old_content text,
    user_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cms_theme_logs OWNER TO caprkbhcrqjawk;

--
-- Name: cms_theme_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.cms_theme_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_theme_logs_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: cms_theme_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.cms_theme_logs_id_seq OWNED BY public.cms_theme_logs.id;


--
-- Name: cms_theme_templates; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.cms_theme_templates (
    id integer NOT NULL,
    source character varying(191) NOT NULL,
    path character varying(191) NOT NULL,
    content text NOT NULL,
    file_size integer NOT NULL,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.cms_theme_templates OWNER TO caprkbhcrqjawk;

--
-- Name: cms_theme_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.cms_theme_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_theme_templates_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: cms_theme_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.cms_theme_templates_id_seq OWNED BY public.cms_theme_templates.id;


--
-- Name: deferred_bindings; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.deferred_bindings (
    id integer NOT NULL,
    master_type character varying(191) NOT NULL,
    master_field character varying(191) NOT NULL,
    slave_type character varying(191) NOT NULL,
    slave_id character varying(191) NOT NULL,
    session_key character varying(191) NOT NULL,
    is_bind boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.deferred_bindings OWNER TO caprkbhcrqjawk;

--
-- Name: deferred_bindings_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.deferred_bindings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deferred_bindings_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: deferred_bindings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.deferred_bindings_id_seq OWNED BY public.deferred_bindings.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.failed_jobs (
    id integer NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    failed_at timestamp(0) without time zone,
    exception text
);


ALTER TABLE public.failed_jobs OWNER TO caprkbhcrqjawk;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.failed_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(191) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO caprkbhcrqjawk;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO caprkbhcrqjawk;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.sessions (
    id character varying(191) NOT NULL,
    payload text,
    last_activity integer,
    user_id integer,
    ip_address character varying(45),
    user_agent text
);


ALTER TABLE public.sessions OWNER TO caprkbhcrqjawk;

--
-- Name: system_event_logs; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_event_logs (
    id integer NOT NULL,
    level character varying(191),
    message text,
    details text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.system_event_logs OWNER TO caprkbhcrqjawk;

--
-- Name: system_event_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_event_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_event_logs_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_event_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_event_logs_id_seq OWNED BY public.system_event_logs.id;


--
-- Name: system_files; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_files (
    id integer NOT NULL,
    disk_name character varying(191) NOT NULL,
    file_name character varying(191) NOT NULL,
    file_size integer NOT NULL,
    content_type character varying(191) NOT NULL,
    title character varying(191),
    description text,
    field character varying(191),
    attachment_id character varying(191),
    attachment_type character varying(191),
    is_public boolean DEFAULT true NOT NULL,
    sort_order integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.system_files OWNER TO caprkbhcrqjawk;

--
-- Name: system_files_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_files_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_files_id_seq OWNED BY public.system_files.id;


--
-- Name: system_mail_layouts; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_mail_layouts (
    id integer NOT NULL,
    name character varying(191),
    code character varying(191),
    content_html text,
    content_text text,
    content_css text,
    is_locked boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    options text
);


ALTER TABLE public.system_mail_layouts OWNER TO caprkbhcrqjawk;

--
-- Name: system_mail_layouts_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_mail_layouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_mail_layouts_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_mail_layouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_mail_layouts_id_seq OWNED BY public.system_mail_layouts.id;


--
-- Name: system_mail_partials; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_mail_partials (
    id integer NOT NULL,
    name character varying(191),
    code character varying(191),
    content_html text,
    content_text text,
    is_custom boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.system_mail_partials OWNER TO caprkbhcrqjawk;

--
-- Name: system_mail_partials_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_mail_partials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_mail_partials_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_mail_partials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_mail_partials_id_seq OWNED BY public.system_mail_partials.id;


--
-- Name: system_mail_templates; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_mail_templates (
    id integer NOT NULL,
    code character varying(191),
    subject character varying(191),
    description text,
    content_html text,
    content_text text,
    layout_id integer,
    is_custom boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.system_mail_templates OWNER TO caprkbhcrqjawk;

--
-- Name: system_mail_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_mail_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_mail_templates_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_mail_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_mail_templates_id_seq OWNED BY public.system_mail_templates.id;


--
-- Name: system_parameters; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_parameters (
    id integer NOT NULL,
    namespace character varying(100) NOT NULL,
    "group" character varying(50) NOT NULL,
    item character varying(150) NOT NULL,
    value text
);


ALTER TABLE public.system_parameters OWNER TO caprkbhcrqjawk;

--
-- Name: system_parameters_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_parameters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_parameters_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_parameters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_parameters_id_seq OWNED BY public.system_parameters.id;


--
-- Name: system_plugin_history; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_plugin_history (
    id integer NOT NULL,
    code character varying(191) NOT NULL,
    type character varying(20) NOT NULL,
    version character varying(50) NOT NULL,
    detail text,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.system_plugin_history OWNER TO caprkbhcrqjawk;

--
-- Name: system_plugin_history_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_plugin_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_plugin_history_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_plugin_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_plugin_history_id_seq OWNED BY public.system_plugin_history.id;


--
-- Name: system_plugin_versions; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_plugin_versions (
    id integer NOT NULL,
    code character varying(191) NOT NULL,
    version character varying(50) NOT NULL,
    created_at timestamp(0) without time zone,
    is_disabled boolean DEFAULT false NOT NULL,
    is_frozen boolean DEFAULT false NOT NULL
);


ALTER TABLE public.system_plugin_versions OWNER TO caprkbhcrqjawk;

--
-- Name: system_plugin_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_plugin_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_plugin_versions_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_plugin_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_plugin_versions_id_seq OWNED BY public.system_plugin_versions.id;


--
-- Name: system_request_logs; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_request_logs (
    id integer NOT NULL,
    status_code integer,
    url character varying(191),
    referer text,
    count integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.system_request_logs OWNER TO caprkbhcrqjawk;

--
-- Name: system_request_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_request_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_request_logs_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_request_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_request_logs_id_seq OWNED BY public.system_request_logs.id;


--
-- Name: system_revisions; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_revisions (
    id integer NOT NULL,
    user_id integer,
    field character varying(191),
    "cast" character varying(191),
    old_value text,
    new_value text,
    revisionable_type character varying(191) NOT NULL,
    revisionable_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.system_revisions OWNER TO caprkbhcrqjawk;

--
-- Name: system_revisions_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_revisions_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_revisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_revisions_id_seq OWNED BY public.system_revisions.id;


--
-- Name: system_settings; Type: TABLE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE TABLE public.system_settings (
    id integer NOT NULL,
    item character varying(191),
    value text
);


ALTER TABLE public.system_settings OWNER TO caprkbhcrqjawk;

--
-- Name: system_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: caprkbhcrqjawk
--

CREATE SEQUENCE public.system_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_settings_id_seq OWNER TO caprkbhcrqjawk;

--
-- Name: system_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: caprkbhcrqjawk
--

ALTER SEQUENCE public.system_settings_id_seq OWNED BY public.system_settings.id;


--
-- Name: babayevsamirx_category_ id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.babayevsamirx_category_ ALTER COLUMN id SET DEFAULT nextval('public.babayevsamirx_category__id_seq'::regclass);


--
-- Name: babayevsamirx_category_product id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.babayevsamirx_category_product ALTER COLUMN id SET DEFAULT nextval('public.babayevsamirx_category_product_id_seq'::regclass);


--
-- Name: backend_access_log id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_access_log ALTER COLUMN id SET DEFAULT nextval('public.backend_access_log_id_seq'::regclass);


--
-- Name: backend_user_groups id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_user_groups ALTER COLUMN id SET DEFAULT nextval('public.backend_user_groups_id_seq'::regclass);


--
-- Name: backend_user_preferences id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_user_preferences ALTER COLUMN id SET DEFAULT nextval('public.backend_user_preferences_id_seq'::regclass);


--
-- Name: backend_user_roles id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_user_roles ALTER COLUMN id SET DEFAULT nextval('public.backend_user_roles_id_seq'::regclass);


--
-- Name: backend_user_throttle id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_user_throttle ALTER COLUMN id SET DEFAULT nextval('public.backend_user_throttle_id_seq'::regclass);


--
-- Name: backend_users id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_users ALTER COLUMN id SET DEFAULT nextval('public.backend_users_id_seq'::regclass);


--
-- Name: cms_theme_data id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.cms_theme_data ALTER COLUMN id SET DEFAULT nextval('public.cms_theme_data_id_seq'::regclass);


--
-- Name: cms_theme_logs id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.cms_theme_logs ALTER COLUMN id SET DEFAULT nextval('public.cms_theme_logs_id_seq'::regclass);


--
-- Name: cms_theme_templates id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.cms_theme_templates ALTER COLUMN id SET DEFAULT nextval('public.cms_theme_templates_id_seq'::regclass);


--
-- Name: deferred_bindings id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.deferred_bindings ALTER COLUMN id SET DEFAULT nextval('public.deferred_bindings_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: system_event_logs id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_event_logs ALTER COLUMN id SET DEFAULT nextval('public.system_event_logs_id_seq'::regclass);


--
-- Name: system_files id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_files ALTER COLUMN id SET DEFAULT nextval('public.system_files_id_seq'::regclass);


--
-- Name: system_mail_layouts id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_mail_layouts ALTER COLUMN id SET DEFAULT nextval('public.system_mail_layouts_id_seq'::regclass);


--
-- Name: system_mail_partials id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_mail_partials ALTER COLUMN id SET DEFAULT nextval('public.system_mail_partials_id_seq'::regclass);


--
-- Name: system_mail_templates id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_mail_templates ALTER COLUMN id SET DEFAULT nextval('public.system_mail_templates_id_seq'::regclass);


--
-- Name: system_parameters id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_parameters ALTER COLUMN id SET DEFAULT nextval('public.system_parameters_id_seq'::regclass);


--
-- Name: system_plugin_history id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_plugin_history ALTER COLUMN id SET DEFAULT nextval('public.system_plugin_history_id_seq'::regclass);


--
-- Name: system_plugin_versions id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_plugin_versions ALTER COLUMN id SET DEFAULT nextval('public.system_plugin_versions_id_seq'::regclass);


--
-- Name: system_request_logs id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_request_logs ALTER COLUMN id SET DEFAULT nextval('public.system_request_logs_id_seq'::regclass);


--
-- Name: system_revisions id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_revisions ALTER COLUMN id SET DEFAULT nextval('public.system_revisions_id_seq'::regclass);


--
-- Name: system_settings id; Type: DEFAULT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_settings ALTER COLUMN id SET DEFAULT nextval('public.system_settings_id_seq'::regclass);


--
-- Data for Name: babayevsamirx_category_; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.babayevsamirx_category_ (id, title, description, categ_repeater, categ_img, parent_id) FROM stdin;
1	İş Geyimləri		[{"categ_img":"Category\\/5f67b8b44c678877447626.jpg"},{"categ_img":"sss.jpg"}]	\N	0
2	Fərdi Qoruyucu Vasitələr		[{"categ_img":"Category\\/5f68d00f713ac618286637.jpg"}]	\N	0
3	Təhlükəsizlik Avadanlıqları		[{"categ_img":"Category\\/5f68d629ab832398990348.jpg"}]	\N	0
4	Ayaqqabı		[{"categ_img":"Category\\/5f67bdd00818f188087176.jpg"}]	\N	1
5	Əlcək		[{"categ_img":"Category\\/5f67be3008768487020609.jpg"}]	\N	1
6	Geyim		[{"categ_img":"Category\\/5f67c3eb23f14364163801.jpg"}]	\N	1
7	Yağışlı Hava		[{"categ_img":"Category\\/5f67c5a9b8994693032521.jpg"}]	\N	1
8	Göz Qoruyucu		[{"categ_img":"Category\\/eye-protection-PPE-900px.jpg"}]	\N	2
9	Baş Qoruyucu		[{"categ_img":"Category\\/umit-yildirim-Ass0DusYDk4-unsplash.jpg"}]	\N	2
10	Respiratorlar		[{"categ_img":"Category\\/csm_Respiratory_uvex_Atemschutz_Guide_FFP1_FFP2_FFP3_1cf666ec24.jpg"}]	\N	2
11	Eşitmə Qoruyucu		[{"categ_img":"Category\\/sensear_sm1xsr_construction.png"}]	\N	2
12	Kəmərlər (hündürlük a-ları)		[{"categ_img":"Category\\/ELITE.2.jpg"}]	\N	3
13	İşarə & Yol nişanları		[{"categ_img":"Category\\/RoadSafetyEquipments.jpeg"}]	\N	3
14	Yanğınsöndürmə		[{"categ_img":"Category\\/3110.jpg"}]	\N	3
15	Tibbi a-lar		[{"categ_img":"Category\\/unnamed-3.jpg"}]	\N	3
16	Ümumi		[{"categ_img":"Category\\/119794098-organizer-bag-with-construction-tools-and-safety-equipment-on-white-background.jpg"}]	\N	3
17	Qısa Boğaz		[{"categ_img":"Category\\/5f67c65d3e89b626139402.jpeg"}]	\N	4
18	Uzun Boğaz		[{"categ_img":"Category\\/unnamed.jpg"}]	\N	4
\.


--
-- Data for Name: babayevsamirx_category_category_product; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.babayevsamirx_category_category_product (category_id, product_id) FROM stdin;
17	1
\.


--
-- Data for Name: babayevsamirx_category_product; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.babayevsamirx_category_product (id, code, title, description, product_repeater, product_img) FROM stdin;
1	QB-01	YDS / ELSP 1090 S2​	<p><strong><u>ELSP 1090 S2</u></strong></p>\r\n\r\n<p><strong>Kullanım Alanı:&nbsp;</strong>İş Güvenliği</p>\r\n\r\n<p><strong>Standart: EN ISO 20345 İş Güvenliği Ayakkabıları</strong></p>\r\n\r\n<p><strong>Saya:&nbsp;</strong>Yüksek nefes alabilirlik özellikli cilt deri.&nbsp;</p>\r\n\r\n<p><strong>İç Astar:&nbsp;</strong>Aşınma dayanımı yüksek ter absorbe edebilen ve kısa sürede kuruyan iç astar.</p>\r\n\r\n<p><strong>Ek Özellikler:&nbsp;</strong>200 J'e kadar koruma sağlayan<strong>&nbsp;"ÇELİK" burun.</strong></p>\r\n\r\n<p><strong>Mostra:&nbsp;</strong>Anatomik olarak şekillendirilmiş, çıkartılabilir,nefes alabilir açık hücre poliüretan mostra.</p>\r\n\r\n<p><strong>Yaklaşık Ağırlık:</strong> 0.60kg</p>	[{"product_img":"Products\\/Ayaqqabi\\/QB\\/ydselsp1090s2\\/1104-ac1100000441syh1jpg-ac1100000441syh1.jpg"},{"product_img":"Products\\/Ayaqqabi\\/QB\\/ydselsp1090s2\\/1105-ac1100000441syh2jpg-ac1100000441syh2.jpg"},{"product_img":"Products\\/Ayaqqabi\\/QB\\/ydselsp1090s2\\/1106-ac1100000441syh3jpg-ac1100000441syh3.jpg"}]	\N
\.


--
-- Data for Name: backend_access_log; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.backend_access_log (id, user_id, ip_address, created_at, updated_at) FROM stdin;
1	1	127.0.0.1	2020-10-20 12:05:04	2020-10-20 12:05:04
2	1	127.0.0.1	2020-10-20 12:05:04	2020-10-20 12:05:04
3	1	127.0.0.1	2020-10-20 12:05:04	2020-10-20 12:05:04
\.


--
-- Data for Name: backend_user_groups; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.backend_user_groups (id, name, created_at, updated_at, code, description, is_new_user_default) FROM stdin;
1	Owners	2020-10-20 11:51:44	2020-10-20 11:51:44	owners	Default group for website owners.	f
\.


--
-- Data for Name: backend_user_preferences; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.backend_user_preferences (id, user_id, namespace, "group", item, value) FROM stdin;
\.


--
-- Data for Name: backend_user_roles; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.backend_user_roles (id, name, code, description, permissions, is_system, created_at, updated_at) FROM stdin;
1	Publisher	publisher	Site editor with access to publishing tools.		t	2020-10-20 11:51:44	2020-10-20 11:51:44
2	Developer	developer	Site administrator with access to developer tools.		t	2020-10-20 11:51:44	2020-10-20 11:51:44
\.


--
-- Data for Name: backend_user_throttle; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.backend_user_throttle (id, user_id, ip_address, attempts, last_attempt_at, is_suspended, suspended_at, is_banned, banned_at) FROM stdin;
1	1	127.0.0.1	0	\N	f	\N	f	\N
\.


--
-- Data for Name: backend_users; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.backend_users (id, first_name, last_name, login, email, password, activation_code, persist_code, reset_password_code, permissions, is_activated, role_id, activated_at, last_login, created_at, updated_at, deleted_at, is_superuser) FROM stdin;
1	Admin	Person	admin	admin@domain.tld	$2y$10$DhWFB2YCFVnWWQh3.YBd.OPOqx1MOaO7z.yvTXDKINDQGLyQJ9nqe	\N	$2y$10$fU0G/.yh7j18tg05SiqBOOps2Lvmeef7WuF.HQZ7dKy3nAisDqy36	\N		t	2	\N	2020-10-20 12:05:04	2020-10-20 11:51:44	2020-10-20 12:05:04	\N	t
\.


--
-- Data for Name: backend_users_groups; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.backend_users_groups (user_id, user_group_id) FROM stdin;
1	1
\.


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.cache (key, value, expiration) FROM stdin;
\.


--
-- Data for Name: cms_theme_data; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.cms_theme_data (id, theme, data, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: cms_theme_logs; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.cms_theme_logs (id, type, theme, template, old_template, content, old_content, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: cms_theme_templates; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.cms_theme_templates (id, source, path, content, file_size, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: deferred_bindings; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.deferred_bindings (id, master_type, master_field, slave_type, slave_id, session_key, is_bind, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.failed_jobs (id, connection, queue, payload, failed_at, exception) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2013_10_01_000001_Db_Deferred_Bindings	1
2	2013_10_01_000002_Db_System_Files	1
3	2013_10_01_000003_Db_System_Plugin_Versions	1
4	2013_10_01_000004_Db_System_Plugin_History	1
5	2013_10_01_000005_Db_System_Settings	1
6	2013_10_01_000006_Db_System_Parameters	1
7	2013_10_01_000007_Db_System_Add_Disabled_Flag	1
8	2013_10_01_000008_Db_System_Mail_Templates	1
9	2013_10_01_000009_Db_System_Mail_Layouts	1
10	2014_10_01_000010_Db_Jobs	1
11	2014_10_01_000011_Db_System_Event_Logs	1
12	2014_10_01_000012_Db_System_Request_Logs	1
13	2014_10_01_000013_Db_System_Sessions	1
14	2015_10_01_000014_Db_System_Mail_Layout_Rename	1
15	2015_10_01_000015_Db_System_Add_Frozen_Flag	1
16	2015_10_01_000016_Db_Cache	1
17	2015_10_01_000017_Db_System_Revisions	1
18	2015_10_01_000018_Db_FailedJobs	1
19	2016_10_01_000019_Db_System_Plugin_History_Detail_Text	1
20	2016_10_01_000020_Db_System_Timestamp_Fix	1
21	2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session	1
22	2017_10_01_000021_Db_System_Sessions_Update	1
23	2017_10_01_000022_Db_Jobs_FailedJobs_Update	1
24	2017_10_01_000023_Db_System_Mail_Partials	1
25	2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field	1
26	2013_10_01_000001_Db_Backend_Users	2
27	2013_10_01_000002_Db_Backend_User_Groups	2
28	2013_10_01_000003_Db_Backend_Users_Groups	2
29	2013_10_01_000004_Db_Backend_User_Throttle	2
30	2014_01_04_000005_Db_Backend_User_Preferences	2
31	2014_10_01_000006_Db_Backend_Access_Log	2
32	2014_10_01_000007_Db_Backend_Add_Description_Field	2
33	2015_10_01_000008_Db_Backend_Add_Superuser_Flag	2
34	2016_10_01_000009_Db_Backend_Timestamp_Fix	2
35	2017_10_01_000010_Db_Backend_User_Roles	2
36	2018_12_16_000011_Db_Backend_Add_Deleted_At	2
37	2014_10_01_000001_Db_Cms_Theme_Data	3
38	2016_10_01_000002_Db_Cms_Timestamp_Fix	3
39	2017_10_01_000003_Db_Cms_Theme_Logs	3
40	2018_11_01_000001_Db_Cms_Theme_Templates	3
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.sessions (id, payload, last_activity, user_id, ip_address, user_agent) FROM stdin;
\.


--
-- Data for Name: system_event_logs; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_event_logs (id, level, message, details, created_at, updated_at) FROM stdin;
1	error	Exception: Unexpected type of array when attempting to save attribute "categ_repeater", try adding it to the $jsonable property. in /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Database/Model.php:753\nStack trace:\n#0 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Database/Model.php(796): October\\Rain\\Database\\Model->saveInternal()\n#1 /home/samir/Dev/Sites/edomedo/modules/backend/behaviors/FormController.php(252): October\\Rain\\Database\\Model->save()\n#2 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Database/Concerns/ManagesTransactions.php(29): Backend\\Behaviors\\FormController->Backend\\Behaviors\\{closure}()\n#3 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Database/DatabaseManager.php(349): Illuminate\\Database\\Connection->transaction()\n#4 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Database\\DatabaseManager->__call()\n#5 /home/samir/Dev/Sites/edomedo/modules/backend/behaviors/FormController.php(254): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#6 [internal function]: Backend\\Behaviors\\FormController->create_onSave()\n#7 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Extension/ExtendableTrait.php(414): call_user_func_array()\n#8 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(184): Backend\\Classes\\Controller->extendableCall()\n#9 [internal function]: Backend\\Classes\\Controller->__call()\n#10 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(620): call_user_func_array()\n#11 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(478): Backend\\Classes\\Controller->runAjaxHandler()\n#12 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(277): Backend\\Classes\\Controller->execAjaxHandlers()\n#13 /home/samir/Dev/Sites/edomedo/modules/backend/classes/BackendController.php(165): Backend\\Classes\\Controller->run()\n#14 [internal function]: Backend\\Classes\\BackendController->run()\n#15 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array()\n#16 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#17 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#18 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#19 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#20 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#21 /home/samir/Dev/Sites/edomedo/modules/backend/classes/BackendController.php(68): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#22 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(153): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}()\n#23 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#24 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#25 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#27 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#28 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle()\n#29 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#31 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#32 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#33 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#34 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#35 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#36 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#37 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute()\n#38 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#39 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#40 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#42 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#43 /home/samir/Dev/Sites/edomedo/plugins/rluders/cors/vendor/barryvdh/laravel-cors/src/HandlePreflight.php(29): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#44 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Barryvdh\\Cors\\HandlePreflight->handle()\n#45 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#46 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#47 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#48 /home/samir/Dev/Sites/edomedo/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#49 /home/samir/.config/composer/vendor/cpriego/valet-linux/server.php(232): require('/home/samir/Dev...')\n#50 {main}	\N	2020-10-20 13:00:35	2020-10-20 13:00:35
2	error	Exception: Unexpected type of array when attempting to save attribute "categ_repeater", try adding it to the $jsonable property. in /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Database/Model.php:753\nStack trace:\n#0 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Database/Model.php(796): October\\Rain\\Database\\Model->saveInternal()\n#1 /home/samir/Dev/Sites/edomedo/modules/backend/behaviors/FormController.php(252): October\\Rain\\Database\\Model->save()\n#2 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Database/Concerns/ManagesTransactions.php(29): Backend\\Behaviors\\FormController->Backend\\Behaviors\\{closure}()\n#3 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Database/DatabaseManager.php(349): Illuminate\\Database\\Connection->transaction()\n#4 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Database\\DatabaseManager->__call()\n#5 /home/samir/Dev/Sites/edomedo/modules/backend/behaviors/FormController.php(254): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#6 [internal function]: Backend\\Behaviors\\FormController->create_onSave()\n#7 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Extension/ExtendableTrait.php(414): call_user_func_array()\n#8 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(184): Backend\\Classes\\Controller->extendableCall()\n#9 [internal function]: Backend\\Classes\\Controller->__call()\n#10 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(620): call_user_func_array()\n#11 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(478): Backend\\Classes\\Controller->runAjaxHandler()\n#12 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(277): Backend\\Classes\\Controller->execAjaxHandlers()\n#13 /home/samir/Dev/Sites/edomedo/modules/backend/classes/BackendController.php(165): Backend\\Classes\\Controller->run()\n#14 [internal function]: Backend\\Classes\\BackendController->run()\n#15 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array()\n#16 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#17 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#18 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#19 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#20 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#21 /home/samir/Dev/Sites/edomedo/modules/backend/classes/BackendController.php(68): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#22 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(153): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}()\n#23 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#24 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#25 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#27 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#28 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle()\n#29 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#30 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#31 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#32 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#33 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#34 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#35 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#36 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#37 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute()\n#38 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#39 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#40 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#42 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#43 /home/samir/Dev/Sites/edomedo/plugins/rluders/cors/vendor/barryvdh/laravel-cors/src/HandlePreflight.php(29): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#44 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Barryvdh\\Cors\\HandlePreflight->handle()\n#45 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#46 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#47 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#48 /home/samir/Dev/Sites/edomedo/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#49 /home/samir/.config/composer/vendor/cpriego/valet-linux/server.php(232): require('/home/samir/Dev...')\n#50 {main}	\N	2020-10-20 13:03:37	2020-10-20 13:03:37
3	error	Arhitector\\Yandex\\Client\\Exception\\NotFoundException: Не удалось найти запрошенный ресурс. in /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/vendor/arhitector/yandex/src/Client/OAuth.php:278\nStack trace:\n#0 /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/vendor/arhitector/yandex/src/AbstractClient.php(145): Arhitector\\Yandex\\Client\\OAuth->transformResponseToException()\n#1 /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/vendor/arhitector/yandex/src/Disk.php(525): Arhitector\\Yandex\\AbstractClient->send()\n#2 /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/vendor/arhitector/yandex/src/Disk/Resource/Closed.php(406): Arhitector\\Yandex\\Disk->send()\n#3 /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/controllers/LinkGenerator.php(52): Arhitector\\Yandex\\Disk\\Resource\\Closed->setPublish()\n#4 [internal function]: Pkurg\\YandexDiskStorage\\Controllers\\LinkGenerator->index()\n#5 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array()\n#6 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#7 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#8 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#9 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#10 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#11 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#12 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#13 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#14 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#15 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute()\n#16 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#17 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#18 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#20 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#21 /home/samir/Dev/Sites/edomedo/plugins/rluders/cors/vendor/barryvdh/laravel-cors/src/HandlePreflight.php(29): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#22 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Barryvdh\\Cors\\HandlePreflight->handle()\n#23 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#24 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#25 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#26 /home/samir/Dev/Sites/edomedo/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#27 /home/samir/.config/composer/vendor/cpriego/valet-linux/server.php(232): require('/home/samir/Dev...')\n#28 {main}	\N	2020-10-20 14:41:33	2020-10-20 14:41:33
4	error	ErrorException: Trying to access array offset on value of type null in /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field_checkboxlist.htm:85\nStack trace:\n#0 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field_checkboxlist.htm(85): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError()\n#1 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#2 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#3 /home/samir/Dev/Sites/edomedo/modules/backend/formwidgets/relation/partials/_relation.htm(2): Backend\\Classes\\WidgetBase->makePartial()\n#4 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#5 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#6 /home/samir/Dev/Sites/edomedo/modules/backend/formwidgets/Relation.php(85): Backend\\Classes\\WidgetBase->makePartial()\n#7 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field_widget.htm(5): Backend\\FormWidgets\\Relation->render()\n#8 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#9 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#10 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/Form.php(275): Backend\\Classes\\WidgetBase->makePartial()\n#11 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field.htm(22): Backend\\Widgets\\Form->renderFieldElement()\n#12 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#13 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#14 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field-container.htm(8): Backend\\Classes\\WidgetBase->makePartial()\n#15 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#16 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#17 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form_fields.htm(2): Backend\\Classes\\WidgetBase->makePartial()\n#18 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#19 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#20 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form_tabs.htm(52): Backend\\Classes\\WidgetBase->makePartial()\n#21 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#22 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#23 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_section.htm(26): Backend\\Classes\\WidgetBase->makePartial()\n#24 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#25 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#26 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form.htm(7): Backend\\Classes\\WidgetBase->makePartial()\n#27 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#28 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#29 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form-container.htm(8): Backend\\Classes\\WidgetBase->makePartial()\n#30 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#31 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#32 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/Form.php(228): Backend\\Classes\\WidgetBase->makePartial()\n#33 /home/samir/Dev/Sites/edomedo/modules/backend/behaviors/FormController.php(419): Backend\\Widgets\\Form->render()\n#34 [internal function]: Backend\\Behaviors\\FormController->formRender()\n#35 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Extension/ExtendableTrait.php(414): call_user_func_array()\n#36 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(184): Backend\\Classes\\Controller->extendableCall()\n#37 /home/samir/Dev/Sites/edomedo/plugins/babayevsamirx/category/controllers/product/create.htm(13): Backend\\Classes\\Controller->__call()\n#38 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#39 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(109): Backend\\Classes\\Controller->makeFileContents()\n#40 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(419): Backend\\Classes\\Controller->makeView()\n#41 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(296): Backend\\Classes\\Controller->execPageAction()\n#42 /home/samir/Dev/Sites/edomedo/modules/backend/classes/BackendController.php(165): Backend\\Classes\\Controller->run()\n#43 [internal function]: Backend\\Classes\\BackendController->run()\n#44 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array()\n#45 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#46 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#47 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#48 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#49 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#50 /home/samir/Dev/Sites/edomedo/modules/backend/classes/BackendController.php(68): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#51 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(153): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}()\n#52 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#53 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#54 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#55 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#56 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#57 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle()\n#58 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#59 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#60 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#61 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#62 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#63 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#64 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#65 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#66 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute()\n#67 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#68 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#69 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#70 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#71 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#72 /home/samir/Dev/Sites/edomedo/plugins/rluders/cors/vendor/barryvdh/laravel-cors/src/HandlePreflight.php(29): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#73 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Barryvdh\\Cors\\HandlePreflight->handle()\n#74 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#75 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#76 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#77 /home/samir/Dev/Sites/edomedo/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#78 /home/samir/.config/composer/vendor/cpriego/valet-linux/server.php(232): require('/home/samir/Dev...')\n#79 {main}	\N	2020-10-20 15:35:28	2020-10-20 15:35:28
5	error	ErrorException: Trying to access array offset on value of type null in /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field_checkboxlist.htm:85\nStack trace:\n#0 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field_checkboxlist.htm(85): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError()\n#1 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#2 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#3 /home/samir/Dev/Sites/edomedo/modules/backend/formwidgets/relation/partials/_relation.htm(2): Backend\\Classes\\WidgetBase->makePartial()\n#4 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#5 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#6 /home/samir/Dev/Sites/edomedo/modules/backend/formwidgets/Relation.php(85): Backend\\Classes\\WidgetBase->makePartial()\n#7 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field_widget.htm(5): Backend\\FormWidgets\\Relation->render()\n#8 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#9 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#10 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/Form.php(275): Backend\\Classes\\WidgetBase->makePartial()\n#11 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field.htm(22): Backend\\Widgets\\Form->renderFieldElement()\n#12 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#13 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#14 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field-container.htm(8): Backend\\Classes\\WidgetBase->makePartial()\n#15 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#16 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#17 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form_fields.htm(2): Backend\\Classes\\WidgetBase->makePartial()\n#18 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#19 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#20 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form_tabs.htm(52): Backend\\Classes\\WidgetBase->makePartial()\n#21 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#22 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#23 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_section.htm(26): Backend\\Classes\\WidgetBase->makePartial()\n#24 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#25 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#26 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form.htm(7): Backend\\Classes\\WidgetBase->makePartial()\n#27 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#28 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#29 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form-container.htm(8): Backend\\Classes\\WidgetBase->makePartial()\n#30 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#31 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#32 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/Form.php(228): Backend\\Classes\\WidgetBase->makePartial()\n#33 /home/samir/Dev/Sites/edomedo/modules/backend/behaviors/FormController.php(419): Backend\\Widgets\\Form->render()\n#34 [internal function]: Backend\\Behaviors\\FormController->formRender()\n#35 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Extension/ExtendableTrait.php(414): call_user_func_array()\n#36 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(184): Backend\\Classes\\Controller->extendableCall()\n#37 /home/samir/Dev/Sites/edomedo/plugins/babayevsamirx/category/controllers/product/create.htm(13): Backend\\Classes\\Controller->__call()\n#38 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#39 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(109): Backend\\Classes\\Controller->makeFileContents()\n#40 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(419): Backend\\Classes\\Controller->makeView()\n#41 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(296): Backend\\Classes\\Controller->execPageAction()\n#42 /home/samir/Dev/Sites/edomedo/modules/backend/classes/BackendController.php(165): Backend\\Classes\\Controller->run()\n#43 [internal function]: Backend\\Classes\\BackendController->run()\n#44 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array()\n#45 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#46 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#47 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#48 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#49 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#50 /home/samir/Dev/Sites/edomedo/modules/backend/classes/BackendController.php(68): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#51 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(153): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}()\n#52 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#53 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#54 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#55 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#56 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#57 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle()\n#58 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#59 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#60 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#61 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#62 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#63 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#64 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#65 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#66 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute()\n#67 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#68 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#69 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#70 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#71 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#72 /home/samir/Dev/Sites/edomedo/plugins/rluders/cors/vendor/barryvdh/laravel-cors/src/HandlePreflight.php(29): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#73 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Barryvdh\\Cors\\HandlePreflight->handle()\n#74 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#75 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#76 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#77 /home/samir/Dev/Sites/edomedo/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#78 /home/samir/.config/composer/vendor/cpriego/valet-linux/server.php(232): require('/home/samir/Dev...')\n#79 {main}	\N	2020-10-20 15:36:08	2020-10-20 15:36:08
6	error	ErrorException: Trying to access array offset on value of type null in /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field_checkboxlist.htm:85\nStack trace:\n#0 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field_checkboxlist.htm(85): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError()\n#1 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#2 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#3 /home/samir/Dev/Sites/edomedo/modules/backend/formwidgets/relation/partials/_relation.htm(2): Backend\\Classes\\WidgetBase->makePartial()\n#4 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#5 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#6 /home/samir/Dev/Sites/edomedo/modules/backend/formwidgets/Relation.php(85): Backend\\Classes\\WidgetBase->makePartial()\n#7 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field_widget.htm(5): Backend\\FormWidgets\\Relation->render()\n#8 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#9 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#10 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/Form.php(275): Backend\\Classes\\WidgetBase->makePartial()\n#11 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field.htm(22): Backend\\Widgets\\Form->renderFieldElement()\n#12 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#13 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#14 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_field-container.htm(8): Backend\\Classes\\WidgetBase->makePartial()\n#15 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#16 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#17 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form_fields.htm(2): Backend\\Classes\\WidgetBase->makePartial()\n#18 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#19 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#20 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form_tabs.htm(52): Backend\\Classes\\WidgetBase->makePartial()\n#21 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#22 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#23 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_section.htm(26): Backend\\Classes\\WidgetBase->makePartial()\n#24 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#25 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#26 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form.htm(7): Backend\\Classes\\WidgetBase->makePartial()\n#27 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#28 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#29 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/form/partials/_form-container.htm(8): Backend\\Classes\\WidgetBase->makePartial()\n#30 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#31 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents()\n#32 /home/samir/Dev/Sites/edomedo/modules/backend/widgets/Form.php(228): Backend\\Classes\\WidgetBase->makePartial()\n#33 /home/samir/Dev/Sites/edomedo/modules/backend/behaviors/FormController.php(419): Backend\\Widgets\\Form->render()\n#34 [internal function]: Backend\\Behaviors\\FormController->formRender()\n#35 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Extension/ExtendableTrait.php(414): call_user_func_array()\n#36 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(184): Backend\\Classes\\Controller->extendableCall()\n#37 /home/samir/Dev/Sites/edomedo/plugins/babayevsamirx/category/controllers/product/create.htm(13): Backend\\Classes\\Controller->__call()\n#38 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(247): include('/home/samir/Dev...')\n#39 /home/samir/Dev/Sites/edomedo/modules/system/traits/ViewMaker.php(109): Backend\\Classes\\Controller->makeFileContents()\n#40 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(419): Backend\\Classes\\Controller->makeView()\n#41 /home/samir/Dev/Sites/edomedo/modules/backend/classes/Controller.php(296): Backend\\Classes\\Controller->execPageAction()\n#42 /home/samir/Dev/Sites/edomedo/modules/backend/classes/BackendController.php(165): Backend\\Classes\\Controller->run()\n#43 [internal function]: Backend\\Classes\\BackendController->run()\n#44 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array()\n#45 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#46 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#47 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#48 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#49 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#50 /home/samir/Dev/Sites/edomedo/modules/backend/classes/BackendController.php(68): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#51 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(153): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}()\n#52 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#53 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#54 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#55 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#56 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#57 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle()\n#58 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#59 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#60 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#61 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#62 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#63 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#64 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#65 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#66 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute()\n#67 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#68 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#69 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#70 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#71 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#72 /home/samir/Dev/Sites/edomedo/plugins/rluders/cors/vendor/barryvdh/laravel-cors/src/HandlePreflight.php(29): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#73 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Barryvdh\\Cors\\HandlePreflight->handle()\n#74 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#75 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#76 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#77 /home/samir/Dev/Sites/edomedo/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#78 /home/samir/.config/composer/vendor/cpriego/valet-linux/server.php(232): require('/home/samir/Dev...')\n#79 {main}	\N	2020-10-20 15:36:08	2020-10-20 15:36:08
7	error	Symfony\\Component\\Debug\\Exception\\FatalThrowableError: Class 'Product' not found in /home/samir/Dev/Sites/edomedo/plugins/babayevsamirx/category/routes.php:20\nStack trace:\n#0 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(205): System\\Classes\\PluginManager->{closure}()\n#1 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(179): Illuminate\\Routing\\Route->runCallable()\n#2 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#3 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#4 /home/samir/Dev/Sites/edomedo/plugins/rluders/cors/vendor/barryvdh/laravel-cors/src/HandleCors.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#5 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Barryvdh\\Cors\\HandleCors->handle()\n#6 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#7 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#8 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#9 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#10 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute()\n#11 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#12 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#13 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#14 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#15 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#16 /home/samir/Dev/Sites/edomedo/plugins/rluders/cors/vendor/barryvdh/laravel-cors/src/HandlePreflight.php(29): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#17 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Barryvdh\\Cors\\HandlePreflight->handle()\n#18 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#20 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#21 /home/samir/Dev/Sites/edomedo/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#22 /home/samir/.config/composer/vendor/cpriego/valet-linux/server.php(232): require('/home/samir/Dev...')\n#23 {main}	\N	2020-10-20 16:10:32	2020-10-20 16:10:32
8	error	League\\Flysystem\\FileNotFoundException: File not found at path: Category/119794098-organizer-bag-with-construction-tools-and-safety-equipment-on-white-background.jpg in /home/samir/Dev/Sites/edomedo/vendor/league/flysystem/src/Filesystem.php:389\nStack trace:\n#0 /home/samir/Dev/Sites/edomedo/vendor/league/flysystem/src/Filesystem.php(283): League\\Flysystem\\Filesystem->assertPresent()\n#1 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Filesystem/FilesystemAdapter.php(399): League\\Flysystem\\Filesystem->getMimetype()\n#2 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Filesystem/FilesystemManager.php(370): Illuminate\\Filesystem\\FilesystemAdapter->mimeType()\n#3 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Filesystem\\FilesystemManager->__call()\n#4 /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/controllers/LinkGenerator.php(54): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#5 [internal function]: Pkurg\\YandexDiskStorage\\Controllers\\LinkGenerator->index()\n#6 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array()\n#7 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#8 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#9 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#10 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#11 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#12 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#13 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#14 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#15 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#16 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute()\n#17 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#18 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#19 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#20 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#21 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#22 /home/samir/Dev/Sites/edomedo/plugins/rluders/cors/vendor/barryvdh/laravel-cors/src/HandlePreflight.php(29): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Barryvdh\\Cors\\HandlePreflight->handle()\n#24 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#25 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#26 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#27 /home/samir/Dev/Sites/edomedo/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#28 /home/samir/.config/composer/vendor/cpriego/valet-linux/server.php(232): require('/home/samir/Dev...')\n#29 {main}	\N	2020-10-20 16:13:18	2020-10-20 16:13:18
9	error	Arhitector\\Yandex\\Client\\Exception\\NotFoundException: Не удалось найти запрошенный ресурс. in /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/vendor/arhitector/yandex/src/Client/OAuth.php:278\nStack trace:\n#0 /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/vendor/arhitector/yandex/src/AbstractClient.php(145): Arhitector\\Yandex\\Client\\OAuth->transformResponseToException()\n#1 /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/vendor/arhitector/yandex/src/Disk.php(525): Arhitector\\Yandex\\AbstractClient->send()\n#2 /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/vendor/arhitector/yandex/src/Disk/Resource/Closed.php(406): Arhitector\\Yandex\\Disk->send()\n#3 /home/samir/Dev/Sites/edomedo/plugins/pkurg/yandexdiskstorage/controllers/LinkGenerator.php(52): Arhitector\\Yandex\\Disk\\Resource\\Closed->setPublish()\n#4 [internal function]: Pkurg\\YandexDiskStorage\\Controllers\\LinkGenerator->index()\n#5 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array()\n#6 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#7 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#8 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#9 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#10 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#11 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#12 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#13 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#14 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#15 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute()\n#16 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#17 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#18 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/samir/Dev/Sites/edomedo/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#20 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#21 /home/samir/Dev/Sites/edomedo/plugins/rluders/cors/vendor/barryvdh/laravel-cors/src/HandlePreflight.php(29): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#22 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Barryvdh\\Cors\\HandlePreflight->handle()\n#23 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#24 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#25 /home/samir/Dev/Sites/edomedo/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#26 /home/samir/Dev/Sites/edomedo/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#27 /home/samir/.config/composer/vendor/cpriego/valet-linux/server.php(232): require('/home/samir/Dev...')\n#28 {main}	\N	2020-10-20 16:16:41	2020-10-20 16:16:41
\.


--
-- Data for Name: system_files; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_files (id, disk_name, file_name, file_size, content_type, title, description, field, attachment_id, attachment_type, is_public, sort_order, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: system_mail_layouts; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_mail_layouts (id, name, code, content_html, content_text, content_css, is_locked, created_at, updated_at, options) FROM stdin;
1	Default layout	default	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n    <meta name="viewport" content="width=device-width, initial-scale=1.0" />\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n</head>\n<body>\n    <style type="text/css" media="screen">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class="wrapper layout-default" width="100%" cellpadding="0" cellspacing="0">\n\n        <!-- Header -->\n        {% partial 'header' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align="center">\n                <table class="content" width="100%" cellpadding="0" cellspacing="0">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class="body" width="100%" cellpadding="0" cellspacing="0">\n                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class="content-cell">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial 'footer' body %}\n            &copy; {{ "now"|date("Y") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>	{{ content|raw }}	@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}	t	2020-10-20 11:51:44	2020-10-20 11:51:44	\N
2	System layout	system	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n    <meta name="viewport" content="width=device-width, initial-scale=1.0" />\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n</head>\n<body>\n    <style type="text/css" media="screen">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class="wrapper layout-system" width="100%" cellpadding="0" cellspacing="0">\n        <tr>\n            <td align="center">\n                <table class="content" width="100%" cellpadding="0" cellspacing="0">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class="body" width="100%" cellpadding="0" cellspacing="0">\n                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class="content-cell">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial 'subcopy' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>	{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.	@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}	t	2020-10-20 11:51:44	2020-10-20 11:51:44	\N
\.


--
-- Data for Name: system_mail_partials; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_mail_partials (id, name, code, content_html, content_text, is_custom, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: system_mail_templates; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_mail_templates (id, code, subject, description, content_html, content_text, layout_id, is_custom, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: system_parameters; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_parameters (id, namespace, "group", item, value) FROM stdin;
2	system	update	retry	1603281905
1	system	update	count	0
\.


--
-- Data for Name: system_plugin_history; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_plugin_history (id, code, type, version, detail, created_at) FROM stdin;
1	October.Demo	comment	1.0.1	First version of Demo	2020-10-20 11:51:44
2	RainLab.Builder	comment	1.0.1	Initialize plugin.	2020-10-20 12:05:25
3	RainLab.Builder	comment	1.0.2	Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.	2020-10-20 12:05:25
4	RainLab.Builder	comment	1.0.3	Improved handling of the enum data type.	2020-10-20 12:05:25
5	RainLab.Builder	comment	1.0.4	Added user permissions to work with the Builder.	2020-10-20 12:05:25
6	RainLab.Builder	comment	1.0.5	Fixed permissions registration.	2020-10-20 12:05:25
7	RainLab.Builder	comment	1.0.6	Fixed front-end record ordering in the Record List component.	2020-10-20 12:05:25
8	RainLab.Builder	comment	1.0.7	Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.	2020-10-20 12:05:25
9	RainLab.Builder	comment	1.0.8	Added the Reorder Controller behavior.	2020-10-20 12:05:25
10	RainLab.Builder	comment	1.0.9	Minor API and UI updates.	2020-10-20 12:05:25
11	RainLab.Builder	comment	1.0.10	Minor styling update.	2020-10-20 12:05:25
12	RainLab.Builder	comment	1.0.11	Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.	2020-10-20 12:05:25
13	RainLab.Builder	comment	1.0.12	Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.	2020-10-20 12:05:25
14	RainLab.Builder	comment	1.0.13	Minor styling fix on the database editor.	2020-10-20 12:05:25
15	RainLab.Builder	comment	1.0.14	Added support for published_at timestamp field	2020-10-20 12:05:25
16	RainLab.Builder	comment	1.0.15	Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.	2020-10-20 12:05:25
17	RainLab.Builder	comment	1.0.16	Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form's outside area. Added a check that prevents creating localization strings inside other existing strings.	2020-10-20 12:05:25
18	RainLab.Builder	comment	1.0.17	Added support Trigger attribute support for RecordFinder and Repeater form widgets.	2020-10-20 12:05:25
19	RainLab.Builder	comment	1.0.18	Fixes a bug where '::class' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.	2020-10-20 12:05:25
20	RainLab.Builder	comment	1.0.19	Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.	2020-10-20 12:05:25
21	RainLab.Builder	comment	1.0.20	Fixes a bug where form the builder could trigger the "current.hasAttribute is not a function" error.	2020-10-20 12:05:25
22	RainLab.Builder	comment	1.0.21	Back-end navigation sort order updated.	2020-10-20 12:05:25
23	RainLab.Builder	comment	1.0.22	Added scopeValue property to the RecordList component.	2020-10-20 12:05:25
24	RainLab.Builder	comment	1.0.23	Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs	2020-10-20 12:05:25
25	RainLab.Builder	comment	1.0.24	Added support for tag list field type, added read only toggle for fields. Prevent plugins from using reserved PHP keywords for class names and namespaces	2020-10-20 12:05:25
26	RainLab.Builder	comment	1.0.25	Allow editing of migration code in the "Migration" popup when saving changes in the database editor.	2020-10-20 12:05:25
27	RainLab.Builder	comment	1.0.26	Allow special default values for columns and added new "Add ID column" button to database editor.	2020-10-20 12:05:25
28	RLuders.Cors	comment	1.0.0	First version of RLuders.Cors	2020-10-20 12:06:27
29	RLuders.Cors	comment	1.0.1	Fix the icon	2020-10-20 12:06:27
30	RLuders.Cors	comment	1.0.2	Fix plugin dependencies	2020-10-20 12:06:27
31	RLuders.Cors	comment	1.0.2	Fix English language	2020-10-20 12:06:27
32	RLuders.Cors	comment	1.0.2	Adds Brazilian Portuguese language	2020-10-20 12:06:27
33	RLuders.Cors	comment	1.0.2	Replace the namespace RLuders\\CORS to RLuders\\Cors	2020-10-20 12:06:27
34	RLuders.Cors	comment	1.0.3	Adds the middleware to the api Middleware Group	2020-10-20 12:06:27
35	Pkurg.YandexDiskStorage	comment	1.0.1	Initialize plugin.	2020-10-20 12:07:03
36	Pkurg.YandexDiskStorage	comment	1.0.2	Update	2020-10-20 12:07:03
37	Pkurg.YandexDiskStorage	comment	1.0.3	Update	2020-10-20 12:07:03
38	Babayevsamirx.Category	comment	1.0.1	Initialize plugin.	2020-10-20 12:38:50
39	Babayevsamirx.Category	script	1.0.2	builder_table_create_babayevsamirx_category_.php	2020-10-20 12:40:57
40	Babayevsamirx.Category	comment	1.0.2	Created table babayevsamirx_category_	2020-10-20 12:40:57
41	Babayevsamirx.Category	script	1.0.3	builder_table_update_babayevsamirx_category_.php	2020-10-20 12:41:57
42	Babayevsamirx.Category	comment	1.0.3	Updated table babayevsamirx_category_	2020-10-20 12:41:57
43	Babayevsamirx.Category	script	1.0.4	builder_table_update_babayevsamirx_category__2.php	2020-10-20 12:44:13
44	Babayevsamirx.Category	comment	1.0.4	Updated table babayevsamirx_category_	2020-10-20 12:44:13
45	Babayevsamirx.Category	script	1.0.5	builder_table_create_babayevsamirx_category_product.php	2020-10-20 15:20:32
46	Babayevsamirx.Category	comment	1.0.5	Created table babayevsamirx_category_product	2020-10-20 15:20:32
47	Babayevsamirx.Category	script	1.0.6	builder_table_create_babayevsamirx_category_category_product.php	2020-10-20 15:22:21
48	Babayevsamirx.Category	comment	1.0.6	Created table babayevsamirx_category_category_product	2020-10-20 15:22:21
\.


--
-- Data for Name: system_plugin_versions; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_plugin_versions (id, code, version, created_at, is_disabled, is_frozen) FROM stdin;
1	October.Demo	1.0.1	2020-10-20 11:51:44	f	f
2	RainLab.Builder	1.0.26	2020-10-20 12:05:25	f	f
3	RLuders.Cors	1.0.3	2020-10-20 12:06:27	f	f
4	Pkurg.YandexDiskStorage	1.0.3	2020-10-20 12:07:03	f	f
5	Babayevsamirx.Category	1.0.6	2020-10-20 15:22:21	f	f
\.


--
-- Data for Name: system_request_logs; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_request_logs (id, status_code, url, referer, count, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: system_revisions; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_revisions (id, user_id, field, "cast", old_value, new_value, revisionable_type, revisionable_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: system_settings; Type: TABLE DATA; Schema: public; Owner: caprkbhcrqjawk
--

COPY public.system_settings (id, item, value) FROM stdin;
1	yadisk_settings	{"yadiskapikey":"AgAAAABHbiT_AAao6E_1l10Xqk2_vObC_6WQCCQ"}
2	rainlab_builder_settings	{"author_name":"babayevsamirx","author_namespace":"Babayevsamirx"}
3	rluders_cors_settings	{"supportsCredentials":"1","allowedOrigins":"*","allowedHeaders":"Content-Type X-Requested-With","allowedMethods":"*","exposedHeaders":null,"maxAge":0}
\.


--
-- Name: babayevsamirx_category__id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.babayevsamirx_category__id_seq', 18, true);


--
-- Name: babayevsamirx_category_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.babayevsamirx_category_product_id_seq', 1, true);


--
-- Name: backend_access_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.backend_access_log_id_seq', 3, true);


--
-- Name: backend_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.backend_user_groups_id_seq', 1, true);


--
-- Name: backend_user_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.backend_user_preferences_id_seq', 1, false);


--
-- Name: backend_user_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.backend_user_roles_id_seq', 2, true);


--
-- Name: backend_user_throttle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.backend_user_throttle_id_seq', 1, true);


--
-- Name: backend_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.backend_users_id_seq', 1, true);


--
-- Name: cms_theme_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.cms_theme_data_id_seq', 1, false);


--
-- Name: cms_theme_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.cms_theme_logs_id_seq', 1, false);


--
-- Name: cms_theme_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.cms_theme_templates_id_seq', 1, false);


--
-- Name: deferred_bindings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.deferred_bindings_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.migrations_id_seq', 40, true);


--
-- Name: system_event_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_event_logs_id_seq', 9, true);


--
-- Name: system_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_files_id_seq', 1, false);


--
-- Name: system_mail_layouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_mail_layouts_id_seq', 2, true);


--
-- Name: system_mail_partials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_mail_partials_id_seq', 1, false);


--
-- Name: system_mail_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_mail_templates_id_seq', 1, false);


--
-- Name: system_parameters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_parameters_id_seq', 2, true);


--
-- Name: system_plugin_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_plugin_history_id_seq', 48, true);


--
-- Name: system_plugin_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_plugin_versions_id_seq', 5, true);


--
-- Name: system_request_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_request_logs_id_seq', 1, false);


--
-- Name: system_revisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_revisions_id_seq', 1, false);


--
-- Name: system_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: caprkbhcrqjawk
--

SELECT pg_catalog.setval('public.system_settings_id_seq', 3, true);


--
-- Name: babayevsamirx_category_ babayevsamirx_category__pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.babayevsamirx_category_
    ADD CONSTRAINT babayevsamirx_category__pkey PRIMARY KEY (id);


--
-- Name: babayevsamirx_category_category_product babayevsamirx_category_category_product_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.babayevsamirx_category_category_product
    ADD CONSTRAINT babayevsamirx_category_category_product_pkey PRIMARY KEY (category_id, product_id);


--
-- Name: babayevsamirx_category_product babayevsamirx_category_product_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.babayevsamirx_category_product
    ADD CONSTRAINT babayevsamirx_category_product_pkey PRIMARY KEY (id);


--
-- Name: backend_access_log backend_access_log_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_access_log
    ADD CONSTRAINT backend_access_log_pkey PRIMARY KEY (id);


--
-- Name: backend_user_groups backend_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_user_groups
    ADD CONSTRAINT backend_user_groups_pkey PRIMARY KEY (id);


--
-- Name: backend_user_preferences backend_user_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_user_preferences
    ADD CONSTRAINT backend_user_preferences_pkey PRIMARY KEY (id);


--
-- Name: backend_user_roles backend_user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_user_roles
    ADD CONSTRAINT backend_user_roles_pkey PRIMARY KEY (id);


--
-- Name: backend_user_throttle backend_user_throttle_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_user_throttle
    ADD CONSTRAINT backend_user_throttle_pkey PRIMARY KEY (id);


--
-- Name: backend_users_groups backend_users_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_users_groups
    ADD CONSTRAINT backend_users_groups_pkey PRIMARY KEY (user_id, user_group_id);


--
-- Name: backend_users backend_users_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_users
    ADD CONSTRAINT backend_users_pkey PRIMARY KEY (id);


--
-- Name: cache cache_key_unique; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_key_unique UNIQUE (key);


--
-- Name: cms_theme_data cms_theme_data_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.cms_theme_data
    ADD CONSTRAINT cms_theme_data_pkey PRIMARY KEY (id);


--
-- Name: cms_theme_logs cms_theme_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.cms_theme_logs
    ADD CONSTRAINT cms_theme_logs_pkey PRIMARY KEY (id);


--
-- Name: cms_theme_templates cms_theme_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.cms_theme_templates
    ADD CONSTRAINT cms_theme_templates_pkey PRIMARY KEY (id);


--
-- Name: deferred_bindings deferred_bindings_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.deferred_bindings
    ADD CONSTRAINT deferred_bindings_pkey PRIMARY KEY (id);


--
-- Name: backend_users email_unique; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_users
    ADD CONSTRAINT email_unique UNIQUE (email);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: backend_users login_unique; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_users
    ADD CONSTRAINT login_unique UNIQUE (login);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: backend_user_groups name_unique; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_user_groups
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: backend_user_roles role_unique; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.backend_user_roles
    ADD CONSTRAINT role_unique UNIQUE (name);


--
-- Name: sessions sessions_id_unique; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_id_unique UNIQUE (id);


--
-- Name: system_event_logs system_event_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_event_logs
    ADD CONSTRAINT system_event_logs_pkey PRIMARY KEY (id);


--
-- Name: system_files system_files_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_files
    ADD CONSTRAINT system_files_pkey PRIMARY KEY (id);


--
-- Name: system_mail_layouts system_mail_layouts_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_mail_layouts
    ADD CONSTRAINT system_mail_layouts_pkey PRIMARY KEY (id);


--
-- Name: system_mail_partials system_mail_partials_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_mail_partials
    ADD CONSTRAINT system_mail_partials_pkey PRIMARY KEY (id);


--
-- Name: system_mail_templates system_mail_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_mail_templates
    ADD CONSTRAINT system_mail_templates_pkey PRIMARY KEY (id);


--
-- Name: system_parameters system_parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_parameters
    ADD CONSTRAINT system_parameters_pkey PRIMARY KEY (id);


--
-- Name: system_plugin_history system_plugin_history_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_plugin_history
    ADD CONSTRAINT system_plugin_history_pkey PRIMARY KEY (id);


--
-- Name: system_plugin_versions system_plugin_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_plugin_versions
    ADD CONSTRAINT system_plugin_versions_pkey PRIMARY KEY (id);


--
-- Name: system_request_logs system_request_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_request_logs
    ADD CONSTRAINT system_request_logs_pkey PRIMARY KEY (id);


--
-- Name: system_revisions system_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_revisions
    ADD CONSTRAINT system_revisions_pkey PRIMARY KEY (id);


--
-- Name: system_settings system_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: caprkbhcrqjawk
--

ALTER TABLE ONLY public.system_settings
    ADD CONSTRAINT system_settings_pkey PRIMARY KEY (id);


--
-- Name: act_code_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX act_code_index ON public.backend_users USING btree (activation_code);


--
-- Name: admin_role_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX admin_role_index ON public.backend_users USING btree (role_id);


--
-- Name: backend_user_throttle_ip_address_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX backend_user_throttle_ip_address_index ON public.backend_user_throttle USING btree (ip_address);


--
-- Name: backend_user_throttle_user_id_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX backend_user_throttle_user_id_index ON public.backend_user_throttle USING btree (user_id);


--
-- Name: cms_theme_data_theme_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX cms_theme_data_theme_index ON public.cms_theme_data USING btree (theme);


--
-- Name: cms_theme_logs_theme_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX cms_theme_logs_theme_index ON public.cms_theme_logs USING btree (theme);


--
-- Name: cms_theme_logs_type_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX cms_theme_logs_type_index ON public.cms_theme_logs USING btree (type);


--
-- Name: cms_theme_logs_user_id_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX cms_theme_logs_user_id_index ON public.cms_theme_logs USING btree (user_id);


--
-- Name: cms_theme_templates_path_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX cms_theme_templates_path_index ON public.cms_theme_templates USING btree (path);


--
-- Name: cms_theme_templates_source_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX cms_theme_templates_source_index ON public.cms_theme_templates USING btree (source);


--
-- Name: code_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX code_index ON public.backend_user_groups USING btree (code);


--
-- Name: deferred_bindings_master_field_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX deferred_bindings_master_field_index ON public.deferred_bindings USING btree (master_field);


--
-- Name: deferred_bindings_master_type_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX deferred_bindings_master_type_index ON public.deferred_bindings USING btree (master_type);


--
-- Name: deferred_bindings_session_key_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX deferred_bindings_session_key_index ON public.deferred_bindings USING btree (session_key);


--
-- Name: deferred_bindings_slave_id_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX deferred_bindings_slave_id_index ON public.deferred_bindings USING btree (slave_id);


--
-- Name: deferred_bindings_slave_type_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX deferred_bindings_slave_type_index ON public.deferred_bindings USING btree (slave_type);


--
-- Name: item_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX item_index ON public.system_parameters USING btree (namespace, "group", item);


--
-- Name: jobs_queue_reserved_at_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX jobs_queue_reserved_at_index ON public.jobs USING btree (queue, reserved_at);


--
-- Name: reset_code_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX reset_code_index ON public.backend_users USING btree (reset_password_code);


--
-- Name: role_code_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX role_code_index ON public.backend_user_roles USING btree (code);


--
-- Name: system_event_logs_level_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_event_logs_level_index ON public.system_event_logs USING btree (level);


--
-- Name: system_files_attachment_id_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_files_attachment_id_index ON public.system_files USING btree (attachment_id);


--
-- Name: system_files_attachment_type_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_files_attachment_type_index ON public.system_files USING btree (attachment_type);


--
-- Name: system_files_field_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_files_field_index ON public.system_files USING btree (field);


--
-- Name: system_mail_templates_layout_id_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_mail_templates_layout_id_index ON public.system_mail_templates USING btree (layout_id);


--
-- Name: system_plugin_history_code_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_plugin_history_code_index ON public.system_plugin_history USING btree (code);


--
-- Name: system_plugin_history_type_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_plugin_history_type_index ON public.system_plugin_history USING btree (type);


--
-- Name: system_plugin_versions_code_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_plugin_versions_code_index ON public.system_plugin_versions USING btree (code);


--
-- Name: system_revisions_field_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_revisions_field_index ON public.system_revisions USING btree (field);


--
-- Name: system_revisions_revisionable_id_revisionable_type_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_revisions_revisionable_id_revisionable_type_index ON public.system_revisions USING btree (revisionable_id, revisionable_type);


--
-- Name: system_revisions_user_id_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_revisions_user_id_index ON public.system_revisions USING btree (user_id);


--
-- Name: system_settings_item_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX system_settings_item_index ON public.system_settings USING btree (item);


--
-- Name: user_item_index; Type: INDEX; Schema: public; Owner: caprkbhcrqjawk
--

CREATE INDEX user_item_index ON public.backend_user_preferences USING btree (user_id, namespace, "group", item);


--
-- PostgreSQL database dump complete
--

