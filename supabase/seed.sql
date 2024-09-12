SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '5a3099f5-b6df-4872-bfb3-6ecee212d00c', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"smarttin77@gmail.com","user_id":"31c5e130-364c-45d2-b1a5-f124327eb9d6","user_phone":""}}', '2024-08-30 19:06:17.576147+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de63cb4a-7cbb-4d19-9d55-1ccc13f646e6', '{"action":"login","actor_id":"31c5e130-364c-45d2-b1a5-f124327eb9d6","actor_username":"smarttin77@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-30 19:47:11.908608+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b403f26-3033-4388-b3e9-178244d0eea6', '{"action":"token_refreshed","actor_id":"31c5e130-364c-45d2-b1a5-f124327eb9d6","actor_username":"smarttin77@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-30 22:10:38.527029+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc67fc2e-27b9-4f80-a531-aa65c436b87c', '{"action":"token_revoked","actor_id":"31c5e130-364c-45d2-b1a5-f124327eb9d6","actor_username":"smarttin77@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-30 22:10:38.530078+00', ''),
	('00000000-0000-0000-0000-000000000000', '65b85e3a-aaf7-4fd3-ad3f-c71bbf9079dd', '{"action":"login","actor_id":"31c5e130-364c-45d2-b1a5-f124327eb9d6","actor_username":"smarttin77@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 15:55:15.134355+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '31c5e130-364c-45d2-b1a5-f124327eb9d6', 'authenticated', 'authenticated', 'smarttin77@gmail.com', '$2a$10$icqDFdVA7TZvS8r0z0LsVeOrCl.9NW5ZB0B6uHjKUsXr.tFZ5rXE2', '2024-08-30 19:06:17.577368+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-09-01 15:55:15.135915+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-30 19:06:17.571186+00', '2024-09-01 15:55:15.140584+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('31c5e130-364c-45d2-b1a5-f124327eb9d6', '31c5e130-364c-45d2-b1a5-f124327eb9d6', '{"sub": "31c5e130-364c-45d2-b1a5-f124327eb9d6", "email": "smarttin77@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-08-30 19:06:17.575491+00', '2024-08-30 19:06:17.57552+00', '2024-08-30 19:06:17.57552+00', 'af820b7c-7c4c-41d9-848f-1bc1feae7af8');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('9225f13f-d3a7-4b35-816b-4441b0e69516', '31c5e130-364c-45d2-b1a5-f124327eb9d6', '2024-08-30 19:47:11.910759+00', '2024-08-30 22:10:38.536498+00', NULL, 'aal1', NULL, '2024-08-30 22:10:38.536454', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '192.168.65.1', NULL),
	('67ff4577-2243-4b24-8095-8e98e0989469', '31c5e130-364c-45d2-b1a5-f124327eb9d6', '2024-09-01 15:55:15.135959+00', '2024-09-01 15:55:15.135959+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '192.168.65.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('9225f13f-d3a7-4b35-816b-4441b0e69516', '2024-08-30 19:47:11.918423+00', '2024-08-30 19:47:11.918423+00', 'password', 'bfb5073a-b30d-4068-8c71-27abf6bc124b'),
	('67ff4577-2243-4b24-8095-8e98e0989469', '2024-09-01 15:55:15.140875+00', '2024-09-01 15:55:15.140875+00', 'password', '5603b925-42cf-4b11-94fd-e719dce8c59e');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 1, 'iVZoL6wC31Xt4u0gU6ylSA', '31c5e130-364c-45d2-b1a5-f124327eb9d6', true, '2024-08-30 19:47:11.914619+00', '2024-08-30 22:10:38.530667+00', NULL, '9225f13f-d3a7-4b35-816b-4441b0e69516'),
	('00000000-0000-0000-0000-000000000000', 2, 'Ijflvo7D81xVgy3Mto1e7A', '31c5e130-364c-45d2-b1a5-f124327eb9d6', false, '2024-08-30 22:10:38.534748+00', '2024-08-30 22:10:38.534748+00', 'iVZoL6wC31Xt4u0gU6ylSA', '9225f13f-d3a7-4b35-816b-4441b0e69516'),
	('00000000-0000-0000-0000-000000000000', 3, 'XQxpgw0UxXW-e0Xm5XBtzw', '31c5e130-364c-45d2-b1a5-f124327eb9d6', false, '2024-09-01 15:55:15.13868+00', '2024-09-01 15:55:15.13868+00', NULL, '67ff4577-2243-4b24-8095-8e98e0989469');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2024-09-12 00:09:41.474276+00', 'David Moe', '31c5e130-364c-45d2-b1a5-f124327eb9d6');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packtt', '2024-09-11 23:33:06.792192+00', 'packtt pub', 'packtt.local'),
	('acttive', '2024-09-11 23:33:53.04634+00', 'Active mode', 'activemode.local'),
	('oddly', '2024-09-11 23:34:49.160801+00', 'Oddly annoying', 'Oddly.local');


--
-- Data for Name: tenants_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2024-09-12 00:50:30.877528+00', 1, 'packtt'),
	(2, '2024-09-12 00:50:49.016439+00', 1, 'oddly');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 3, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenants_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenants_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
