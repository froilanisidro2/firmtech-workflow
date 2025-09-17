
\restrict bN1M4vfUlIRTXFs1kA3qggaKWP25EOI9jat90eGM5t6SxpYnucxZ1sf7f8fKWfV

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict bN1M4vfUlIRTXFs1kA3qggaKWP25EOI9jat90eGM5t6SxpYnucxZ1sf7f8fKWfV

RESET ALL;
