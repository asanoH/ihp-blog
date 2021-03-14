

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



ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at, color) VALUES ('2edf7571-cf39-4cd6-a56e-2a96070e69e0', '33a73f68-5373-44fc-a129-884168dae6ac', 's', 's', '2021-03-14 17:06:59.639154+09', NULL);
INSERT INTO public.comments (id, post_id, author, body, created_at, color) VALUES ('5aa76d76-d56d-4b42-a036-c9243736cad7', '33a73f68-5373-44fc-a129-884168dae6ac', 's', 's', '2021-03-14 17:07:06.113104+09', NULL);
INSERT INTO public.comments (id, post_id, author, body, created_at, color) VALUES ('7bb24dbe-965a-4a48-af8d-b5b1788c9cf7', '33a73f68-5373-44fc-a129-884168dae6ac', 'a', 'a', '2021-03-14 17:08:05.224906+09', NULL);
INSERT INTO public.comments (id, post_id, author, body, created_at, color) VALUES ('6505fea3-1f4d-4022-99cd-bfcc43c43479', '33a73f68-5373-44fc-a129-884168dae6ac', '', '', '2021-03-14 17:09:31.83299+09', 'blue');
INSERT INTO public.comments (id, post_id, author, body, created_at, color) VALUES ('7ea9a9b1-353d-4254-bfa9-fece53367d2a', '33a73f68-5373-44fc-a129-884168dae6ac', 's', '', '2021-03-14 17:16:40.774879+09', NULL);


ALTER TABLE public.comments ENABLE TRIGGER ALL;


ALTER TABLE public.email_customers_jobs DISABLE TRIGGER ALL;

INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('59d3fc2f-b880-49bf-8f6b-11db30e100bc', '2021-03-14 14:33:53.218112+09', '2021-03-14 14:48:21.276901+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.268854+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('3d9f9f86-9361-4adf-8b1c-43149f8ce772', '2021-03-14 14:34:22.140804+09', '2021-03-14 14:48:21.288234+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.282173+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('88e2527a-8a18-4c36-8350-970a793ffb67', '2021-03-14 14:34:57.913202+09', '2021-03-14 14:48:21.300079+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.293747+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('c23029f4-42fa-4456-b9f3-0020d30dc996', '2021-03-14 14:37:14.650919+09', '2021-03-14 14:48:21.308593+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.302396+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('505127c1-2972-4232-a322-f3429c648d77', '2021-03-14 14:37:22.954709+09', '2021-03-14 14:48:21.316125+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.310918+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('2f30ab92-b1b6-4892-9b91-5b3fb2b55a04', '2021-03-14 14:37:35.864959+09', '2021-03-14 14:48:21.323938+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.318855+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('02e12f50-b7c1-4fa9-8b64-ca62c0963a33', '2021-03-14 14:39:08.735652+09', '2021-03-14 14:48:21.330679+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.326316+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('d9c04405-1407-4a14-88cb-da4e711c0ace', '2021-03-14 14:39:37.18889+09', '2021-03-14 14:48:21.338176+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.332544+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('f0184085-0d6c-40d5-9713-7a97643c4b47', '2021-03-14 14:40:04.432794+09', '2021-03-14 14:48:21.344391+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.339931+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('015ceff1-856c-4723-830b-e68daa14f566', '2021-03-14 14:40:08.393677+09', '2021-03-14 14:48:21.351643+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.346747+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('b2e2bfa9-17f4-4dce-b325-bf15e54cfb6f', '2021-03-14 14:40:16.445342+09', '2021-03-14 14:48:21.358362+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.353479+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('95319504-6f9f-4c43-87d7-3a53fb3e8983', '2021-03-14 14:48:02.476589+09', '2021-03-14 14:48:21.364796+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.360343+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('6cb76768-9dc7-4b61-839b-0c981a1bf32f', '2021-03-14 14:48:21.375364+09', '2021-03-14 14:48:21.389575+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:48:21.383227+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('0d76cf9c-aa9a-46b1-a1f3-7e4bf14d1a63', '2021-03-14 14:53:31.805442+09', '2021-03-14 14:53:31.819185+09', 'job_status_succeeded', NULL, 1, '2021-03-14 14:53:31.813006+09', NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('be233c3c-fa64-4365-8134-6ebfb81a6468', '2021-03-14 15:02:37.649912+09', '2021-03-14 15:02:37.649912+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('2fa67c2e-1fcd-4a06-bf2a-132dacfdff66', '2021-03-14 15:04:53.141184+09', '2021-03-14 15:04:53.141184+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('12146ed6-b972-4d1c-a774-7fa78c992e50', '2021-03-14 15:07:45.181569+09', '2021-03-14 15:07:45.181569+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('c90faae7-ee1b-4733-bfb1-2ecb32debfff', '2021-03-14 15:10:07.234417+09', '2021-03-14 15:10:07.234417+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('b341de3c-7436-4ef4-ab1d-e1d583b6eef1', '2021-03-14 15:10:07.659789+09', '2021-03-14 15:10:07.659789+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('e66b70af-3ad2-4091-bea0-9c99142f6564', '2021-03-14 15:11:00.262248+09', '2021-03-14 15:11:00.262248+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('31660699-34c0-4f8c-88f8-afa1bf59c2e9', '2021-03-14 15:11:09.086543+09', '2021-03-14 15:11:09.086543+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('67b994d8-bab7-41a0-abdf-414f20dcf4e9', '2021-03-14 15:11:29.85699+09', '2021-03-14 15:11:29.85699+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('b6baafb0-cbf1-4a69-9acc-c33b69f4192d', '2021-03-14 15:11:38.281089+09', '2021-03-14 15:11:38.281089+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('31d83a90-0c98-4987-99d1-8b634fdc963f', '2021-03-14 15:34:04.379681+09', '2021-03-14 15:34:04.379681+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('cb90565f-309a-4756-a25c-48e4237832dc', '2021-03-14 15:36:18.296652+09', '2021-03-14 15:36:18.296652+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('636d62c4-a46d-4a8e-88be-631ccf7fd6ea', '2021-03-14 15:37:32.334972+09', '2021-03-14 15:37:32.334972+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('3f220330-cd4e-4a06-ba83-870f5a4782bf', '2021-03-14 15:38:41.296869+09', '2021-03-14 15:38:41.296869+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('49a2f641-0945-4578-b027-7c1979890d79', '2021-03-14 15:41:54.26748+09', '2021-03-14 15:41:54.26748+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('19eaa642-abea-4332-b2d3-e29236516079', '2021-03-14 15:56:40.544736+09', '2021-03-14 15:56:40.544736+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('4e09a01d-65a3-47e0-a33e-13817f600a04', '2021-03-14 16:04:06.551842+09', '2021-03-14 16:04:06.551842+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('c0dae320-7260-45cc-a285-24d42b80d9f8', '2021-03-14 16:05:23.384272+09', '2021-03-14 16:05:23.384272+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('8ff30f78-0dc6-41c7-b018-a87302037409', '2021-03-14 16:05:53.998066+09', '2021-03-14 16:05:53.998066+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('37fa401c-8400-4b0d-a858-052ab36dfffe', '2021-03-14 16:07:09.561906+09', '2021-03-14 16:07:09.561906+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('1b907c7d-03ef-40bf-b8f7-82903089497a', '2021-03-14 16:08:03.249477+09', '2021-03-14 16:08:03.249477+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('227cf4b4-d9ca-4a55-b0c0-d9d16e892e79', '2021-03-14 16:24:15.264992+09', '2021-03-14 16:24:15.264992+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('dc04323a-6a04-4657-92f6-3f8fc87eca08', '2021-03-14 16:26:22.311113+09', '2021-03-14 16:26:22.311113+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('25a51603-43e1-4cee-8691-491977623fdd', '2021-03-14 16:26:31.407902+09', '2021-03-14 16:26:31.407902+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('86bb2eca-9a31-47ee-b965-b42da723fc4f', '2021-03-14 16:26:36.282589+09', '2021-03-14 16:26:36.282589+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('46054493-19d4-4032-b436-99104f521315', '2021-03-14 16:27:51.417284+09', '2021-03-14 16:27:51.417284+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('22a06e00-42e1-4666-a1db-a8f8e6539617', '2021-03-14 16:28:03.394355+09', '2021-03-14 16:28:03.394355+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('13605fcf-6c13-4bfc-89bd-e388a20374b2', '2021-03-14 16:28:05.828931+09', '2021-03-14 16:28:05.828931+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('6315f456-7058-4da1-a300-287a34f7716c', '2021-03-14 16:28:14.646928+09', '2021-03-14 16:28:14.646928+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('65682391-1481-4f9a-acf9-5686af841c4c', '2021-03-14 16:28:57.120079+09', '2021-03-14 16:28:57.120079+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('fbade8cc-c7e2-430b-af58-6ad2006805d0', '2021-03-14 16:29:46.761587+09', '2021-03-14 16:29:46.761587+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('a9c0dafd-e4a3-413b-96f4-2184f730cbd0', '2021-03-14 16:29:54.287398+09', '2021-03-14 16:29:54.287398+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('d8e714e5-2c42-4b41-ad28-43c7d5aa4d62', '2021-03-14 16:55:20.333063+09', '2021-03-14 16:55:20.333063+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('e430d712-ee9d-43d6-8789-3b1a9e12927f', '2021-03-14 16:55:31.273188+09', '2021-03-14 16:55:31.273188+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('622a5fb5-87b7-48e8-859d-a8fc0a0bfbca', '2021-03-14 16:55:52.568044+09', '2021-03-14 16:55:52.568044+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('7d600b70-40c4-4439-8feb-b0129ad15bb2', '2021-03-14 16:55:59.716762+09', '2021-03-14 16:55:59.716762+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('46dc5bd1-98f7-4192-bc70-b730a341b350', '2021-03-14 17:03:35.175407+09', '2021-03-14 17:03:35.175407+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('f5051c5d-b5b1-4d70-9162-4bfeb0fbc4ec', '2021-03-14 17:06:24.325729+09', '2021-03-14 17:06:24.325729+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('129e61a6-6f4b-430a-a9cd-c671b1cabf04', '2021-03-14 17:06:41.447904+09', '2021-03-14 17:06:41.447904+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('52a9eaaa-fbce-4265-a86a-874760a41cec', '2021-03-14 17:06:45.99365+09', '2021-03-14 17:06:45.99365+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('562f1e72-8d85-46ad-9c66-a3a2dcb26d07', '2021-03-14 17:06:52.518463+09', '2021-03-14 17:06:52.518463+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('629570ca-1765-4602-ab37-b47f3673c9b5', '2021-03-14 17:09:24.430304+09', '2021-03-14 17:09:24.430304+09', 'job_status_not_started', NULL, 0, NULL, NULL);
INSERT INTO public.email_customers_jobs (id, created_at, updated_at, status, last_error, attempts_count, locked_at, locked_by) VALUES ('80f00507-31b0-4696-b80b-a432e68d3d81', '2021-03-14 17:16:32.228928+09', '2021-03-14 17:16:32.228928+09', 'job_status_not_started', NULL, 0, NULL, NULL);


ALTER TABLE public.email_customers_jobs ENABLE TRIGGER ALL;


