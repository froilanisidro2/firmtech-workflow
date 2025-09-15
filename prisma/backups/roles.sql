
\restrict AEFePX1iQMHflbN5PBc9DckNn6mb77gcfF6iKaMJrT43Q9uf7kTMCO06qWR9uss

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict AEFePX1iQMHflbN5PBc9DckNn6mb77gcfF6iKaMJrT43Q9uf7kTMCO06qWR9uss

RESET ALL;
