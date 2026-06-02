-- CARBON_SAVINGS
CREATE TABLE carbon_savings (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id     UUID REFERENCES users(id),
  ride_id     UUID REFERENCES rides(id),
  saved_grams INTEGER NOT NULL,
  distance_km DECIMAL(8,2),
  recorded_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX idx_carbon_user ON carbon_savings(user_id, recorded_at);
