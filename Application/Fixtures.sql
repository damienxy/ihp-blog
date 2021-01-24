

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('cf49d931-81e0-4579-bd7e-fca433c075e9', 'second post', '# hey
**some bold text**', '2021-01-24 12:06:03.355872+01');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('5ef326de-1a3f-4fd0-b077-10607196aa5b', 'first post', 'hi', '2021-01-24 12:05:57.224048+01');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;



ALTER TABLE public.comments ENABLE TRIGGER ALL;


