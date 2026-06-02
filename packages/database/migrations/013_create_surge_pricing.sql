-- SURGE_PRICING
CREATE TABLE surge_pricing (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  city        VARCHAR(50),
  zone        VARCHAR(50),
  multiplier  DECIMAL(3,1) DEFAULT 1.0,
  active_from TIMESTAMPTZ,
  active_to   TIMESTAMPTZ,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);
