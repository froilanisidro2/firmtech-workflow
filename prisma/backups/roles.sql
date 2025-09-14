
\restrict CTvdokxaR322DXL50ayjpa4rEBhNZ56Uai4GvRVtuXl7R1gErX1DaEUP6otXmLb

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict CTvdokxaR322DXL50ayjpa4rEBhNZ56Uai4GvRVtuXl7R1gErX1DaEUP6otXmLb

RESET ALL;
