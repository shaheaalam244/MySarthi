-- SUBSCRIPTION_PLANS
CREATE TABLE subscription_plans (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name        VARCHAR(100),
  price       DECIMAL(10,2),
  duration_days INTEGER,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);

-- SUBSCRIPTIONS
CREATE TABLE subscriptions (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id     UUID REFERENCES users(id),
  plan_id     UUID REFERENCES subscription_plans(id),
  status      VARCHAR(20) DEFAULT 'active',
  starts_at   TIMESTAMPTZ,
  expires_at  TIMESTAMPTZ,
  auto_renew  BOOLEAN DEFAULT TRUE,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);
