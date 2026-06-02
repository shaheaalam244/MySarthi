-- VEHICLES
CREATE TABLE vehicles (
  id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  driver_id        UUID REFERENCES drivers(id),
  registration_no  VARCHAR(20) UNIQUE NOT NULL,
  make             VARCHAR(50),
  model            VARCHAR(50),
  year             INTEGER,
  battery_capacity INTEGER, -- kWh
  range_km         INTEGER,
  current_soc      DECIMAL(5,2), -- State of Charge %
  ev_certificate   TEXT,
  is_active        BOOLEAN DEFAULT TRUE,
  created_at       TIMESTAMPTZ DEFAULT NOW()
);
