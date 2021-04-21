-- Revert loan-issuance:init_schema from pg

BEGIN;

DROP TABLE loan.loan_issuance;
DROP SCHEMA loan;

COMMIT;
