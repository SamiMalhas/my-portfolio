

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


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."enum__pages_v_blocks_archive_populate_by" AS ENUM (
    'collection',
    'selection'
);


ALTER TYPE "public"."enum__pages_v_blocks_archive_populate_by" OWNER TO "postgres";


CREATE TYPE "public"."enum__pages_v_blocks_archive_relation_to" AS ENUM (
    'posts'
);


ALTER TYPE "public"."enum__pages_v_blocks_archive_relation_to" OWNER TO "postgres";


CREATE TYPE "public"."enum__pages_v_blocks_content_columns_link_appearance" AS ENUM (
    'default',
    'outline'
);


ALTER TYPE "public"."enum__pages_v_blocks_content_columns_link_appearance" OWNER TO "postgres";


CREATE TYPE "public"."enum__pages_v_blocks_content_columns_link_type" AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE "public"."enum__pages_v_blocks_content_columns_link_type" OWNER TO "postgres";


CREATE TYPE "public"."enum__pages_v_blocks_content_columns_size" AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


ALTER TYPE "public"."enum__pages_v_blocks_content_columns_size" OWNER TO "postgres";


CREATE TYPE "public"."enum__pages_v_blocks_cta_links_link_appearance" AS ENUM (
    'default',
    'outline'
);


ALTER TYPE "public"."enum__pages_v_blocks_cta_links_link_appearance" OWNER TO "postgres";


CREATE TYPE "public"."enum__pages_v_blocks_cta_links_link_type" AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE "public"."enum__pages_v_blocks_cta_links_link_type" OWNER TO "postgres";


CREATE TYPE "public"."enum__pages_v_version_hero_links_link_appearance" AS ENUM (
    'default',
    'outline'
);


ALTER TYPE "public"."enum__pages_v_version_hero_links_link_appearance" OWNER TO "postgres";


CREATE TYPE "public"."enum__pages_v_version_hero_links_link_type" AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE "public"."enum__pages_v_version_hero_links_link_type" OWNER TO "postgres";


CREATE TYPE "public"."enum__pages_v_version_hero_type" AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


ALTER TYPE "public"."enum__pages_v_version_hero_type" OWNER TO "postgres";


CREATE TYPE "public"."enum__pages_v_version_status" AS ENUM (
    'draft',
    'published'
);


ALTER TYPE "public"."enum__pages_v_version_status" OWNER TO "postgres";


CREATE TYPE "public"."enum__posts_v_version_status" AS ENUM (
    'draft',
    'published'
);


ALTER TYPE "public"."enum__posts_v_version_status" OWNER TO "postgres";


CREATE TYPE "public"."enum_footer_nav_items_link_type" AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE "public"."enum_footer_nav_items_link_type" OWNER TO "postgres";


CREATE TYPE "public"."enum_forms_confirmation_type" AS ENUM (
    'message',
    'redirect'
);


ALTER TYPE "public"."enum_forms_confirmation_type" OWNER TO "postgres";


CREATE TYPE "public"."enum_header_nav_items_link_type" AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE "public"."enum_header_nav_items_link_type" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_blocks_archive_populate_by" AS ENUM (
    'collection',
    'selection'
);


ALTER TYPE "public"."enum_pages_blocks_archive_populate_by" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_blocks_archive_relation_to" AS ENUM (
    'posts'
);


ALTER TYPE "public"."enum_pages_blocks_archive_relation_to" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_blocks_content_columns_link_appearance" AS ENUM (
    'default',
    'outline'
);


ALTER TYPE "public"."enum_pages_blocks_content_columns_link_appearance" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_blocks_content_columns_link_type" AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE "public"."enum_pages_blocks_content_columns_link_type" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_blocks_content_columns_size" AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


ALTER TYPE "public"."enum_pages_blocks_content_columns_size" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_blocks_cta_links_link_appearance" AS ENUM (
    'default',
    'outline'
);


ALTER TYPE "public"."enum_pages_blocks_cta_links_link_appearance" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_blocks_cta_links_link_type" AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE "public"."enum_pages_blocks_cta_links_link_type" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_hero_links_link_appearance" AS ENUM (
    'default',
    'outline'
);


ALTER TYPE "public"."enum_pages_hero_links_link_appearance" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_hero_links_link_type" AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE "public"."enum_pages_hero_links_link_type" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_hero_type" AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


ALTER TYPE "public"."enum_pages_hero_type" OWNER TO "postgres";


CREATE TYPE "public"."enum_pages_status" AS ENUM (
    'draft',
    'published'
);


ALTER TYPE "public"."enum_pages_status" OWNER TO "postgres";


CREATE TYPE "public"."enum_payload_jobs_log_state" AS ENUM (
    'failed',
    'succeeded'
);


ALTER TYPE "public"."enum_payload_jobs_log_state" OWNER TO "postgres";


CREATE TYPE "public"."enum_payload_jobs_log_task_slug" AS ENUM (
    'inline',
    'schedulePublish'
);


ALTER TYPE "public"."enum_payload_jobs_log_task_slug" OWNER TO "postgres";


CREATE TYPE "public"."enum_payload_jobs_task_slug" AS ENUM (
    'inline',
    'schedulePublish'
);


ALTER TYPE "public"."enum_payload_jobs_task_slug" OWNER TO "postgres";


CREATE TYPE "public"."enum_posts_status" AS ENUM (
    'draft',
    'published'
);


ALTER TYPE "public"."enum_posts_status" OWNER TO "postgres";


CREATE TYPE "public"."enum_redirects_to_type" AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE "public"."enum_redirects_to_type" OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."_pages_v" (
    "id" integer NOT NULL,
    "parent_id" integer,
    "version_title" character varying,
    "version_hero_type" "public"."enum__pages_v_version_hero_type" DEFAULT 'lowImpact'::"public"."enum__pages_v_version_hero_type",
    "version_hero_rich_text" "jsonb",
    "version_hero_media_id" integer,
    "version_meta_title" character varying,
    "version_meta_image_id" integer,
    "version_meta_description" character varying,
    "version_published_at" timestamp(3) with time zone,
    "version_slug" character varying,
    "version_slug_lock" boolean DEFAULT true,
    "version_updated_at" timestamp(3) with time zone,
    "version_created_at" timestamp(3) with time zone,
    "version__status" "public"."enum__pages_v_version_status" DEFAULT 'draft'::"public"."enum__pages_v_version_status",
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "latest" boolean,
    "autosave" boolean
);


ALTER TABLE "public"."_pages_v" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."_pages_v_blocks_archive" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "intro_content" "jsonb",
    "populate_by" "public"."enum__pages_v_blocks_archive_populate_by" DEFAULT 'collection'::"public"."enum__pages_v_blocks_archive_populate_by",
    "relation_to" "public"."enum__pages_v_blocks_archive_relation_to" DEFAULT 'posts'::"public"."enum__pages_v_blocks_archive_relation_to",
    "limit" numeric DEFAULT 10,
    "_uuid" character varying,
    "block_name" character varying
);


ALTER TABLE "public"."_pages_v_blocks_archive" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_pages_v_blocks_archive_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_pages_v_blocks_archive_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_pages_v_blocks_archive_id_seq" OWNED BY "public"."_pages_v_blocks_archive"."id";



CREATE TABLE IF NOT EXISTS "public"."_pages_v_blocks_content" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "_uuid" character varying,
    "block_name" character varying
);


ALTER TABLE "public"."_pages_v_blocks_content" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."_pages_v_blocks_content_columns" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "size" "public"."enum__pages_v_blocks_content_columns_size" DEFAULT 'oneThird'::"public"."enum__pages_v_blocks_content_columns_size",
    "rich_text" "jsonb",
    "enable_link" boolean,
    "link_type" "public"."enum__pages_v_blocks_content_columns_link_type" DEFAULT 'reference'::"public"."enum__pages_v_blocks_content_columns_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_label" character varying,
    "link_appearance" "public"."enum__pages_v_blocks_content_columns_link_appearance" DEFAULT 'default'::"public"."enum__pages_v_blocks_content_columns_link_appearance",
    "_uuid" character varying
);


ALTER TABLE "public"."_pages_v_blocks_content_columns" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_pages_v_blocks_content_columns_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_pages_v_blocks_content_columns_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_pages_v_blocks_content_columns_id_seq" OWNED BY "public"."_pages_v_blocks_content_columns"."id";



CREATE SEQUENCE IF NOT EXISTS "public"."_pages_v_blocks_content_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_pages_v_blocks_content_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_pages_v_blocks_content_id_seq" OWNED BY "public"."_pages_v_blocks_content"."id";



CREATE TABLE IF NOT EXISTS "public"."_pages_v_blocks_cta" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "rich_text" "jsonb",
    "_uuid" character varying,
    "block_name" character varying
);


ALTER TABLE "public"."_pages_v_blocks_cta" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_pages_v_blocks_cta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_pages_v_blocks_cta_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_pages_v_blocks_cta_id_seq" OWNED BY "public"."_pages_v_blocks_cta"."id";



CREATE TABLE IF NOT EXISTS "public"."_pages_v_blocks_cta_links" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "link_type" "public"."enum__pages_v_blocks_cta_links_link_type" DEFAULT 'reference'::"public"."enum__pages_v_blocks_cta_links_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_label" character varying,
    "link_appearance" "public"."enum__pages_v_blocks_cta_links_link_appearance" DEFAULT 'default'::"public"."enum__pages_v_blocks_cta_links_link_appearance",
    "_uuid" character varying
);


ALTER TABLE "public"."_pages_v_blocks_cta_links" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_pages_v_blocks_cta_links_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_pages_v_blocks_cta_links_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_pages_v_blocks_cta_links_id_seq" OWNED BY "public"."_pages_v_blocks_cta_links"."id";



CREATE TABLE IF NOT EXISTS "public"."_pages_v_blocks_form_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "form_id" integer,
    "enable_intro" boolean,
    "intro_content" "jsonb",
    "_uuid" character varying,
    "block_name" character varying
);


ALTER TABLE "public"."_pages_v_blocks_form_block" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_pages_v_blocks_form_block_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_pages_v_blocks_form_block_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_pages_v_blocks_form_block_id_seq" OWNED BY "public"."_pages_v_blocks_form_block"."id";



CREATE TABLE IF NOT EXISTS "public"."_pages_v_blocks_media_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "media_id" integer,
    "_uuid" character varying,
    "block_name" character varying
);


ALTER TABLE "public"."_pages_v_blocks_media_block" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_pages_v_blocks_media_block_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_pages_v_blocks_media_block_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_pages_v_blocks_media_block_id_seq" OWNED BY "public"."_pages_v_blocks_media_block"."id";



CREATE SEQUENCE IF NOT EXISTS "public"."_pages_v_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_pages_v_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_pages_v_id_seq" OWNED BY "public"."_pages_v"."id";



CREATE TABLE IF NOT EXISTS "public"."_pages_v_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer,
    "categories_id" integer
);


ALTER TABLE "public"."_pages_v_rels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_pages_v_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_pages_v_rels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_pages_v_rels_id_seq" OWNED BY "public"."_pages_v_rels"."id";



