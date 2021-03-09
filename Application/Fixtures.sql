

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
INSERT INTO public.posts (id, title, body, created_at) VALUES ('fd295619-3b73-4088-b5e4-81092d5e9296', 'kk', 'k', '2021-03-02 18:35:19.730662+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('fe973f87-5354-4a1b-a294-a11cd88ee385', 'aa', 'ss', '2021-03-02 18:49:51.207134+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('8d37183c-2442-4ebc-9681-2bd1f5c1aafb', 'qq', 'aa', '2021-03-05 17:15:35.763724+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('b61d6d59-fb91-433b-92ea-22b4ef513b56', 'aa', 'aa', '2021-03-05 17:23:28.470072+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('4f2f2418-7957-4b19-8816-6d10adf89067', 'q', 'q', '2021-03-06 18:59:49.898341+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('eb4ce68b-3e85-4d8c-ac84-dc7f67d064dd', 'a', '', '2021-03-07 17:18:25.509378+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('4cc69064-ee7b-46e8-9ae0-4637f4b998ab', 's', 's', '2021-03-07 17:18:35.251638+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('e324d385-6984-4b26-88fa-bdd447aa73b6', '', '', '2021-03-08 13:18:13.674523+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('6f921e03-f5fa-46b9-a23c-73b536034bbf', '', '', '2021-03-08 13:24:08.679391+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('64d21a3c-270c-42a3-9129-b8e7cda1aec5', '', '', '2021-03-08 13:24:57.391963+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('4f0585d6-bee1-4609-a19e-00a489827a65', '', '', '2021-03-08 13:27:08.70032+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('f5f786c0-a90d-43b0-b029-f91d909fdcb6', '', '', '2021-03-08 13:28:35.890613+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('58fa9172-474c-4b5a-ace7-aade3eaea093', '', '', '2021-03-08 13:35:56.380889+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('39116e9d-9975-4ce9-9d6d-ee18bb4ce545', 'w', 'w', '2021-03-08 14:31:21.155968+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('702613be-7048-48a5-9f3a-98e68463bc6a', '', '', '2021-03-08 14:53:02.085214+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('a8447cbd-934d-4f54-85a0-6ce359ee426a', '', '', '2021-03-08 15:01:04.195704+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('5631750e-0f6f-4bcb-91e3-bdff8dced821', '', '', '2021-03-08 15:03:23.10395+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('80b6732e-00dc-4135-bde3-3764d7bcdfa8', '', '', '2021-03-08 15:03:35.893669+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('ef06981e-d633-4cf5-b0dc-34884ef449a3', '', '', '2021-03-08 15:37:18.693012+09');


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
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('13e16ce5-e697-476f-ae55-f87bfe6a0b04', '334888ce-04e6-4301-8f82-ccd6132779c7', 'aa', 'ss', '2021-03-02 14:57:04.335863+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('8747e4d6-d6d0-447b-a340-d75346a2b65e', 'fd295619-3b73-4088-b5e4-81092d5e9296', 'xx', 'xx', '2021-03-02 18:35:27.30181+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('94ddadea-a5b8-4d74-a6de-49c0ca821bf8', 'b61d6d59-fb91-433b-92ea-22b4ef513b56', 'dd', 'dd', '2021-03-06 15:35:26.798431+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('239449a6-c1d9-45a3-b381-416fa8c63d34', '4f2f2418-7957-4b19-8816-6d10adf89067', 'a', 'a', '2021-03-06 19:00:01.476308+09');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('f8e4a44d-f2d7-4fc5-b280-fb007c154889', '4cc69064-ee7b-46e8-9ae0-4637f4b998ab', 'q', '', '2021-03-07 17:30:20.969355+09');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


ALTER TABLE public.email_customers_jobs DISABLE TRIGGER ALL;

INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('a3d58f79-ce9c-4f7a-b53f-40aa58c84d7f', '2021-03-07 18:41:01.268936+09', '2021-03-07 18:41:01.268936+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('14c9348d-4004-470f-8f59-44f0fe6271c8', '2021-03-07 18:41:07.724583+09', '2021-03-07 18:41:07.724583+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('8e5e1d58-73b6-4ee9-9fd2-378c5879ddde', '2021-03-07 18:52:51.471117+09', '2021-03-07 18:52:51.471117+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('0d7f7b83-6f55-406d-a9e1-26b31180f25d', '2021-03-07 18:53:05.058578+09', '2021-03-07 18:53:05.058578+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('c54a98f1-149e-4b33-bdb6-66c8472bdb5c', '2021-03-07 18:54:19.217204+09', '2021-03-07 18:54:19.217204+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('a5ae24e5-1cd4-4df1-9d16-b1210709295d', '2021-03-07 18:57:31.252349+09', '2021-03-07 18:57:31.252349+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('c9add079-448c-4f56-9ba2-45bda63dd44c', '2021-03-07 18:59:45.619503+09', '2021-03-07 18:59:45.619503+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('aa8a1eb9-b2b4-4c35-af05-7d12e1c96b72', '2021-03-07 19:01:50.539361+09', '2021-03-07 19:01:50.539361+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('909d35f6-9e01-4c19-b5a9-e9e9a7504027', '2021-03-07 19:02:04.564795+09', '2021-03-07 19:02:04.564795+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('fb5b27bc-f52b-4594-8173-5f7062ecdf74', '2021-03-07 19:04:41.088578+09', '2021-03-07 19:04:41.088578+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('ade13b1f-1996-451e-b878-fc3b578f6694', '2021-03-08 13:18:13.469147+09', '2021-03-08 13:18:13.469147+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('51c71cba-8469-4ea9-b4a0-cc42fdac998a', '2021-03-08 13:24:08.67388+09', '2021-03-08 13:24:08.67388+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('9e69085a-f107-4d7a-adc8-76ba57c8e9cb', '2021-03-08 13:24:57.388026+09', '2021-03-08 13:24:57.388026+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('e5abd593-6f2c-48eb-a459-e737a8d98b94', '2021-03-08 13:27:08.696179+09', '2021-03-08 13:27:08.696179+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('49a312ee-56b6-419a-a150-9eee90685da9', '2021-03-08 13:28:35.887024+09', '2021-03-08 13:28:35.887024+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('61278ab1-443e-40b1-b890-4bb3c3f444dd', '2021-03-08 13:35:56.375539+09', '2021-03-08 13:35:56.375539+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('173e2763-d7e8-414e-a550-62a12551620e', '2021-03-08 14:53:02.068241+09', '2021-03-08 14:53:02.068241+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('aec6e69d-7ab4-4421-9fd3-2ba2f4c7894c', '2021-03-08 15:01:04.191175+09', '2021-03-08 15:01:04.191175+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('51f33416-72ef-408c-8cc6-497ac562bdd5', '2021-03-08 15:03:23.100542+09', '2021-03-08 15:03:23.100542+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('393d6624-6920-4f59-89b6-acaa2ec4b4cd', '2021-03-08 15:03:35.890652+09', '2021-03-08 15:03:35.890652+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('27e24249-c5f0-4a61-bc10-2830ab01997b', '2021-03-08 15:06:45.668276+09', '2021-03-08 15:06:45.668276+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('c70df38c-85d8-43b9-8830-f5f1e15ca980', '2021-03-08 15:06:58.853043+09', '2021-03-08 15:06:58.853043+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('fbcb1b10-d486-4b2d-99e9-eb9d46100217', '2021-03-08 15:07:05.925832+09', '2021-03-08 15:07:05.925832+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('bc7416be-b2e7-4dc0-b453-7c7bec12126a', '2021-03-08 15:07:15.8482+09', '2021-03-08 15:07:15.8482+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('b294ab50-80bb-4679-b7a2-61ded88fdc88', '2021-03-08 15:07:17.57216+09', '2021-03-08 15:07:17.57216+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('7dd9317c-ac00-4fef-a039-08f8a94cb52b', '2021-03-08 15:30:43.112178+09', '2021-03-08 15:30:43.112178+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('da548d38-cca4-4548-a164-b1b35df50676', '2021-03-08 15:32:08.891772+09', '2021-03-08 15:32:08.891772+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('f81a1d1c-b3e3-4eb4-8a30-7c7f186fd77d', '2021-03-08 15:35:15.878284+09', '2021-03-08 15:35:15.878284+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('37c839c2-19bc-4d7a-96c5-71289406f042', '2021-03-08 15:37:18.68847+09', '2021-03-08 15:37:18.68847+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('79b79bd3-14e0-4a09-b6b1-998fa37e0466', '2021-03-08 15:56:23.807949+09', '2021-03-08 15:56:23.807949+09', 'job_status_not_started', NULL, 0, NULL, NULL);


ALTER TABLE public.email_customers_jobs ENABLE TRIGGER ALL;


