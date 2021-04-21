-- Deploy loan-issuance:init_schema to pg

BEGIN;

CREATE SCHEMA loan;
GRANT USAGE ON SCHEMA loan TO app_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA loan GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO app_user;

CREATE TABLE loan.loan_issuance (
  loanee_id           TEXT,
  amount              NUMERIC NOT NULL,

  PRIMARY KEY(loanee_id)
);

COMMIT;
