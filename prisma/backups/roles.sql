
\restrict A1xq1iqqwWZrsd6f8RrdHhl4TCKjJNUiKBnGcbnEvm32ioQTb5FmQRFmTlbyjmB

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict A1xq1iqqwWZrsd6f8RrdHhl4TCKjJNUiKBnGcbnEvm32ioQTb5FmQRFmTlbyjmB

RESET ALL;
