
\restrict F0XPtsauy8E9hcnJRwvkZO5NZlU9GCvAEHXG6Z8JyRYwbxJcr0LvKFeezggebg1

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict F0XPtsauy8E9hcnJRwvkZO5NZlU9GCvAEHXG6Z8JyRYwbxJcr0LvKFeezggebg1

RESET ALL;
