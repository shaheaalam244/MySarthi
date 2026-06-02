-- DRIVERS
CREATE TABLE drivers (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id         UUID REFERENCES users(id) UNIQUE,
  license_number  VARCHAR(50) UNIQUE NOT NULL,
  kyc_status      VARCHAR(20) DEFAULT 'pending', -- pending|verified|rejected
  kyc_docs        JSONB,
  rating          DECIMAL(2,1) DEFAULT 5.0,
  total_rides     INTEGER DEFAULT 0,
  is_online       BOOLEAN DEFAULT FALSE,
  current_lat     DECIMAL(10,7),
  current_lng     DECIMAL(10,7),
  city            VARCHAR(50),
  created_at      TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX idx_drivers_location ON drivers USING GIST (
  ll_to_earth(current_lat, current_lng)
);
