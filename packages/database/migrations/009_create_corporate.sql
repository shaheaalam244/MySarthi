-- CORPORATE_ACCOUNTS
CREATE TABLE corporate_accounts (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  company_name  VARCHAR(200) NOT NULL,
  gstin         VARCHAR(20),
  billing_email VARCHAR(255),
  credit_limit  DECIMAL(12,2),
  plan_type     VARCHAR(20),
  created_at    TIMESTAMPTZ DEFAULT NOW()
);
