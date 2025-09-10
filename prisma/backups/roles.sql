
\restrict pdUO0sAjDdHjPCxd83ppsyFZPlIcM6EAuURgB1DTpEYa4jmOdClBDbJI2668HXO

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict pdUO0sAjDdHjPCxd83ppsyFZPlIcM6EAuURgB1DTpEYa4jmOdClBDbJI2668HXO

RESET ALL;
