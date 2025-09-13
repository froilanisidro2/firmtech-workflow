
\restrict VkrxPvMoQU3EczcLH8hzNzm1NBzckcoy2aDkbc7VQX9pNaAb7dmEA8cYWZcCecX

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict VkrxPvMoQU3EczcLH8hzNzm1NBzckcoy2aDkbc7VQX9pNaAb7dmEA8cYWZcCecX

RESET ALL;
