-- RIDES
CREATE TABLE rides (
  id                UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  passenger_id      UUID REFERENCES users(id),
  driver_id         UUID REFERENCES drivers(id),
  vehicle_id        UUID REFERENCES vehicles(id),
  pickup_lat        DECIMAL(10,7) NOT NULL,
  pickup_lng        DECIMAL(10,7) NOT NULL,
  pickup_address    TEXT,
  dropoff_lat       DECIMAL(10,7) NOT NULL,
  dropoff_lng       DECIMAL(10,7) NOT NULL,
  dropoff_address   TEXT,
  status            VARCHAR(20) DEFAULT 'requested',
  ride_type         VARCHAR(20),  -- standard|share|premium|scheduled
  distance_km       DECIMAL(8,2),
  duration_min      INTEGER,
  fare_amount       DECIMAL(10,2),
  surge_multiplier  DECIMAL(3,1) DEFAULT 1.0,
  carbon_saved_g    INTEGER,      -- grams of CO2 saved vs petrol
  scheduled_at      TIMESTAMPTZ,
  started_at        TIMESTAMPTZ,
  completed_at      TIMESTAMPTZ,
  cancelled_at      TIMESTAMPTZ,
  cancel_reason     TEXT,
  created_at        TIMESTAMPTZ DEFAULT NOW()
) PARTITION BY RANGE (created_at);
CREATE INDEX idx_rides_passenger ON rides(passenger_id, created_at DESC);
CREATE INDEX idx_rides_driver ON rides(driver_id, created_at DESC);
CREATE INDEX idx_rides_status ON rides(status);
