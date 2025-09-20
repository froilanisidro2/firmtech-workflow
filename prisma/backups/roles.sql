
\restrict dkC8S5dB9naaWH0OP1g4St84V1TKvdcnQVY5736aKkVLevXzatIR9GcdGdszPQ4

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict dkC8S5dB9naaWH0OP1g4St84V1TKvdcnQVY5736aKkVLevXzatIR9GcdGdszPQ4

RESET ALL;
