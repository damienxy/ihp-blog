

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

INSERT INTO public.posts (id, title, body, created_at) VALUES ('5ef326de-1a3f-4fd0-b077-10607196aa5b', 'first post', 'hi', '2021-01-24 12:05:57.224048+01');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('ff849709-4c56-4bc7-b189-0a2bd1f2a87e', 'third post', '# haskell is cool
## some smaller text 

aaand normal text.
', '2021-01-24 21:01:35.791966+01');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('cf49d931-81e0-4579-bd7e-fca433c075e9', 'second post', '## hey
**some bold text**

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   

Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet.', '2021-01-24 12:06:03.355872+01');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('6b4b70f2-db95-4d57-be58-245f0d143e2d', 'cf49d931-81e0-4579-bd7e-fca433c075e9', 'mei', 'second comment', '2021-01-24 20:00:21.36588+01');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('07c1e079-8692-494e-a011-ca62e958b063', 'cf49d931-81e0-4579-bd7e-fca433c075e9', 'mei', 'great post. writing some more things to get a line break in the view. ihp seems great so far.', '2021-01-24 19:11:29.242304+01');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('06f59954-829c-486b-a849-10cfb0bccce4', 'ff849709-4c56-4bc7-b189-0a2bd1f2a87e', 'mei', 'cool content', '2021-01-24 23:02:04.538745+01');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


