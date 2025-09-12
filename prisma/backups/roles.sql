
\restrict I4h6SCACbIQEcrLExH9Ikn25RgZrsR4IeGEYZ8xNFeNdh47DITL6tfiEd6RC8AN

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict I4h6SCACbIQEcrLExH9Ikn25RgZrsR4IeGEYZ8xNFeNdh47DITL6tfiEd6RC8AN

RESET ALL;