CREATE TABLE IF NOT EXISTS "public"."_pages_v_version_hero_links" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "link_type" "public"."enum__pages_v_version_hero_links_link_type" DEFAULT 'reference'::"public"."enum__pages_v_version_hero_links_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_label" character varying,
    "link_appearance" "public"."enum__pages_v_version_hero_links_link_appearance" DEFAULT 'default'::"public"."enum__pages_v_version_hero_links_link_appearance",
    "_uuid" character varying
);


ALTER TABLE "public"."_pages_v_version_hero_links" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_pages_v_version_hero_links_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_pages_v_version_hero_links_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_pages_v_version_hero_links_id_seq" OWNED BY "public"."_pages_v_version_hero_links"."id";



CREATE TABLE IF NOT EXISTS "public"."_posts_v" (
    "id" integer NOT NULL,
    "parent_id" integer,
    "version_title" character varying,
    "version_hero_image_id" integer,
    "version_content" "jsonb",
    "version_meta_title" character varying,
    "version_meta_image_id" integer,
    "version_meta_description" character varying,
    "version_published_at" timestamp(3) with time zone,
    "version_slug" character varying,
    "version_slug_lock" boolean DEFAULT true,
    "version_updated_at" timestamp(3) with time zone,
    "version_created_at" timestamp(3) with time zone,
    "version__status" "public"."enum__posts_v_version_status" DEFAULT 'draft'::"public"."enum__posts_v_version_status",
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "latest" boolean,
    "autosave" boolean
);


ALTER TABLE "public"."_posts_v" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_posts_v_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_posts_v_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_posts_v_id_seq" OWNED BY "public"."_posts_v"."id";



CREATE TABLE IF NOT EXISTS "public"."_posts_v_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "posts_id" integer,
    "categories_id" integer,
    "users_id" integer
);


ALTER TABLE "public"."_posts_v_rels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_posts_v_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_posts_v_rels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_posts_v_rels_id_seq" OWNED BY "public"."_posts_v_rels"."id";



CREATE TABLE IF NOT EXISTS "public"."_posts_v_version_populated_authors" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "_uuid" character varying,
    "name" character varying
);


ALTER TABLE "public"."_posts_v_version_populated_authors" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."_posts_v_version_populated_authors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."_posts_v_version_populated_authors_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."_posts_v_version_populated_authors_id_seq" OWNED BY "public"."_posts_v_version_populated_authors"."id";



CREATE TABLE IF NOT EXISTS "public"."categories" (
    "id" integer NOT NULL,
    "title" character varying NOT NULL,
    "slug" character varying,
    "slug_lock" boolean DEFAULT true,
    "parent_id" integer,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."categories" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."categories_breadcrumbs" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "doc_id" integer,
    "url" character varying,
    "label" character varying
);


ALTER TABLE "public"."categories_breadcrumbs" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."categories_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."categories_id_seq" OWNED BY "public"."categories"."id";



CREATE TABLE IF NOT EXISTS "public"."footer" (
    "id" integer NOT NULL,
    "updated_at" timestamp(3) with time zone,
    "created_at" timestamp(3) with time zone
);


ALTER TABLE "public"."footer" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."footer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."footer_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."footer_id_seq" OWNED BY "public"."footer"."id";



CREATE TABLE IF NOT EXISTS "public"."footer_nav_items" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "link_type" "public"."enum_footer_nav_items_link_type" DEFAULT 'reference'::"public"."enum_footer_nav_items_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_label" character varying NOT NULL
);


ALTER TABLE "public"."footer_nav_items" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."footer_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer
);


ALTER TABLE "public"."footer_rels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."footer_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."footer_rels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."footer_rels_id_seq" OWNED BY "public"."footer_rels"."id";



CREATE TABLE IF NOT EXISTS "public"."form_submissions" (
    "id" integer NOT NULL,
    "form_id" integer NOT NULL,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."form_submissions" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."form_submissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."form_submissions_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."form_submissions_id_seq" OWNED BY "public"."form_submissions"."id";



CREATE TABLE IF NOT EXISTS "public"."form_submissions_submission_data" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "field" character varying NOT NULL,
    "value" character varying NOT NULL
);


ALTER TABLE "public"."form_submissions_submission_data" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms" (
    "id" integer NOT NULL,
    "title" character varying NOT NULL,
    "submit_button_label" character varying,
    "confirmation_type" "public"."enum_forms_confirmation_type" DEFAULT 'message'::"public"."enum_forms_confirmation_type",
    "confirmation_message" "jsonb",
    "redirect_url" character varying,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."forms" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_blocks_checkbox" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "label" character varying,
    "width" numeric,
    "required" boolean,
    "default_value" boolean,
    "block_name" character varying
);


ALTER TABLE "public"."forms_blocks_checkbox" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_blocks_country" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "label" character varying,
    "width" numeric,
    "required" boolean,
    "block_name" character varying
);


ALTER TABLE "public"."forms_blocks_country" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_blocks_email" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "label" character varying,
    "width" numeric,
    "required" boolean,
    "block_name" character varying
);


ALTER TABLE "public"."forms_blocks_email" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_blocks_message" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "message" "jsonb",
    "block_name" character varying
);


ALTER TABLE "public"."forms_blocks_message" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_blocks_number" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "label" character varying,
    "width" numeric,
    "default_value" numeric,
    "required" boolean,
    "block_name" character varying
);


ALTER TABLE "public"."forms_blocks_number" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_blocks_select" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "label" character varying,
    "width" numeric,
    "default_value" character varying,
    "placeholder" character varying,
    "required" boolean,
    "block_name" character varying
);


ALTER TABLE "public"."forms_blocks_select" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_blocks_select_options" (
    "_order" integer NOT NULL,
    "_parent_id" character varying NOT NULL,
    "id" character varying NOT NULL,
    "label" character varying NOT NULL,
    "value" character varying NOT NULL
);


ALTER TABLE "public"."forms_blocks_select_options" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_blocks_state" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "label" character varying,
    "width" numeric,
    "required" boolean,
    "block_name" character varying
);


ALTER TABLE "public"."forms_blocks_state" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_blocks_text" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "label" character varying,
    "width" numeric,
    "default_value" character varying,
    "required" boolean,
    "block_name" character varying
);


ALTER TABLE "public"."forms_blocks_text" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_blocks_textarea" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "label" character varying,
    "width" numeric,
    "default_value" character varying,
    "required" boolean,
    "block_name" character varying
);


