

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

INSERT INTO public.posts (id, title, body, created_at) VALUES ('a11342a5-7a13-4ce2-8ddd-c5742bd712a2', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2021-03-01 15:20:09.104226+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('5f1617e7-9116-49cd-8a80-058a787a2411', 'TEST', 'test code', '2021-03-01 15:20:09.108767+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('68e9497d-305c-4492-b729-fa9b39ab21f7', 'test', 'test', '2021-03-01 15:31:03.058979+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('334888ce-04e6-4301-8f82-ccd6132779c7', 'aa', '//a', '2021-03-01 17:50:23.676359+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('54c3d692-43ad-4b48-9887-c295d06c8608', 'ss', '# a
## a', '2021-03-01 17:50:59.71271+09');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('409f3e6c-8fec-45b4-9773-497b9db83c62', '54c3d692-43ad-4b48-9887-c295d06c8608', 'a', 'a', '2021-03-02 14:30:42.864837+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('6ffa1290-afe2-4366-8889-35a2f94dd030', '54c3d692-43ad-4b48-9887-c295d06c8608', 's', 's', '2021-03-02 14:30:42.868447+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('75da7c84-c9a1-4fcd-bbe4-202a2ef77a98', '334888ce-04e6-4301-8f82-ccd6132779c7', 'a', 'a', '2021-03-02 14:30:42.869862+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('65efa8d6-839d-4ebd-a2f7-800cb8116c2b', '334888ce-04e6-4301-8f82-ccd6132779c7', 'kk', 'kk', '2021-03-02 14:30:42.871182+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('da0bdafa-e601-4ef0-8255-bc08a9270285', '334888ce-04e6-4301-8f82-ccd6132779c7', 'oo', 'oo', '2021-03-02 14:30:42.872745+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('d44ead36-b333-4660-bcb3-abc4e97c81bf', '334888ce-04e6-4301-8f82-ccd6132779c7', 'a', 's', '2021-03-02 14:30:42.874785+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('1666bd41-3a45-4fc1-ad2a-56a225899142', '334888ce-04e6-4301-8f82-ccd6132779c7', 'ss', 'dd', '2021-03-02 14:30:42.876336+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('b34f62eb-2399-4181-86cd-bb8a850c8357', '334888ce-04e6-4301-8f82-ccd6132779c7', 'ii', 'kk', '2021-03-02 14:30:42.877847+09');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


