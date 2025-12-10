SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict R0ObQpQ0IEcfG9H16j3a1CPgXf4PGxNPzdDbJeAV3xhKz6ydPucnwaY0pstenHz

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "role", "lastActiveAt") FROM stdin;
6dfb74cf-458d-453b-a6e8-4b36709c108b	froilan.isidro@gmail.com	Froilan	Isidro	$2a$10$BpouXhFLghpJk3fSm/Kb2.TRw0BgoswHe5aXnmpD7N2RexirMF1Ma	{"version":"v4","personalization_survey_submitted_at":"2025-08-12T01:48:20.760Z","personalization_survey_n8n_version":"1.106.3"}	2025-08-12 01:41:05.323+00	2025-08-12 01:48:21.846+00	{"userActivated": false}	f	f	\N	\N	global:owner	2025-08-12
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description") FROM stdin;
VlQ5sxBiQdHd8FpI	Froilan Isidro <froilan.isidro@gmail.com>	personal	2025-08-12 01:43:14.007+00	2025-08-12 01:47:48.177+00	\N	\N
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data") FROM stdin;
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1694091729095	MigrateToTimestampTz1694091729095
51	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
52	1700571993961	AddGlobalAdminRole1700571993961
53	1705429061930	DropRoleMapping1705429061930
54	1711018413374	RemoveFailedExecutionStatus1711018413374
55	1711390882123	MoveSshKeysToDatabase1711390882123
56	1712044305787	RemoveNodesAccess1712044305787
57	1714133768519	CreateProject1714133768519
58	1714133768521	MakeExecutionStatusNonNullable1714133768521
59	1717498465931	AddActivatedAtUserSetting1717498465931
60	1720101653148	AddConstraintToExecutionMetadata1720101653148
61	1721377157740	FixExecutionMetadataSequence1721377157740
62	1723627610222	CreateInvalidAuthTokenTable1723627610222
63	1723796243146	RefactorExecutionIndices1723796243146
64	1724753530828	CreateAnnotationTables1724753530828
65	1724951148974	AddApiKeysTable1724951148974
66	1726606152711	CreateProcessedDataTable1726606152711
67	1727427440136	SeparateExecutionCreationFromStart1727427440136
68	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
69	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
70	1729607673469	AddProjectIcons1729607673469
71	1730386903556	CreateTestDefinitionTable1730386903556
72	1731404028106	AddDescriptionToTestDefinition1731404028106
73	1731582748663	MigrateTestDefinitionKeyToString1731582748663
74	1732271325258	CreateTestMetricTable1732271325258
75	1732549866705	CreateTestRun1732549866705
76	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
77	1734479635324	AddManagedColumnToCredentialsTable1734479635324
78	1736172058779	AddStatsColumnsToTestRun1736172058779
79	1736947513045	CreateTestCaseExecutionTable1736947513045
80	1737715421462	AddErrorColumnsToTestRuns1737715421462
81	1738709609940	CreateFolderTable1738709609940
82	1739549398681	CreateAnalyticsTables1739549398681
83	1740445074052	UpdateParentFolderIdColumn1740445074052
84	1741167584277	RenameAnalyticsToInsights1741167584277
85	1742918400000	AddScopesColumnToApiKeys1742918400000
86	1745322634000	ClearEvaluation1745322634000
87	1745587087521	AddWorkflowStatisticsRootCount1745587087521
88	1745934666076	AddWorkflowArchivedColumn1745934666076
89	1745934666077	DropRoleTable1745934666077
90	1747824239000	AddProjectDescriptionColumn1747824239000
91	1750252139166	AddLastActiveAtColumnToUser1750252139166
92	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
VlQ5sxBiQdHd8FpI	6dfb74cf-458d-453b-a6e8-4b36709c108b	project:personalOwner	2025-08-12 01:43:14.007+00	2025-08-12 01:43:14.007+00
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60}	t
features.oidc	{"clientId":"","clientSecret":"","discoveryEndpoint":"","loginEnabled":false}	t
userManagement.authenticationMethod	email	t
features.sourceControl.sshKeys	{"encryptedPrivateKey":"U2FsdGVkX18s5xMP+wan2UXhGaPuqdOUwea4elTeptRCvJNfzriJHFLk2Y5RYSI/nOfAjFs5kMgcsEJRHA087PvclVpnbR+xzPz2h48iMxJnqPlfCkzRmFg00WTdQ7+Mn89djxgwpOJpSs/82hfi/Df3MEnt4KlvmJVHLvLvApnimWQJw+GICuMCCsPPVwFcbZ1nYxmL4fPw56HyI7pimKLG9IJYWSQWjrUbIIvXPspGrnVEQ51YFJxaQRs79FU6YJKBbgS90at1bRDOwhSKFIS9Vwk5fqT7CxLafBejcxEN50bpP0En8idX9df+9iS5PwpUJ2ZfuN7ySKKFoY2RlPZMqhwp/yift7P2QqeY+ixhrq56sXNFYQE1xc4jB14GDGtD3AIH1TN5e6x8Bjn+3CJy1Y07Ci1fwQHpcxtUlMZE24gcN2FtY5KH1BQ1H0MxRG0/0sitnHN5zDCFsvkwDXkmK2rLns31AE+EZJshYEm2K7QlG9eIKZ/TiEQmOmCqvqQGtqaVeDAGGR+F+AsehXtKPV5s9roiespdqVqBkNLUPaZTodhBq7xudTMyheF8","publicKey":"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINtwMMdYjgIoVAqZdHh5jvUUTRAsIYXi1DxV4D3s8MSN n8n deploy key"}	t
features.sourceControl	{"branchName":"main","keyGeneratorType":"ed25519"}	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5wUk1yU3BvQjBEcjJmMkZZMlUrRzNXeFMzQi9PdCsxbE9lMUNwaUNsREQ0WVRlR1JSUE5SdzJQSFYwblV1SVhmXG5HcE01aUpnK3Y3L1JET0pPeEV2L0QzUWlZNU5qcXlnYUsvSWZBLy85b0dLWHRFYmR4NDRpL0l2RTA1SGhjdXg2XG5MWW1hMW5vUllkakxuRzdNaUJTKzlZQlduZm1NazVXUXVFYWVGbVNFKzJtK1oyS0ltTkd2aHhpckpYU1JoMk5qXG5aUmJWR1BTS2FKWmNwVVhxVHVXaTZOTnJtL3Q3c0ZPbi93aU1uVk1rdmk1VS9MeUplQ29MZU10TEd5UGlvc0JZXG5QMy9EY1hZaUlKQ0tZZjJHb1hyZE5GeENScWY4YzJUZnpaSWc2azRmQnBvTnlLbjE3VFp5SWtsVVJNcFZBYWxSXG5aSDcwN3N3TmhCWkFnWWZZWEdoZ1B3PT18fFUyRnNkR1ZrWDE5ZmNxeGNVbjF3MjdTaGxmVkxJNWpPTHlQbFB5XG5TWldONE10dEZvMVRLeFlwZTZVYk40NEIrN0N4eitXRkI0Mmd6M2M2T21Bc05FdlhDeUx1K2NvcG5QRjQ4SWVIXG5XNGkwNUVodFZOVGltNHZTajVzSkZSWTIzakg0S2x6UWZrUmUwVEFjR2pvRUlOVHR0UHZKZGwyQ09lblN6SEMzXG5oMy9NVmd6SnArT2Y4UGk3M25KL3VGci81SWYwdjQ1L05xTXZuVkJKLzZQenZ3amRtNFNsNTRFenF4VHpQUWljXG5pQkVkUFJBcHAvbEpqRktSRWdTYnFJeXplM2RPWVFqMG9CcGdjaTVYL1ZIaURIQ2dIbWY0MlZBMGdhQkc0czBiXG5OOTduMGNjMElwQkwzRW9ZNFNsMVQvd1RKUHYxQjdYU1FWSFkvK1M3N2d6RXFORzJ0TWJtVU4xVW5NSjlldURGXG5hL2o3aFcvY0ZyKzAwZytzMjNXMFZGUXpFK2FMSTAzWitOWTdWdFNYVlZvbkhJSUQ1anBwQ1lSMENDUkt1bkRwXG5OakZLcjd3bWFtT0k1MUlpMFRuWHdnc1UwSlNmMm5xM1NjbEM4NU01M2tGZUlkUXVDeXN2eGJyRGFoOGlCMFNkXG5OakIyaFlWWWwxc0NTb3pPZVcrSHJWUjFneHZFTUM4QlFuWkRNNG4vQ0hCeGdsOVk1cDFzdkt0aEUzV0l6ZTRuXG4vRWJmclRkdEU5M3dEQk9wYUgzNmx3bStrQ0RZazZwWHBtOWt5ZnprUitiSXM0VlUvTmtLUHQ2Uk12dUpGQXFyXG5hS0R5RTJ5cjh2cEtEVnhOZUFkR3VrY2xzTnpIQk9QSWpCME5WNHVOTG9vNVJ6L3g5S3dWSFlYNW5zaEpOdzFZXG51N2ZaMFFCNnNGYjkvaU5mdXlWTmNqOWl5S0Q4VTVuOHdYZkViMmtMWWhkWlYrUWVlZ25ucVZ6WEUxOFhLTGJ0XG5sS2tKQmtYTVVxMCtJNGgwRW5rMjF0MHZkb1JrL2RjeXgyZWxNTi9IekNKREliMGw4ZjdiVFBSWWZvMHJmSVdmXG40SXh1NTZxUE1SK1hXRkFYYmppcTlZNFYrZDFQR01MbFp3VzNHMWxtMzlzMFN0T2F2b1JlZUwwQitvcDYvTElJXG41UXpSdnptZVhjc2RweUx5RkJ3RlRZbmxqeTBXSFFkaXN1eWUveXpIbUk1UXdRaTBycnMvc0lNbWtoNXZzVHJ1XG5QQjZLM3dnOGlrVld3NHE0OHhsUG5YR0lmOXJRMW0wNGpKZXphVmNTNmpSMjJBRnNnWHY3RG5MUU1JbDhHKzJIXG5zb3E2T292OGVvRWZJalZFK1NtSDE2NWh2WThDS21UOEo4QzZCajRzVkwxZEpjeVVtamo5UitOd0REaVlMaXlUXG5UZGFCUnpmM2dFSlk2OStWVmp1cGlUSVhHbWRURm03NWhZK2N3Ymt6SlhxNWY1Uys2azgzMnFjUW51TEIvLzJJXG40QnZnWG1NRjBSS1Q2d0sxcjB2OWJmdTF5cmNDLzIwd2JxeTNFZFdDc1BJcG0vUG9JS3Qzcm5reHZUK2t3YkdyXG5FTGxmdUZMckZjQzJkT1B0bVFBMHlLcXhkSWhKeVA3T0JOdEttZkxvTlp6STVCdmtWdlo1RzlJUys0VnByMGxEXG5OV1FqeFp0MUt4UDNRTE1Uc2NLVzZQaTl3NkpwUjE4SWUvTXlLdXBSSktUZXM3SUhBUVlLTFUraDF1bG9xVlpkXG5zL2JWVjFqN2tucXJmeFJwRzQ3TVhLNlJUVUJkTWtkaXlvYWZXUTBWcmdBczJuQldKNjQ3cThZeENheHVsYXAwXG50K0NqSzRYVC9XNEZYNDZ6anA1bjJqVlFId1RuWWM1cGZiUCt1dWVacHoraERrNkkyZ2FBMFNDV1VqeER1Z2d0XG4zSFFRRUdnS2RsK1JCd2NOT0xKUkVBOUpUQkFnV0U2eGt1cGpEYTV2MVdaa01aVlpHK0c4SDlHQXNDT2Y0bE96XG5CcWRTb3ZIdmZtQzFyQlFiYm93Ymx5Y0NoYXd3VkNHUXp3STRCTnVwWGlYcGV1d3g4M3dKN2JrSWo3dmRPdWFtXG4rZmJRY0JNY2tsZlZPODRJd3J2RmUrU2xZYnA3L1BIOXBXOTJaTUZiR3lGNWRXbGpLRHgyOFlHbG1ObkZOZFN5XG5UV3NKUFJqNnRIQVFkMWtRd0lzMEVMNGlDQjVRNDQwdHk3VzFlMnp1TXYxbXFNcWh2L1k4QUZVMkdwTnRuc2tOXG5zcDI2dEs2RW5GWnNLNXM2eHVCbGNqN0xsZWdqcE9scHh1OU5WV3NWRHJ5TnVwM2drT0U2RXF2M0NRL2Y3TnVnXG5hRW5oOEtyYnQ4cWdjYURmSHNCdmdTOEpFbEhpZUdtRE1nMm5kSGduSWh1MmZXblVEaitLRk5VZVJ6bTAzRURKXG5nek1WQml1M09pVmU2SVQxczhzNFNuZUJHNUZrRFp0NjZNckhIK204cGVNNUZGODhLRUkyVXkvM240bmxqdzZ1XG5EMEREYnVBZjhuM2NzNnlZaWU2ZzdhUytxZThxdnROb2I1R1hqVi9Ebkd0RVpJQmxiemliTTBUd0owb09Ham4zXG5KMmZqUFVWQWZRTGtsOXU1WGo5WTVlbDZwTElWZml0dHVDTkZiNThuRVIrcEFqN01LZ1RsVVlaRFBSd2VMaG1wXG44SWh2N0VoSWVOd3hCLzJtT0IwQldvM2JRb0VFUnFJcWFxUTZhdE0ydW1oNlpzRDBCUGprYVpuOHBrb0g2aWF5XG5kY2hlbktIQW8yaHBCaVVESTdibzZBL1Vwd2JsTWcvQThpRHlPdnVIT2s1eFM4NXlsWmFDdTZ6RDFiNGkxL01CXG5qczROSkl2eHVxVi9BVUY2VXlmRkE2eW5IOEpFeTlvNFlzT0NReDRxM3MyNVU4TzNDK1FTeldXMkhOd0JGNkNXXG5kSUc2cnk0VHdzWWVidGtPSzl0OHVtN2xzMm1JNGFsQUhOTDJMdW5XdENDL0JhY1gxSGZZb3h6TTJ3eEVQTXRXXG5ZWTl5c1NnS0RvR0ZyaUpyVk4veXBrWUwzWlJ2Um5XSHdXY0hlYWxxc1laM2RrN3c9PXx8TEF0TVFLcnh2Y1NkXG5HM0ZmbHRiT244MDUvS1htUFBoWW9vamp3d1I3d3RJWGs3WjNJREV2OUhKY2U0aVpZQjdybFdxTU9iNi9iRVNCXG5iekhQQ1hpeWd5TGlyN2JNdGo1TVBvZEFTUEhnM3Z6NEdITFpXemhVRTJvM0ZXeHlLdEpzdHVmcWNGT1E2ODd0XG5mS2IxbVBya0tiVFlqYWJkZS9oNEdITE1tNVlDaWZGMlZ0QXlkZlNTVlE3RlkzVmdEZUVrcFJrNHRYWEE2RFphXG52QWdhQXFWR3NYZStOS2h3Tzg1dUw2WHpyRTRIVDFoSkJPaG1jcjRINFZ4b1N6YTY0OTVFUHVoQW9vWitWSjdBXG4ybWhLdGNqakxicU43WDdtaXNGbW9lejlldlNPdTNDbHlwQnVBVXFmTGMrTi81aUl5V3RBVGptVmw4Tkx4QWdaXG5Kb2lrTWUwMFhRPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount") FROM stdin;
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 1, false);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 92, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict R0ObQpQ0IEcfG9H16j3a1CPgXf4PGxNPzdDbJeAV3xhKz6ydPucnwaY0pstenHz

RESET ALL;