ALTER TABLE "public"."forms_blocks_textarea" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."forms_emails" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "email_to" character varying,
    "cc" character varying,
    "bcc" character varying,
    "reply_to" character varying,
    "email_from" character varying,
    "subject" character varying DEFAULT 'You''''ve received a new message.'::character varying NOT NULL,
    "message" "jsonb"
);


ALTER TABLE "public"."forms_emails" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."forms_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."forms_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."forms_id_seq" OWNED BY "public"."forms"."id";



CREATE TABLE IF NOT EXISTS "public"."header" (
    "id" integer NOT NULL,
    "updated_at" timestamp(3) with time zone,
    "created_at" timestamp(3) with time zone
);


ALTER TABLE "public"."header" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."header_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."header_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."header_id_seq" OWNED BY "public"."header"."id";



CREATE TABLE IF NOT EXISTS "public"."header_nav_items" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "link_type" "public"."enum_header_nav_items_link_type" DEFAULT 'reference'::"public"."enum_header_nav_items_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_label" character varying NOT NULL
);


ALTER TABLE "public"."header_nav_items" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."header_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer
);


ALTER TABLE "public"."header_rels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."header_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."header_rels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."header_rels_id_seq" OWNED BY "public"."header_rels"."id";



CREATE TABLE IF NOT EXISTS "public"."media" (
    "id" integer NOT NULL,
    "alt" character varying,
    "caption" "jsonb",
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "url" character varying,
    "thumbnail_u_r_l" character varying,
    "filename" character varying,
    "mime_type" character varying,
    "filesize" numeric,
    "width" numeric,
    "height" numeric,
    "focal_x" numeric,
    "focal_y" numeric,
    "sizes_thumbnail_url" character varying,
    "sizes_thumbnail_width" numeric,
    "sizes_thumbnail_height" numeric,
    "sizes_thumbnail_mime_type" character varying,
    "sizes_thumbnail_filesize" numeric,
    "sizes_thumbnail_filename" character varying,
    "sizes_square_url" character varying,
    "sizes_square_width" numeric,
    "sizes_square_height" numeric,
    "sizes_square_mime_type" character varying,
    "sizes_square_filesize" numeric,
    "sizes_square_filename" character varying,
    "sizes_small_url" character varying,
    "sizes_small_width" numeric,
    "sizes_small_height" numeric,
    "sizes_small_mime_type" character varying,
    "sizes_small_filesize" numeric,
    "sizes_small_filename" character varying,
    "sizes_medium_url" character varying,
    "sizes_medium_width" numeric,
    "sizes_medium_height" numeric,
    "sizes_medium_mime_type" character varying,
    "sizes_medium_filesize" numeric,
    "sizes_medium_filename" character varying,
    "sizes_large_url" character varying,
    "sizes_large_width" numeric,
    "sizes_large_height" numeric,
    "sizes_large_mime_type" character varying,
    "sizes_large_filesize" numeric,
    "sizes_large_filename" character varying,
    "sizes_xlarge_url" character varying,
    "sizes_xlarge_width" numeric,
    "sizes_xlarge_height" numeric,
    "sizes_xlarge_mime_type" character varying,
    "sizes_xlarge_filesize" numeric,
    "sizes_xlarge_filename" character varying,
    "sizes_og_url" character varying,
    "sizes_og_width" numeric,
    "sizes_og_height" numeric,
    "sizes_og_mime_type" character varying,
    "sizes_og_filesize" numeric,
    "sizes_og_filename" character varying
);


ALTER TABLE "public"."media" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."media_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."media_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."media_id_seq" OWNED BY "public"."media"."id";



CREATE TABLE IF NOT EXISTS "public"."pages" (
    "id" integer NOT NULL,
    "title" character varying,
    "hero_type" "public"."enum_pages_hero_type" DEFAULT 'lowImpact'::"public"."enum_pages_hero_type",
    "hero_rich_text" "jsonb",
    "hero_media_id" integer,
    "meta_title" character varying,
    "meta_image_id" integer,
    "meta_description" character varying,
    "published_at" timestamp(3) with time zone,
    "slug" character varying,
    "slug_lock" boolean DEFAULT true,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "_status" "public"."enum_pages_status" DEFAULT 'draft'::"public"."enum_pages_status"
);


ALTER TABLE "public"."pages" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."pages_blocks_archive" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "intro_content" "jsonb",
    "populate_by" "public"."enum_pages_blocks_archive_populate_by" DEFAULT 'collection'::"public"."enum_pages_blocks_archive_populate_by",
    "relation_to" "public"."enum_pages_blocks_archive_relation_to" DEFAULT 'posts'::"public"."enum_pages_blocks_archive_relation_to",
    "limit" numeric DEFAULT 10,
    "block_name" character varying
);


ALTER TABLE "public"."pages_blocks_archive" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."pages_blocks_content" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "block_name" character varying
);


ALTER TABLE "public"."pages_blocks_content" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."pages_blocks_content_columns" (
    "_order" integer NOT NULL,
    "_parent_id" character varying NOT NULL,
    "id" character varying NOT NULL,
    "size" "public"."enum_pages_blocks_content_columns_size" DEFAULT 'oneThird'::"public"."enum_pages_blocks_content_columns_size",
    "rich_text" "jsonb",
    "enable_link" boolean,
    "link_type" "public"."enum_pages_blocks_content_columns_link_type" DEFAULT 'reference'::"public"."enum_pages_blocks_content_columns_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_label" character varying,
    "link_appearance" "public"."enum_pages_blocks_content_columns_link_appearance" DEFAULT 'default'::"public"."enum_pages_blocks_content_columns_link_appearance"
);


ALTER TABLE "public"."pages_blocks_content_columns" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."pages_blocks_cta" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "rich_text" "jsonb",
    "block_name" character varying
);


ALTER TABLE "public"."pages_blocks_cta" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."pages_blocks_cta_links" (
    "_order" integer NOT NULL,
    "_parent_id" character varying NOT NULL,
    "id" character varying NOT NULL,
    "link_type" "public"."enum_pages_blocks_cta_links_link_type" DEFAULT 'reference'::"public"."enum_pages_blocks_cta_links_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_label" character varying,
    "link_appearance" "public"."enum_pages_blocks_cta_links_link_appearance" DEFAULT 'default'::"public"."enum_pages_blocks_cta_links_link_appearance"
);


ALTER TABLE "public"."pages_blocks_cta_links" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."pages_blocks_form_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "form_id" integer,
    "enable_intro" boolean,
    "intro_content" "jsonb",
    "block_name" character varying
);


ALTER TABLE "public"."pages_blocks_form_block" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."pages_blocks_media_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "media_id" integer,
    "block_name" character varying
);


ALTER TABLE "public"."pages_blocks_media_block" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."pages_hero_links" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "link_type" "public"."enum_pages_hero_links_link_type" DEFAULT 'reference'::"public"."enum_pages_hero_links_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_label" character varying,
    "link_appearance" "public"."enum_pages_hero_links_link_appearance" DEFAULT 'default'::"public"."enum_pages_hero_links_link_appearance"
);


ALTER TABLE "public"."pages_hero_links" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."pages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."pages_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."pages_id_seq" OWNED BY "public"."pages"."id";



CREATE TABLE IF NOT EXISTS "public"."pages_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer,
    "categories_id" integer
);


ALTER TABLE "public"."pages_rels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."pages_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."pages_rels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."pages_rels_id_seq" OWNED BY "public"."pages_rels"."id";



CREATE TABLE IF NOT EXISTS "public"."payload_jobs" (
    "id" integer NOT NULL,
    "input" "jsonb",
    "completed_at" timestamp(3) with time zone,
    "total_tried" numeric DEFAULT 0,
    "has_error" boolean DEFAULT false,
    "error" "jsonb",
    "task_slug" "public"."enum_payload_jobs_task_slug",
    "queue" character varying DEFAULT 'default'::character varying,
    "wait_until" timestamp(3) with time zone,
    "processing" boolean DEFAULT false,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."payload_jobs" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."payload_jobs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."payload_jobs_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."payload_jobs_id_seq" OWNED BY "public"."payload_jobs"."id";



CREATE TABLE IF NOT EXISTS "public"."payload_jobs_log" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "executed_at" timestamp(3) with time zone NOT NULL,
    "completed_at" timestamp(3) with time zone NOT NULL,
    "task_slug" "public"."enum_payload_jobs_log_task_slug" NOT NULL,
    "task_i_d" character varying NOT NULL,
    "input" "jsonb",
    "output" "jsonb",
    "state" "public"."enum_payload_jobs_log_state" NOT NULL,
    "error" "jsonb"
);


ALTER TABLE "public"."payload_jobs_log" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."payload_locked_documents" (
    "id" integer NOT NULL,
    "global_slug" character varying,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."payload_locked_documents" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."payload_locked_documents_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."payload_locked_documents_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."payload_locked_documents_id_seq" OWNED BY "public"."payload_locked_documents"."id";



CREATE TABLE IF NOT EXISTS "public"."payload_locked_documents_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer,
    "media_id" integer,
    "categories_id" integer,
    "users_id" integer,
    "redirects_id" integer,
    "forms_id" integer,
    "form_submissions_id" integer,
    "search_id" integer,
    "payload_jobs_id" integer
);


ALTER TABLE "public"."payload_locked_documents_rels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."payload_locked_documents_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."payload_locked_documents_rels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."payload_locked_documents_rels_id_seq" OWNED BY "public"."payload_locked_documents_rels"."id";



CREATE TABLE IF NOT EXISTS "public"."payload_migrations" (
    "id" integer NOT NULL,
    "name" character varying,
    "batch" numeric,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."payload_migrations" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."payload_migrations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."payload_migrations_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."payload_migrations_id_seq" OWNED BY "public"."payload_migrations"."id";



CREATE TABLE IF NOT EXISTS "public"."payload_preferences" (
    "id" integer NOT NULL,
    "key" character varying,
    "value" "jsonb",
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."payload_preferences" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."payload_preferences_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."payload_preferences_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."payload_preferences_id_seq" OWNED BY "public"."payload_preferences"."id";



CREATE TABLE IF NOT EXISTS "public"."payload_preferences_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "users_id" integer
);


ALTER TABLE "public"."payload_preferences_rels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."payload_preferences_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."payload_preferences_rels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."payload_preferences_rels_id_seq" OWNED BY "public"."payload_preferences_rels"."id";



CREATE TABLE IF NOT EXISTS "public"."posts" (
    "id" integer NOT NULL,
    "title" character varying,
    "hero_image_id" integer,
    "content" "jsonb",
    "meta_title" character varying,
    "meta_image_id" integer,
    "meta_description" character varying,
    "published_at" timestamp(3) with time zone,
    "slug" character varying,
    "slug_lock" boolean DEFAULT true,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "_status" "public"."enum_posts_status" DEFAULT 'draft'::"public"."enum_posts_status"
);


ALTER TABLE "public"."posts" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."posts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."posts_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."posts_id_seq" OWNED BY "public"."posts"."id";



CREATE TABLE IF NOT EXISTS "public"."posts_populated_authors" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying
);


ALTER TABLE "public"."posts_populated_authors" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."posts_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "posts_id" integer,
    "categories_id" integer,
    "users_id" integer
);


ALTER TABLE "public"."posts_rels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."posts_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."posts_rels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."posts_rels_id_seq" OWNED BY "public"."posts_rels"."id";



CREATE TABLE IF NOT EXISTS "public"."redirects" (
    "id" integer NOT NULL,
    "from" character varying NOT NULL,
    "to_type" "public"."enum_redirects_to_type" DEFAULT 'reference'::"public"."enum_redirects_to_type",
    "to_url" character varying,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."redirects" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."redirects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."redirects_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."redirects_id_seq" OWNED BY "public"."redirects"."id";



CREATE TABLE IF NOT EXISTS "public"."redirects_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer
);


ALTER TABLE "public"."redirects_rels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."redirects_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."redirects_rels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."redirects_rels_id_seq" OWNED BY "public"."redirects_rels"."id";



CREATE TABLE IF NOT EXISTS "public"."search" (
    "id" integer NOT NULL,
    "title" character varying,
    "priority" numeric,
    "slug" character varying,
    "meta_title" character varying,
    "meta_description" character varying,
    "meta_image_id" integer,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."search" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."search_categories" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "relation_to" character varying,
    "title" character varying
);


ALTER TABLE "public"."search_categories" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."search_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."search_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."search_id_seq" OWNED BY "public"."search"."id";



CREATE TABLE IF NOT EXISTS "public"."search_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "posts_id" integer
);


ALTER TABLE "public"."search_rels" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."search_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."search_rels_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."search_rels_id_seq" OWNED BY "public"."search_rels"."id";



CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" integer NOT NULL,
    "name" character varying,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "email" character varying NOT NULL,
    "reset_password_token" character varying,
    "reset_password_expiration" timestamp(3) with time zone,
    "salt" character varying,
    "hash" character varying,
    "login_attempts" numeric DEFAULT 0,
    "lock_until" timestamp(3) with time zone
);


ALTER TABLE "public"."users" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."users_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."users_id_seq" OWNED BY "public"."users"."id";



ALTER TABLE ONLY "public"."_pages_v" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_pages_v_blocks_archive" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_archive_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_pages_v_blocks_content" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_content_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_pages_v_blocks_content_columns" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_content_columns_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_pages_v_blocks_cta" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_cta_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_pages_v_blocks_cta_links" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_cta_links_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_pages_v_blocks_form_block" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_form_block_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_pages_v_blocks_media_block" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_media_block_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_pages_v_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_rels_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_pages_v_version_hero_links" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_version_hero_links_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_posts_v" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_posts_v_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_posts_v_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_posts_v_rels_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_posts_v_version_populated_authors" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_posts_v_version_populated_authors_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."categories" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."categories_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."footer" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."footer_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."footer_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."footer_rels_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."form_submissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."form_submissions_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."forms" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."header" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."header_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."header_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."header_rels_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."media" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."media_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."pages" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pages_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."pages_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pages_rels_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."payload_jobs" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_jobs_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."payload_locked_documents" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_locked_documents_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."payload_locked_documents_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_locked_documents_rels_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."payload_migrations" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_migrations_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."payload_preferences" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_preferences_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."payload_preferences_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_preferences_rels_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."posts" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."posts_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."posts_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."posts_rels_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."redirects" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."redirects_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."redirects_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."redirects_rels_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."search" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."search_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."search_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."search_rels_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."users" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."users_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."_pages_v_blocks_archive"
    ADD CONSTRAINT "_pages_v_blocks_archive_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_pages_v_blocks_content_columns"
    ADD CONSTRAINT "_pages_v_blocks_content_columns_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_pages_v_blocks_content"
    ADD CONSTRAINT "_pages_v_blocks_content_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_pages_v_blocks_cta_links"
    ADD CONSTRAINT "_pages_v_blocks_cta_links_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_pages_v_blocks_cta"
    ADD CONSTRAINT "_pages_v_blocks_cta_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_pages_v_blocks_form_block"
    ADD CONSTRAINT "_pages_v_blocks_form_block_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_pages_v_blocks_media_block"
    ADD CONSTRAINT "_pages_v_blocks_media_block_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_pages_v"
    ADD CONSTRAINT "_pages_v_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_pages_v_version_hero_links"
    ADD CONSTRAINT "_pages_v_version_hero_links_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_posts_v"
    ADD CONSTRAINT "_posts_v_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_posts_v_rels"
    ADD CONSTRAINT "_posts_v_rels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_posts_v_version_populated_authors"
    ADD CONSTRAINT "_posts_v_version_populated_authors_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."categories_breadcrumbs"
    ADD CONSTRAINT "categories_breadcrumbs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."categories"
    ADD CONSTRAINT "categories_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."footer_nav_items"
    ADD CONSTRAINT "footer_nav_items_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."footer"
    ADD CONSTRAINT "footer_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."footer_rels"
    ADD CONSTRAINT "footer_rels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."form_submissions"
    ADD CONSTRAINT "form_submissions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."form_submissions_submission_data"
    ADD CONSTRAINT "form_submissions_submission_data_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_blocks_checkbox"
    ADD CONSTRAINT "forms_blocks_checkbox_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_blocks_country"
    ADD CONSTRAINT "forms_blocks_country_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_blocks_email"
    ADD CONSTRAINT "forms_blocks_email_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_blocks_message"
    ADD CONSTRAINT "forms_blocks_message_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_blocks_number"
    ADD CONSTRAINT "forms_blocks_number_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_blocks_select_options"
    ADD CONSTRAINT "forms_blocks_select_options_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_blocks_select"
    ADD CONSTRAINT "forms_blocks_select_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_blocks_state"
    ADD CONSTRAINT "forms_blocks_state_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_blocks_text"
    ADD CONSTRAINT "forms_blocks_text_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_blocks_textarea"
    ADD CONSTRAINT "forms_blocks_textarea_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms_emails"
    ADD CONSTRAINT "forms_emails_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."forms"
    ADD CONSTRAINT "forms_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."header_nav_items"
    ADD CONSTRAINT "header_nav_items_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."header"
    ADD CONSTRAINT "header_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."header_rels"
    ADD CONSTRAINT "header_rels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."media"
    ADD CONSTRAINT "media_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."pages_blocks_archive"
    ADD CONSTRAINT "pages_blocks_archive_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."pages_blocks_content_columns"
    ADD CONSTRAINT "pages_blocks_content_columns_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."pages_blocks_content"
    ADD CONSTRAINT "pages_blocks_content_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."pages_blocks_cta_links"
    ADD CONSTRAINT "pages_blocks_cta_links_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."pages_blocks_cta"
    ADD CONSTRAINT "pages_blocks_cta_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."pages_blocks_form_block"
    ADD CONSTRAINT "pages_blocks_form_block_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."pages_blocks_media_block"
    ADD CONSTRAINT "pages_blocks_media_block_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."pages_hero_links"
    ADD CONSTRAINT "pages_hero_links_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."pages"
    ADD CONSTRAINT "pages_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payload_jobs_log"
    ADD CONSTRAINT "payload_jobs_log_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payload_jobs"
    ADD CONSTRAINT "payload_jobs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payload_locked_documents"
    ADD CONSTRAINT "payload_locked_documents_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payload_migrations"
    ADD CONSTRAINT "payload_migrations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payload_preferences"
    ADD CONSTRAINT "payload_preferences_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payload_preferences_rels"
    ADD CONSTRAINT "payload_preferences_rels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."posts"
    ADD CONSTRAINT "posts_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."posts_populated_authors"
    ADD CONSTRAINT "posts_populated_authors_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."posts_rels"
    ADD CONSTRAINT "posts_rels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."redirects"
    ADD CONSTRAINT "redirects_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."redirects_rels"
    ADD CONSTRAINT "redirects_rels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."search_categories"
    ADD CONSTRAINT "search_categories_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."search"
    ADD CONSTRAINT "search_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."search_rels"
    ADD CONSTRAINT "search_rels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");



CREATE INDEX "_pages_v_autosave_idx" ON "public"."_pages_v" USING "btree" ("autosave");



CREATE INDEX "_pages_v_blocks_archive_order_idx" ON "public"."_pages_v_blocks_archive" USING "btree" ("_order");



CREATE INDEX "_pages_v_blocks_archive_parent_id_idx" ON "public"."_pages_v_blocks_archive" USING "btree" ("_parent_id");



CREATE INDEX "_pages_v_blocks_archive_path_idx" ON "public"."_pages_v_blocks_archive" USING "btree" ("_path");



CREATE INDEX "_pages_v_blocks_content_columns_order_idx" ON "public"."_pages_v_blocks_content_columns" USING "btree" ("_order");



CREATE INDEX "_pages_v_blocks_content_columns_parent_id_idx" ON "public"."_pages_v_blocks_content_columns" USING "btree" ("_parent_id");



CREATE INDEX "_pages_v_blocks_content_order_idx" ON "public"."_pages_v_blocks_content" USING "btree" ("_order");



CREATE INDEX "_pages_v_blocks_content_parent_id_idx" ON "public"."_pages_v_blocks_content" USING "btree" ("_parent_id");



CREATE INDEX "_pages_v_blocks_content_path_idx" ON "public"."_pages_v_blocks_content" USING "btree" ("_path");



CREATE INDEX "_pages_v_blocks_cta_links_order_idx" ON "public"."_pages_v_blocks_cta_links" USING "btree" ("_order");



CREATE INDEX "_pages_v_blocks_cta_links_parent_id_idx" ON "public"."_pages_v_blocks_cta_links" USING "btree" ("_parent_id");



CREATE INDEX "_pages_v_blocks_cta_order_idx" ON "public"."_pages_v_blocks_cta" USING "btree" ("_order");



CREATE INDEX "_pages_v_blocks_cta_parent_id_idx" ON "public"."_pages_v_blocks_cta" USING "btree" ("_parent_id");



CREATE INDEX "_pages_v_blocks_cta_path_idx" ON "public"."_pages_v_blocks_cta" USING "btree" ("_path");



CREATE INDEX "_pages_v_blocks_form_block_form_idx" ON "public"."_pages_v_blocks_form_block" USING "btree" ("form_id");



CREATE INDEX "_pages_v_blocks_form_block_order_idx" ON "public"."_pages_v_blocks_form_block" USING "btree" ("_order");



CREATE INDEX "_pages_v_blocks_form_block_parent_id_idx" ON "public"."_pages_v_blocks_form_block" USING "btree" ("_parent_id");



CREATE INDEX "_pages_v_blocks_form_block_path_idx" ON "public"."_pages_v_blocks_form_block" USING "btree" ("_path");



CREATE INDEX "_pages_v_blocks_media_block_media_idx" ON "public"."_pages_v_blocks_media_block" USING "btree" ("media_id");



CREATE INDEX "_pages_v_blocks_media_block_order_idx" ON "public"."_pages_v_blocks_media_block" USING "btree" ("_order");



CREATE INDEX "_pages_v_blocks_media_block_parent_id_idx" ON "public"."_pages_v_blocks_media_block" USING "btree" ("_parent_id");



CREATE INDEX "_pages_v_blocks_media_block_path_idx" ON "public"."_pages_v_blocks_media_block" USING "btree" ("_path");



CREATE INDEX "_pages_v_created_at_idx" ON "public"."_pages_v" USING "btree" ("created_at");



CREATE INDEX "_pages_v_latest_idx" ON "public"."_pages_v" USING "btree" ("latest");



CREATE INDEX "_pages_v_parent_idx" ON "public"."_pages_v" USING "btree" ("parent_id");



CREATE INDEX "_pages_v_rels_categories_id_idx" ON "public"."_pages_v_rels" USING "btree" ("categories_id");



CREATE INDEX "_pages_v_rels_order_idx" ON "public"."_pages_v_rels" USING "btree" ("order");



CREATE INDEX "_pages_v_rels_pages_id_idx" ON "public"."_pages_v_rels" USING "btree" ("pages_id");



CREATE INDEX "_pages_v_rels_parent_idx" ON "public"."_pages_v_rels" USING "btree" ("parent_id");



CREATE INDEX "_pages_v_rels_path_idx" ON "public"."_pages_v_rels" USING "btree" ("path");



CREATE INDEX "_pages_v_rels_posts_id_idx" ON "public"."_pages_v_rels" USING "btree" ("posts_id");



CREATE INDEX "_pages_v_updated_at_idx" ON "public"."_pages_v" USING "btree" ("updated_at");



CREATE INDEX "_pages_v_version_hero_links_order_idx" ON "public"."_pages_v_version_hero_links" USING "btree" ("_order");



CREATE INDEX "_pages_v_version_hero_links_parent_id_idx" ON "public"."_pages_v_version_hero_links" USING "btree" ("_parent_id");



CREATE INDEX "_pages_v_version_hero_version_hero_media_idx" ON "public"."_pages_v" USING "btree" ("version_hero_media_id");



CREATE INDEX "_pages_v_version_meta_version_meta_image_idx" ON "public"."_pages_v" USING "btree" ("version_meta_image_id");



CREATE INDEX "_pages_v_version_version__status_idx" ON "public"."_pages_v" USING "btree" ("version__status");



CREATE INDEX "_pages_v_version_version_created_at_idx" ON "public"."_pages_v" USING "btree" ("version_created_at");



CREATE INDEX "_pages_v_version_version_slug_idx" ON "public"."_pages_v" USING "btree" ("version_slug");



CREATE INDEX "_pages_v_version_version_updated_at_idx" ON "public"."_pages_v" USING "btree" ("version_updated_at");



CREATE INDEX "_posts_v_autosave_idx" ON "public"."_posts_v" USING "btree" ("autosave");



CREATE INDEX "_posts_v_created_at_idx" ON "public"."_posts_v" USING "btree" ("created_at");



CREATE INDEX "_posts_v_latest_idx" ON "public"."_posts_v" USING "btree" ("latest");



CREATE INDEX "_posts_v_parent_idx" ON "public"."_posts_v" USING "btree" ("parent_id");



CREATE INDEX "_posts_v_rels_categories_id_idx" ON "public"."_posts_v_rels" USING "btree" ("categories_id");



CREATE INDEX "_posts_v_rels_order_idx" ON "public"."_posts_v_rels" USING "btree" ("order");



CREATE INDEX "_posts_v_rels_parent_idx" ON "public"."_posts_v_rels" USING "btree" ("parent_id");



CREATE INDEX "_posts_v_rels_path_idx" ON "public"."_posts_v_rels" USING "btree" ("path");



CREATE INDEX "_posts_v_rels_posts_id_idx" ON "public"."_posts_v_rels" USING "btree" ("posts_id");



CREATE INDEX "_posts_v_rels_users_id_idx" ON "public"."_posts_v_rels" USING "btree" ("users_id");



CREATE INDEX "_posts_v_updated_at_idx" ON "public"."_posts_v" USING "btree" ("updated_at");



CREATE INDEX "_posts_v_version_meta_version_meta_image_idx" ON "public"."_posts_v" USING "btree" ("version_meta_image_id");



CREATE INDEX "_posts_v_version_populated_authors_order_idx" ON "public"."_posts_v_version_populated_authors" USING "btree" ("_order");



CREATE INDEX "_posts_v_version_populated_authors_parent_id_idx" ON "public"."_posts_v_version_populated_authors" USING "btree" ("_parent_id");



CREATE INDEX "_posts_v_version_version__status_idx" ON "public"."_posts_v" USING "btree" ("version__status");



CREATE INDEX "_posts_v_version_version_created_at_idx" ON "public"."_posts_v" USING "btree" ("version_created_at");



CREATE INDEX "_posts_v_version_version_hero_image_idx" ON "public"."_posts_v" USING "btree" ("version_hero_image_id");



CREATE INDEX "_posts_v_version_version_slug_idx" ON "public"."_posts_v" USING "btree" ("version_slug");



CREATE INDEX "_posts_v_version_version_updated_at_idx" ON "public"."_posts_v" USING "btree" ("version_updated_at");



CREATE INDEX "categories_breadcrumbs_doc_idx" ON "public"."categories_breadcrumbs" USING "btree" ("doc_id");



CREATE INDEX "categories_breadcrumbs_order_idx" ON "public"."categories_breadcrumbs" USING "btree" ("_order");



CREATE INDEX "categories_breadcrumbs_parent_id_idx" ON "public"."categories_breadcrumbs" USING "btree" ("_parent_id");



CREATE INDEX "categories_created_at_idx" ON "public"."categories" USING "btree" ("created_at");



CREATE INDEX "categories_parent_idx" ON "public"."categories" USING "btree" ("parent_id");



CREATE INDEX "categories_slug_idx" ON "public"."categories" USING "btree" ("slug");



CREATE INDEX "categories_updated_at_idx" ON "public"."categories" USING "btree" ("updated_at");



CREATE INDEX "footer_nav_items_order_idx" ON "public"."footer_nav_items" USING "btree" ("_order");



CREATE INDEX "footer_nav_items_parent_id_idx" ON "public"."footer_nav_items" USING "btree" ("_parent_id");



CREATE INDEX "footer_rels_order_idx" ON "public"."footer_rels" USING "btree" ("order");



CREATE INDEX "footer_rels_pages_id_idx" ON "public"."footer_rels" USING "btree" ("pages_id");



CREATE INDEX "footer_rels_parent_idx" ON "public"."footer_rels" USING "btree" ("parent_id");



CREATE INDEX "footer_rels_path_idx" ON "public"."footer_rels" USING "btree" ("path");



CREATE INDEX "footer_rels_posts_id_idx" ON "public"."footer_rels" USING "btree" ("posts_id");



CREATE INDEX "form_submissions_created_at_idx" ON "public"."form_submissions" USING "btree" ("created_at");



CREATE INDEX "form_submissions_form_idx" ON "public"."form_submissions" USING "btree" ("form_id");



CREATE INDEX "form_submissions_submission_data_order_idx" ON "public"."form_submissions_submission_data" USING "btree" ("_order");



CREATE INDEX "form_submissions_submission_data_parent_id_idx" ON "public"."form_submissions_submission_data" USING "btree" ("_parent_id");



CREATE INDEX "form_submissions_updated_at_idx" ON "public"."form_submissions" USING "btree" ("updated_at");



CREATE INDEX "forms_blocks_checkbox_order_idx" ON "public"."forms_blocks_checkbox" USING "btree" ("_order");



CREATE INDEX "forms_blocks_checkbox_parent_id_idx" ON "public"."forms_blocks_checkbox" USING "btree" ("_parent_id");



CREATE INDEX "forms_blocks_checkbox_path_idx" ON "public"."forms_blocks_checkbox" USING "btree" ("_path");



CREATE INDEX "forms_blocks_country_order_idx" ON "public"."forms_blocks_country" USING "btree" ("_order");



CREATE INDEX "forms_blocks_country_parent_id_idx" ON "public"."forms_blocks_country" USING "btree" ("_parent_id");



CREATE INDEX "forms_blocks_country_path_idx" ON "public"."forms_blocks_country" USING "btree" ("_path");



CREATE INDEX "forms_blocks_email_order_idx" ON "public"."forms_blocks_email" USING "btree" ("_order");



CREATE INDEX "forms_blocks_email_parent_id_idx" ON "public"."forms_blocks_email" USING "btree" ("_parent_id");



CREATE INDEX "forms_blocks_email_path_idx" ON "public"."forms_blocks_email" USING "btree" ("_path");



CREATE INDEX "forms_blocks_message_order_idx" ON "public"."forms_blocks_message" USING "btree" ("_order");



CREATE INDEX "forms_blocks_message_parent_id_idx" ON "public"."forms_blocks_message" USING "btree" ("_parent_id");



CREATE INDEX "forms_blocks_message_path_idx" ON "public"."forms_blocks_message" USING "btree" ("_path");



CREATE INDEX "forms_blocks_number_order_idx" ON "public"."forms_blocks_number" USING "btree" ("_order");



CREATE INDEX "forms_blocks_number_parent_id_idx" ON "public"."forms_blocks_number" USING "btree" ("_parent_id");



CREATE INDEX "forms_blocks_number_path_idx" ON "public"."forms_blocks_number" USING "btree" ("_path");



CREATE INDEX "forms_blocks_select_options_order_idx" ON "public"."forms_blocks_select_options" USING "btree" ("_order");



CREATE INDEX "forms_blocks_select_options_parent_id_idx" ON "public"."forms_blocks_select_options" USING "btree" ("_parent_id");



CREATE INDEX "forms_blocks_select_order_idx" ON "public"."forms_blocks_select" USING "btree" ("_order");



CREATE INDEX "forms_blocks_select_parent_id_idx" ON "public"."forms_blocks_select" USING "btree" ("_parent_id");



CREATE INDEX "forms_blocks_select_path_idx" ON "public"."forms_blocks_select" USING "btree" ("_path");



CREATE INDEX "forms_blocks_state_order_idx" ON "public"."forms_blocks_state" USING "btree" ("_order");



CREATE INDEX "forms_blocks_state_parent_id_idx" ON "public"."forms_blocks_state" USING "btree" ("_parent_id");



CREATE INDEX "forms_blocks_state_path_idx" ON "public"."forms_blocks_state" USING "btree" ("_path");



CREATE INDEX "forms_blocks_text_order_idx" ON "public"."forms_blocks_text" USING "btree" ("_order");



CREATE INDEX "forms_blocks_text_parent_id_idx" ON "public"."forms_blocks_text" USING "btree" ("_parent_id");



CREATE INDEX "forms_blocks_text_path_idx" ON "public"."forms_blocks_text" USING "btree" ("_path");



CREATE INDEX "forms_blocks_textarea_order_idx" ON "public"."forms_blocks_textarea" USING "btree" ("_order");



CREATE INDEX "forms_blocks_textarea_parent_id_idx" ON "public"."forms_blocks_textarea" USING "btree" ("_parent_id");



CREATE INDEX "forms_blocks_textarea_path_idx" ON "public"."forms_blocks_textarea" USING "btree" ("_path");



CREATE INDEX "forms_created_at_idx" ON "public"."forms" USING "btree" ("created_at");



CREATE INDEX "forms_emails_order_idx" ON "public"."forms_emails" USING "btree" ("_order");



CREATE INDEX "forms_emails_parent_id_idx" ON "public"."forms_emails" USING "btree" ("_parent_id");



CREATE INDEX "forms_updated_at_idx" ON "public"."forms" USING "btree" ("updated_at");



CREATE INDEX "header_nav_items_order_idx" ON "public"."header_nav_items" USING "btree" ("_order");



CREATE INDEX "header_nav_items_parent_id_idx" ON "public"."header_nav_items" USING "btree" ("_parent_id");



CREATE INDEX "header_rels_order_idx" ON "public"."header_rels" USING "btree" ("order");



CREATE INDEX "header_rels_pages_id_idx" ON "public"."header_rels" USING "btree" ("pages_id");



CREATE INDEX "header_rels_parent_idx" ON "public"."header_rels" USING "btree" ("parent_id");



CREATE INDEX "header_rels_path_idx" ON "public"."header_rels" USING "btree" ("path");



CREATE INDEX "header_rels_posts_id_idx" ON "public"."header_rels" USING "btree" ("posts_id");



CREATE INDEX "media_created_at_idx" ON "public"."media" USING "btree" ("created_at");



CREATE UNIQUE INDEX "media_filename_idx" ON "public"."media" USING "btree" ("filename");



CREATE INDEX "media_sizes_large_sizes_large_filename_idx" ON "public"."media" USING "btree" ("sizes_large_filename");



CREATE INDEX "media_sizes_medium_sizes_medium_filename_idx" ON "public"."media" USING "btree" ("sizes_medium_filename");



CREATE INDEX "media_sizes_og_sizes_og_filename_idx" ON "public"."media" USING "btree" ("sizes_og_filename");



CREATE INDEX "media_sizes_small_sizes_small_filename_idx" ON "public"."media" USING "btree" ("sizes_small_filename");



CREATE INDEX "media_sizes_square_sizes_square_filename_idx" ON "public"."media" USING "btree" ("sizes_square_filename");



CREATE INDEX "media_sizes_thumbnail_sizes_thumbnail_filename_idx" ON "public"."media" USING "btree" ("sizes_thumbnail_filename");



CREATE INDEX "media_sizes_xlarge_sizes_xlarge_filename_idx" ON "public"."media" USING "btree" ("sizes_xlarge_filename");



CREATE INDEX "media_updated_at_idx" ON "public"."media" USING "btree" ("updated_at");



CREATE INDEX "pages__status_idx" ON "public"."pages" USING "btree" ("_status");



CREATE INDEX "pages_blocks_archive_order_idx" ON "public"."pages_blocks_archive" USING "btree" ("_order");



CREATE INDEX "pages_blocks_archive_parent_id_idx" ON "public"."pages_blocks_archive" USING "btree" ("_parent_id");



CREATE INDEX "pages_blocks_archive_path_idx" ON "public"."pages_blocks_archive" USING "btree" ("_path");



CREATE INDEX "pages_blocks_content_columns_order_idx" ON "public"."pages_blocks_content_columns" USING "btree" ("_order");



CREATE INDEX "pages_blocks_content_columns_parent_id_idx" ON "public"."pages_blocks_content_columns" USING "btree" ("_parent_id");



CREATE INDEX "pages_blocks_content_order_idx" ON "public"."pages_blocks_content" USING "btree" ("_order");



CREATE INDEX "pages_blocks_content_parent_id_idx" ON "public"."pages_blocks_content" USING "btree" ("_parent_id");



CREATE INDEX "pages_blocks_content_path_idx" ON "public"."pages_blocks_content" USING "btree" ("_path");



CREATE INDEX "pages_blocks_cta_links_order_idx" ON "public"."pages_blocks_cta_links" USING "btree" ("_order");



CREATE INDEX "pages_blocks_cta_links_parent_id_idx" ON "public"."pages_blocks_cta_links" USING "btree" ("_parent_id");



CREATE INDEX "pages_blocks_cta_order_idx" ON "public"."pages_blocks_cta" USING "btree" ("_order");



CREATE INDEX "pages_blocks_cta_parent_id_idx" ON "public"."pages_blocks_cta" USING "btree" ("_parent_id");



CREATE INDEX "pages_blocks_cta_path_idx" ON "public"."pages_blocks_cta" USING "btree" ("_path");



CREATE INDEX "pages_blocks_form_block_form_idx" ON "public"."pages_blocks_form_block" USING "btree" ("form_id");



CREATE INDEX "pages_blocks_form_block_order_idx" ON "public"."pages_blocks_form_block" USING "btree" ("_order");



CREATE INDEX "pages_blocks_form_block_parent_id_idx" ON "public"."pages_blocks_form_block" USING "btree" ("_parent_id");



CREATE INDEX "pages_blocks_form_block_path_idx" ON "public"."pages_blocks_form_block" USING "btree" ("_path");



CREATE INDEX "pages_blocks_media_block_media_idx" ON "public"."pages_blocks_media_block" USING "btree" ("media_id");



CREATE INDEX "pages_blocks_media_block_order_idx" ON "public"."pages_blocks_media_block" USING "btree" ("_order");



CREATE INDEX "pages_blocks_media_block_parent_id_idx" ON "public"."pages_blocks_media_block" USING "btree" ("_parent_id");



CREATE INDEX "pages_blocks_media_block_path_idx" ON "public"."pages_blocks_media_block" USING "btree" ("_path");



CREATE INDEX "pages_created_at_idx" ON "public"."pages" USING "btree" ("created_at");



CREATE INDEX "pages_hero_hero_media_idx" ON "public"."pages" USING "btree" ("hero_media_id");



CREATE INDEX "pages_hero_links_order_idx" ON "public"."pages_hero_links" USING "btree" ("_order");



CREATE INDEX "pages_hero_links_parent_id_idx" ON "public"."pages_hero_links" USING "btree" ("_parent_id");



CREATE INDEX "pages_meta_meta_image_idx" ON "public"."pages" USING "btree" ("meta_image_id");



CREATE INDEX "pages_rels_categories_id_idx" ON "public"."pages_rels" USING "btree" ("categories_id");



CREATE INDEX "pages_rels_order_idx" ON "public"."pages_rels" USING "btree" ("order");



CREATE INDEX "pages_rels_pages_id_idx" ON "public"."pages_rels" USING "btree" ("pages_id");



CREATE INDEX "pages_rels_parent_idx" ON "public"."pages_rels" USING "btree" ("parent_id");



CREATE INDEX "pages_rels_path_idx" ON "public"."pages_rels" USING "btree" ("path");



CREATE INDEX "pages_rels_posts_id_idx" ON "public"."pages_rels" USING "btree" ("posts_id");



CREATE INDEX "pages_slug_idx" ON "public"."pages" USING "btree" ("slug");



CREATE INDEX "pages_updated_at_idx" ON "public"."pages" USING "btree" ("updated_at");



CREATE INDEX "payload_jobs_completed_at_idx" ON "public"."payload_jobs" USING "btree" ("completed_at");



CREATE INDEX "payload_jobs_created_at_idx" ON "public"."payload_jobs" USING "btree" ("created_at");



CREATE INDEX "payload_jobs_has_error_idx" ON "public"."payload_jobs" USING "btree" ("has_error");



CREATE INDEX "payload_jobs_log_order_idx" ON "public"."payload_jobs_log" USING "btree" ("_order");



CREATE INDEX "payload_jobs_log_parent_id_idx" ON "public"."payload_jobs_log" USING "btree" ("_parent_id");



CREATE INDEX "payload_jobs_processing_idx" ON "public"."payload_jobs" USING "btree" ("processing");



CREATE INDEX "payload_jobs_queue_idx" ON "public"."payload_jobs" USING "btree" ("queue");



CREATE INDEX "payload_jobs_task_slug_idx" ON "public"."payload_jobs" USING "btree" ("task_slug");



CREATE INDEX "payload_jobs_total_tried_idx" ON "public"."payload_jobs" USING "btree" ("total_tried");



CREATE INDEX "payload_jobs_updated_at_idx" ON "public"."payload_jobs" USING "btree" ("updated_at");



CREATE INDEX "payload_jobs_wait_until_idx" ON "public"."payload_jobs" USING "btree" ("wait_until");



CREATE INDEX "payload_locked_documents_created_at_idx" ON "public"."payload_locked_documents" USING "btree" ("created_at");



CREATE INDEX "payload_locked_documents_global_slug_idx" ON "public"."payload_locked_documents" USING "btree" ("global_slug");



CREATE INDEX "payload_locked_documents_rels_categories_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("categories_id");



CREATE INDEX "payload_locked_documents_rels_form_submissions_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("form_submissions_id");



CREATE INDEX "payload_locked_documents_rels_forms_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("forms_id");



CREATE INDEX "payload_locked_documents_rels_media_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("media_id");



CREATE INDEX "payload_locked_documents_rels_order_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("order");



CREATE INDEX "payload_locked_documents_rels_pages_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("pages_id");



CREATE INDEX "payload_locked_documents_rels_parent_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("parent_id");



CREATE INDEX "payload_locked_documents_rels_path_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("path");



CREATE INDEX "payload_locked_documents_rels_payload_jobs_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("payload_jobs_id");



CREATE INDEX "payload_locked_documents_rels_posts_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("posts_id");



CREATE INDEX "payload_locked_documents_rels_redirects_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("redirects_id");



CREATE INDEX "payload_locked_documents_rels_search_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("search_id");



CREATE INDEX "payload_locked_documents_rels_users_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("users_id");



CREATE INDEX "payload_locked_documents_updated_at_idx" ON "public"."payload_locked_documents" USING "btree" ("updated_at");



CREATE INDEX "payload_migrations_created_at_idx" ON "public"."payload_migrations" USING "btree" ("created_at");



CREATE INDEX "payload_migrations_updated_at_idx" ON "public"."payload_migrations" USING "btree" ("updated_at");



CREATE INDEX "payload_preferences_created_at_idx" ON "public"."payload_preferences" USING "btree" ("created_at");



CREATE INDEX "payload_preferences_key_idx" ON "public"."payload_preferences" USING "btree" ("key");



CREATE INDEX "payload_preferences_rels_order_idx" ON "public"."payload_preferences_rels" USING "btree" ("order");



CREATE INDEX "payload_preferences_rels_parent_idx" ON "public"."payload_preferences_rels" USING "btree" ("parent_id");



CREATE INDEX "payload_preferences_rels_path_idx" ON "public"."payload_preferences_rels" USING "btree" ("path");



CREATE INDEX "payload_preferences_rels_users_id_idx" ON "public"."payload_preferences_rels" USING "btree" ("users_id");



CREATE INDEX "payload_preferences_updated_at_idx" ON "public"."payload_preferences" USING "btree" ("updated_at");



CREATE INDEX "posts__status_idx" ON "public"."posts" USING "btree" ("_status");



CREATE INDEX "posts_created_at_idx" ON "public"."posts" USING "btree" ("created_at");



CREATE INDEX "posts_hero_image_idx" ON "public"."posts" USING "btree" ("hero_image_id");



CREATE INDEX "posts_meta_meta_image_idx" ON "public"."posts" USING "btree" ("meta_image_id");



CREATE INDEX "posts_populated_authors_order_idx" ON "public"."posts_populated_authors" USING "btree" ("_order");



CREATE INDEX "posts_populated_authors_parent_id_idx" ON "public"."posts_populated_authors" USING "btree" ("_parent_id");



CREATE INDEX "posts_rels_categories_id_idx" ON "public"."posts_rels" USING "btree" ("categories_id");



CREATE INDEX "posts_rels_order_idx" ON "public"."posts_rels" USING "btree" ("order");



CREATE INDEX "posts_rels_parent_idx" ON "public"."posts_rels" USING "btree" ("parent_id");



CREATE INDEX "posts_rels_path_idx" ON "public"."posts_rels" USING "btree" ("path");



CREATE INDEX "posts_rels_posts_id_idx" ON "public"."posts_rels" USING "btree" ("posts_id");



CREATE INDEX "posts_rels_users_id_idx" ON "public"."posts_rels" USING "btree" ("users_id");



CREATE INDEX "posts_slug_idx" ON "public"."posts" USING "btree" ("slug");



CREATE INDEX "posts_updated_at_idx" ON "public"."posts" USING "btree" ("updated_at");



CREATE INDEX "redirects_created_at_idx" ON "public"."redirects" USING "btree" ("created_at");



CREATE INDEX "redirects_from_idx" ON "public"."redirects" USING "btree" ("from");



CREATE INDEX "redirects_rels_order_idx" ON "public"."redirects_rels" USING "btree" ("order");



CREATE INDEX "redirects_rels_pages_id_idx" ON "public"."redirects_rels" USING "btree" ("pages_id");



CREATE INDEX "redirects_rels_parent_idx" ON "public"."redirects_rels" USING "btree" ("parent_id");



CREATE INDEX "redirects_rels_path_idx" ON "public"."redirects_rels" USING "btree" ("path");



CREATE INDEX "redirects_rels_posts_id_idx" ON "public"."redirects_rels" USING "btree" ("posts_id");



CREATE INDEX "redirects_updated_at_idx" ON "public"."redirects" USING "btree" ("updated_at");



CREATE INDEX "search_categories_order_idx" ON "public"."search_categories" USING "btree" ("_order");



CREATE INDEX "search_categories_parent_id_idx" ON "public"."search_categories" USING "btree" ("_parent_id");



CREATE INDEX "search_created_at_idx" ON "public"."search" USING "btree" ("created_at");



CREATE INDEX "search_meta_meta_image_idx" ON "public"."search" USING "btree" ("meta_image_id");



CREATE INDEX "search_rels_order_idx" ON "public"."search_rels" USING "btree" ("order");



CREATE INDEX "search_rels_parent_idx" ON "public"."search_rels" USING "btree" ("parent_id");



CREATE INDEX "search_rels_path_idx" ON "public"."search_rels" USING "btree" ("path");



CREATE INDEX "search_rels_posts_id_idx" ON "public"."search_rels" USING "btree" ("posts_id");



CREATE INDEX "search_slug_idx" ON "public"."search" USING "btree" ("slug");



CREATE INDEX "search_updated_at_idx" ON "public"."search" USING "btree" ("updated_at");



CREATE INDEX "users_created_at_idx" ON "public"."users" USING "btree" ("created_at");



CREATE UNIQUE INDEX "users_email_idx" ON "public"."users" USING "btree" ("email");



CREATE INDEX "users_updated_at_idx" ON "public"."users" USING "btree" ("updated_at");



ALTER TABLE ONLY "public"."_pages_v_blocks_archive"
    ADD CONSTRAINT "_pages_v_blocks_archive_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v_blocks_content_columns"
    ADD CONSTRAINT "_pages_v_blocks_content_columns_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_content"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v_blocks_content"
    ADD CONSTRAINT "_pages_v_blocks_content_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v_blocks_cta_links"
    ADD CONSTRAINT "_pages_v_blocks_cta_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_cta"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v_blocks_cta"
    ADD CONSTRAINT "_pages_v_blocks_cta_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v_blocks_form_block"
    ADD CONSTRAINT "_pages_v_blocks_form_block_form_id_forms_id_fk" FOREIGN KEY ("form_id") REFERENCES "public"."forms"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."_pages_v_blocks_form_block"
    ADD CONSTRAINT "_pages_v_blocks_form_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v_blocks_media_block"
    ADD CONSTRAINT "_pages_v_blocks_media_block_media_id_media_id_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."_pages_v_blocks_media_block"
    ADD CONSTRAINT "_pages_v_blocks_media_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v"
    ADD CONSTRAINT "_pages_v_parent_id_pages_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."pages"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_categories_fk" FOREIGN KEY ("categories_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v_version_hero_links"
    ADD CONSTRAINT "_pages_v_version_hero_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_pages_v"
    ADD CONSTRAINT "_pages_v_version_hero_media_id_media_id_fk" FOREIGN KEY ("version_hero_media_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."_pages_v"
    ADD CONSTRAINT "_pages_v_version_meta_image_id_media_id_fk" FOREIGN KEY ("version_meta_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."_posts_v"
    ADD CONSTRAINT "_posts_v_parent_id_posts_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."posts"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."_posts_v_rels"
    ADD CONSTRAINT "_posts_v_rels_categories_fk" FOREIGN KEY ("categories_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_posts_v_rels"
    ADD CONSTRAINT "_posts_v_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."_posts_v"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_posts_v_rels"
    ADD CONSTRAINT "_posts_v_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_posts_v_rels"
    ADD CONSTRAINT "_posts_v_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."_posts_v"
    ADD CONSTRAINT "_posts_v_version_hero_image_id_media_id_fk" FOREIGN KEY ("version_hero_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."_posts_v"
    ADD CONSTRAINT "_posts_v_version_meta_image_id_media_id_fk" FOREIGN KEY ("version_meta_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."_posts_v_version_populated_authors"
    ADD CONSTRAINT "_posts_v_version_populated_authors_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_posts_v"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."categories_breadcrumbs"
    ADD CONSTRAINT "categories_breadcrumbs_doc_id_categories_id_fk" FOREIGN KEY ("doc_id") REFERENCES "public"."categories"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."categories_breadcrumbs"
    ADD CONSTRAINT "categories_breadcrumbs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."categories"
    ADD CONSTRAINT "categories_parent_id_categories_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."categories"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."footer_nav_items"
    ADD CONSTRAINT "footer_nav_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."footer"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."footer_rels"
    ADD CONSTRAINT "footer_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."footer_rels"
    ADD CONSTRAINT "footer_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."footer"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."footer_rels"
    ADD CONSTRAINT "footer_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."form_submissions"
    ADD CONSTRAINT "form_submissions_form_id_forms_id_fk" FOREIGN KEY ("form_id") REFERENCES "public"."forms"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."form_submissions_submission_data"
    ADD CONSTRAINT "form_submissions_submission_data_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."form_submissions"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_blocks_checkbox"
    ADD CONSTRAINT "forms_blocks_checkbox_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_blocks_country"
    ADD CONSTRAINT "forms_blocks_country_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_blocks_email"
    ADD CONSTRAINT "forms_blocks_email_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_blocks_message"
    ADD CONSTRAINT "forms_blocks_message_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_blocks_number"
    ADD CONSTRAINT "forms_blocks_number_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_blocks_select_options"
    ADD CONSTRAINT "forms_blocks_select_options_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_select"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_blocks_select"
    ADD CONSTRAINT "forms_blocks_select_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_blocks_state"
    ADD CONSTRAINT "forms_blocks_state_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_blocks_text"
    ADD CONSTRAINT "forms_blocks_text_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_blocks_textarea"
    ADD CONSTRAINT "forms_blocks_textarea_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."forms_emails"
    ADD CONSTRAINT "forms_emails_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."header_nav_items"
    ADD CONSTRAINT "header_nav_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."header"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."header_rels"
    ADD CONSTRAINT "header_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."header_rels"
    ADD CONSTRAINT "header_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."header"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."header_rels"
    ADD CONSTRAINT "header_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_blocks_archive"
    ADD CONSTRAINT "pages_blocks_archive_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_blocks_content_columns"
    ADD CONSTRAINT "pages_blocks_content_columns_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_blocks_content"
    ADD CONSTRAINT "pages_blocks_content_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_blocks_cta_links"
    ADD CONSTRAINT "pages_blocks_cta_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_cta"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_blocks_cta"
    ADD CONSTRAINT "pages_blocks_cta_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_blocks_form_block"
    ADD CONSTRAINT "pages_blocks_form_block_form_id_forms_id_fk" FOREIGN KEY ("form_id") REFERENCES "public"."forms"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."pages_blocks_form_block"
    ADD CONSTRAINT "pages_blocks_form_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_blocks_media_block"
    ADD CONSTRAINT "pages_blocks_media_block_media_id_media_id_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."pages_blocks_media_block"
    ADD CONSTRAINT "pages_blocks_media_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_hero_links"
    ADD CONSTRAINT "pages_hero_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages"
    ADD CONSTRAINT "pages_hero_media_id_media_id_fk" FOREIGN KEY ("hero_media_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."pages"
    ADD CONSTRAINT "pages_meta_image_id_media_id_fk" FOREIGN KEY ("meta_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_categories_fk" FOREIGN KEY ("categories_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_jobs_log"
    ADD CONSTRAINT "payload_jobs_log_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."payload_jobs"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_categories_fk" FOREIGN KEY ("categories_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_form_submissions_fk" FOREIGN KEY ("form_submissions_id") REFERENCES "public"."form_submissions"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_forms_fk" FOREIGN KEY ("forms_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_media_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."payload_locked_documents"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_payload_jobs_fk" FOREIGN KEY ("payload_jobs_id") REFERENCES "public"."payload_jobs"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_redirects_fk" FOREIGN KEY ("redirects_id") REFERENCES "public"."redirects"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_search_fk" FOREIGN KEY ("search_id") REFERENCES "public"."search"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_preferences_rels"
    ADD CONSTRAINT "payload_preferences_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."payload_preferences"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payload_preferences_rels"
    ADD CONSTRAINT "payload_preferences_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."posts"
    ADD CONSTRAINT "posts_hero_image_id_media_id_fk" FOREIGN KEY ("hero_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."posts"
    ADD CONSTRAINT "posts_meta_image_id_media_id_fk" FOREIGN KEY ("meta_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."posts_populated_authors"
    ADD CONSTRAINT "posts_populated_authors_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."posts_rels"
    ADD CONSTRAINT "posts_rels_categories_fk" FOREIGN KEY ("categories_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."posts_rels"
    ADD CONSTRAINT "posts_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."posts_rels"
    ADD CONSTRAINT "posts_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."posts_rels"
    ADD CONSTRAINT "posts_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."redirects_rels"
    ADD CONSTRAINT "redirects_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."redirects_rels"
    ADD CONSTRAINT "redirects_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."redirects"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."redirects_rels"
    ADD CONSTRAINT "redirects_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."search_categories"
    ADD CONSTRAINT "search_categories_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."search"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."search"
    ADD CONSTRAINT "search_meta_image_id_media_id_fk" FOREIGN KEY ("meta_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."search_rels"
    ADD CONSTRAINT "search_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."search"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."search_rels"
    ADD CONSTRAINT "search_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";


























































































































































































GRANT ALL ON TABLE "public"."_pages_v" TO "anon";
GRANT ALL ON TABLE "public"."_pages_v" TO "authenticated";
GRANT ALL ON TABLE "public"."_pages_v" TO "service_role";



GRANT ALL ON TABLE "public"."_pages_v_blocks_archive" TO "anon";
GRANT ALL ON TABLE "public"."_pages_v_blocks_archive" TO "authenticated";
GRANT ALL ON TABLE "public"."_pages_v_blocks_archive" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_archive_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_archive_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_archive_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."_pages_v_blocks_content" TO "anon";
GRANT ALL ON TABLE "public"."_pages_v_blocks_content" TO "authenticated";
GRANT ALL ON TABLE "public"."_pages_v_blocks_content" TO "service_role";



GRANT ALL ON TABLE "public"."_pages_v_blocks_content_columns" TO "anon";
GRANT ALL ON TABLE "public"."_pages_v_blocks_content_columns" TO "authenticated";
GRANT ALL ON TABLE "public"."_pages_v_blocks_content_columns" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_content_columns_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_content_columns_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_content_columns_id_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_content_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_content_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_content_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."_pages_v_blocks_cta" TO "anon";
GRANT ALL ON TABLE "public"."_pages_v_blocks_cta" TO "authenticated";
GRANT ALL ON TABLE "public"."_pages_v_blocks_cta" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_cta_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_cta_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_cta_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."_pages_v_blocks_cta_links" TO "anon";
GRANT ALL ON TABLE "public"."_pages_v_blocks_cta_links" TO "authenticated";
GRANT ALL ON TABLE "public"."_pages_v_blocks_cta_links" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_cta_links_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_cta_links_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_cta_links_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."_pages_v_blocks_form_block" TO "anon";
GRANT ALL ON TABLE "public"."_pages_v_blocks_form_block" TO "authenticated";
GRANT ALL ON TABLE "public"."_pages_v_blocks_form_block" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_form_block_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_form_block_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_form_block_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."_pages_v_blocks_media_block" TO "anon";
GRANT ALL ON TABLE "public"."_pages_v_blocks_media_block" TO "authenticated";
GRANT ALL ON TABLE "public"."_pages_v_blocks_media_block" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_media_block_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_media_block_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_pages_v_blocks_media_block_id_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_pages_v_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_pages_v_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_pages_v_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."_pages_v_rels" TO "anon";
GRANT ALL ON TABLE "public"."_pages_v_rels" TO "authenticated";
GRANT ALL ON TABLE "public"."_pages_v_rels" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_pages_v_rels_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_pages_v_rels_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_pages_v_rels_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."_pages_v_version_hero_links" TO "anon";
GRANT ALL ON TABLE "public"."_pages_v_version_hero_links" TO "authenticated";
GRANT ALL ON TABLE "public"."_pages_v_version_hero_links" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_pages_v_version_hero_links_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_pages_v_version_hero_links_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_pages_v_version_hero_links_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."_posts_v" TO "anon";
GRANT ALL ON TABLE "public"."_posts_v" TO "authenticated";
GRANT ALL ON TABLE "public"."_posts_v" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_posts_v_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_posts_v_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_posts_v_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."_posts_v_rels" TO "anon";
GRANT ALL ON TABLE "public"."_posts_v_rels" TO "authenticated";
GRANT ALL ON TABLE "public"."_posts_v_rels" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_posts_v_rels_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_posts_v_rels_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_posts_v_rels_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."_posts_v_version_populated_authors" TO "anon";
GRANT ALL ON TABLE "public"."_posts_v_version_populated_authors" TO "authenticated";
GRANT ALL ON TABLE "public"."_posts_v_version_populated_authors" TO "service_role";



GRANT ALL ON SEQUENCE "public"."_posts_v_version_populated_authors_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."_posts_v_version_populated_authors_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."_posts_v_version_populated_authors_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."categories" TO "anon";
GRANT ALL ON TABLE "public"."categories" TO "authenticated";
GRANT ALL ON TABLE "public"."categories" TO "service_role";



GRANT ALL ON TABLE "public"."categories_breadcrumbs" TO "anon";
GRANT ALL ON TABLE "public"."categories_breadcrumbs" TO "authenticated";
GRANT ALL ON TABLE "public"."categories_breadcrumbs" TO "service_role";



GRANT ALL ON SEQUENCE "public"."categories_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."categories_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."categories_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."footer" TO "anon";
GRANT ALL ON TABLE "public"."footer" TO "authenticated";
GRANT ALL ON TABLE "public"."footer" TO "service_role";



GRANT ALL ON SEQUENCE "public"."footer_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."footer_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."footer_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."footer_nav_items" TO "anon";
GRANT ALL ON TABLE "public"."footer_nav_items" TO "authenticated";
GRANT ALL ON TABLE "public"."footer_nav_items" TO "service_role";



GRANT ALL ON TABLE "public"."footer_rels" TO "anon";
GRANT ALL ON TABLE "public"."footer_rels" TO "authenticated";
GRANT ALL ON TABLE "public"."footer_rels" TO "service_role";



GRANT ALL ON SEQUENCE "public"."footer_rels_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."footer_rels_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."footer_rels_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."form_submissions" TO "anon";
GRANT ALL ON TABLE "public"."form_submissions" TO "authenticated";
GRANT ALL ON TABLE "public"."form_submissions" TO "service_role";



GRANT ALL ON SEQUENCE "public"."form_submissions_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."form_submissions_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."form_submissions_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."form_submissions_submission_data" TO "anon";
GRANT ALL ON TABLE "public"."form_submissions_submission_data" TO "authenticated";
GRANT ALL ON TABLE "public"."form_submissions_submission_data" TO "service_role";



GRANT ALL ON TABLE "public"."forms" TO "anon";
GRANT ALL ON TABLE "public"."forms" TO "authenticated";
GRANT ALL ON TABLE "public"."forms" TO "service_role";



GRANT ALL ON TABLE "public"."forms_blocks_checkbox" TO "anon";
GRANT ALL ON TABLE "public"."forms_blocks_checkbox" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_blocks_checkbox" TO "service_role";



GRANT ALL ON TABLE "public"."forms_blocks_country" TO "anon";
GRANT ALL ON TABLE "public"."forms_blocks_country" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_blocks_country" TO "service_role";



GRANT ALL ON TABLE "public"."forms_blocks_email" TO "anon";
GRANT ALL ON TABLE "public"."forms_blocks_email" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_blocks_email" TO "service_role";



GRANT ALL ON TABLE "public"."forms_blocks_message" TO "anon";
GRANT ALL ON TABLE "public"."forms_blocks_message" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_blocks_message" TO "service_role";



GRANT ALL ON TABLE "public"."forms_blocks_number" TO "anon";
GRANT ALL ON TABLE "public"."forms_blocks_number" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_blocks_number" TO "service_role";



GRANT ALL ON TABLE "public"."forms_blocks_select" TO "anon";
GRANT ALL ON TABLE "public"."forms_blocks_select" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_blocks_select" TO "service_role";



GRANT ALL ON TABLE "public"."forms_blocks_select_options" TO "anon";
GRANT ALL ON TABLE "public"."forms_blocks_select_options" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_blocks_select_options" TO "service_role";



GRANT ALL ON TABLE "public"."forms_blocks_state" TO "anon";
GRANT ALL ON TABLE "public"."forms_blocks_state" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_blocks_state" TO "service_role";



GRANT ALL ON TABLE "public"."forms_blocks_text" TO "anon";
GRANT ALL ON TABLE "public"."forms_blocks_text" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_blocks_text" TO "service_role";



GRANT ALL ON TABLE "public"."forms_blocks_textarea" TO "anon";
GRANT ALL ON TABLE "public"."forms_blocks_textarea" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_blocks_textarea" TO "service_role";



GRANT ALL ON TABLE "public"."forms_emails" TO "anon";
GRANT ALL ON TABLE "public"."forms_emails" TO "authenticated";
GRANT ALL ON TABLE "public"."forms_emails" TO "service_role";



GRANT ALL ON SEQUENCE "public"."forms_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."forms_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."forms_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."header" TO "anon";
GRANT ALL ON TABLE "public"."header" TO "authenticated";
GRANT ALL ON TABLE "public"."header" TO "service_role";



GRANT ALL ON SEQUENCE "public"."header_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."header_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."header_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."header_nav_items" TO "anon";
GRANT ALL ON TABLE "public"."header_nav_items" TO "authenticated";
GRANT ALL ON TABLE "public"."header_nav_items" TO "service_role";



GRANT ALL ON TABLE "public"."header_rels" TO "anon";
GRANT ALL ON TABLE "public"."header_rels" TO "authenticated";
GRANT ALL ON TABLE "public"."header_rels" TO "service_role";



GRANT ALL ON SEQUENCE "public"."header_rels_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."header_rels_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."header_rels_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."media" TO "anon";
GRANT ALL ON TABLE "public"."media" TO "authenticated";
GRANT ALL ON TABLE "public"."media" TO "service_role";



GRANT ALL ON SEQUENCE "public"."media_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."media_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."media_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."pages" TO "anon";
GRANT ALL ON TABLE "public"."pages" TO "authenticated";
GRANT ALL ON TABLE "public"."pages" TO "service_role";



GRANT ALL ON TABLE "public"."pages_blocks_archive" TO "anon";
GRANT ALL ON TABLE "public"."pages_blocks_archive" TO "authenticated";
GRANT ALL ON TABLE "public"."pages_blocks_archive" TO "service_role";



GRANT ALL ON TABLE "public"."pages_blocks_content" TO "anon";
GRANT ALL ON TABLE "public"."pages_blocks_content" TO "authenticated";
GRANT ALL ON TABLE "public"."pages_blocks_content" TO "service_role";



GRANT ALL ON TABLE "public"."pages_blocks_content_columns" TO "anon";
GRANT ALL ON TABLE "public"."pages_blocks_content_columns" TO "authenticated";
GRANT ALL ON TABLE "public"."pages_blocks_content_columns" TO "service_role";



GRANT ALL ON TABLE "public"."pages_blocks_cta" TO "anon";
GRANT ALL ON TABLE "public"."pages_blocks_cta" TO "authenticated";
GRANT ALL ON TABLE "public"."pages_blocks_cta" TO "service_role";



GRANT ALL ON TABLE "public"."pages_blocks_cta_links" TO "anon";
GRANT ALL ON TABLE "public"."pages_blocks_cta_links" TO "authenticated";
GRANT ALL ON TABLE "public"."pages_blocks_cta_links" TO "service_role";



GRANT ALL ON TABLE "public"."pages_blocks_form_block" TO "anon";
GRANT ALL ON TABLE "public"."pages_blocks_form_block" TO "authenticated";
GRANT ALL ON TABLE "public"."pages_blocks_form_block" TO "service_role";



GRANT ALL ON TABLE "public"."pages_blocks_media_block" TO "anon";
GRANT ALL ON TABLE "public"."pages_blocks_media_block" TO "authenticated";
GRANT ALL ON TABLE "public"."pages_blocks_media_block" TO "service_role";



GRANT ALL ON TABLE "public"."pages_hero_links" TO "anon";
GRANT ALL ON TABLE "public"."pages_hero_links" TO "authenticated";
GRANT ALL ON TABLE "public"."pages_hero_links" TO "service_role";



GRANT ALL ON SEQUENCE "public"."pages_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."pages_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."pages_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."pages_rels" TO "anon";
GRANT ALL ON TABLE "public"."pages_rels" TO "authenticated";
GRANT ALL ON TABLE "public"."pages_rels" TO "service_role";



GRANT ALL ON SEQUENCE "public"."pages_rels_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."pages_rels_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."pages_rels_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."payload_jobs" TO "anon";
GRANT ALL ON TABLE "public"."payload_jobs" TO "authenticated";
GRANT ALL ON TABLE "public"."payload_jobs" TO "service_role";



GRANT ALL ON SEQUENCE "public"."payload_jobs_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."payload_jobs_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."payload_jobs_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."payload_jobs_log" TO "anon";
GRANT ALL ON TABLE "public"."payload_jobs_log" TO "authenticated";
GRANT ALL ON TABLE "public"."payload_jobs_log" TO "service_role";



GRANT ALL ON TABLE "public"."payload_locked_documents" TO "anon";
GRANT ALL ON TABLE "public"."payload_locked_documents" TO "authenticated";
GRANT ALL ON TABLE "public"."payload_locked_documents" TO "service_role";



GRANT ALL ON SEQUENCE "public"."payload_locked_documents_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."payload_locked_documents_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."payload_locked_documents_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."payload_locked_documents_rels" TO "anon";
GRANT ALL ON TABLE "public"."payload_locked_documents_rels" TO "authenticated";
GRANT ALL ON TABLE "public"."payload_locked_documents_rels" TO "service_role";



GRANT ALL ON SEQUENCE "public"."payload_locked_documents_rels_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."payload_locked_documents_rels_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."payload_locked_documents_rels_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."payload_migrations" TO "anon";
GRANT ALL ON TABLE "public"."payload_migrations" TO "authenticated";
GRANT ALL ON TABLE "public"."payload_migrations" TO "service_role";



GRANT ALL ON SEQUENCE "public"."payload_migrations_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."payload_migrations_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."payload_migrations_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."payload_preferences" TO "anon";
GRANT ALL ON TABLE "public"."payload_preferences" TO "authenticated";
GRANT ALL ON TABLE "public"."payload_preferences" TO "service_role";



GRANT ALL ON SEQUENCE "public"."payload_preferences_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."payload_preferences_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."payload_preferences_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."payload_preferences_rels" TO "anon";
GRANT ALL ON TABLE "public"."payload_preferences_rels" TO "authenticated";
GRANT ALL ON TABLE "public"."payload_preferences_rels" TO "service_role";



GRANT ALL ON SEQUENCE "public"."payload_preferences_rels_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."payload_preferences_rels_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."payload_preferences_rels_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."posts" TO "anon";
GRANT ALL ON TABLE "public"."posts" TO "authenticated";
GRANT ALL ON TABLE "public"."posts" TO "service_role";



GRANT ALL ON SEQUENCE "public"."posts_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."posts_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."posts_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."posts_populated_authors" TO "anon";
GRANT ALL ON TABLE "public"."posts_populated_authors" TO "authenticated";
GRANT ALL ON TABLE "public"."posts_populated_authors" TO "service_role";



GRANT ALL ON TABLE "public"."posts_rels" TO "anon";
GRANT ALL ON TABLE "public"."posts_rels" TO "authenticated";
GRANT ALL ON TABLE "public"."posts_rels" TO "service_role";



GRANT ALL ON SEQUENCE "public"."posts_rels_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."posts_rels_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."posts_rels_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."redirects" TO "anon";
GRANT ALL ON TABLE "public"."redirects" TO "authenticated";
GRANT ALL ON TABLE "public"."redirects" TO "service_role";



GRANT ALL ON SEQUENCE "public"."redirects_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."redirects_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."redirects_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."redirects_rels" TO "anon";
GRANT ALL ON TABLE "public"."redirects_rels" TO "authenticated";
GRANT ALL ON TABLE "public"."redirects_rels" TO "service_role";



GRANT ALL ON SEQUENCE "public"."redirects_rels_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."redirects_rels_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."redirects_rels_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."search" TO "anon";
GRANT ALL ON TABLE "public"."search" TO "authenticated";
GRANT ALL ON TABLE "public"."search" TO "service_role";



GRANT ALL ON TABLE "public"."search_categories" TO "anon";
GRANT ALL ON TABLE "public"."search_categories" TO "authenticated";
GRANT ALL ON TABLE "public"."search_categories" TO "service_role";



GRANT ALL ON SEQUENCE "public"."search_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."search_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."search_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."search_rels" TO "anon";
GRANT ALL ON TABLE "public"."search_rels" TO "authenticated";
GRANT ALL ON TABLE "public"."search_rels" TO "service_role";



GRANT ALL ON SEQUENCE "public"."search_rels_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."search_rels_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."search_rels_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "authenticated";
GRANT ALL ON TABLE "public"."users" TO "service_role";



GRANT ALL ON SEQUENCE "public"."users_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."users_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."users_id_seq" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";






























RESET ALL;
