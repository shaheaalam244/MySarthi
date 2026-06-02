-- CHARGING_STATIONS
CREATE TABLE charging_stations (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name        VARCHAR(100),
  operator    VARCHAR(50),
  lat         DECIMAL(10,7) NOT NULL,
  lng         DECIMAL(10,7) NOT NULL,
  address     TEXT,
  total_ports INTEGER,
  available   INTEGER,
  speed_kw    INTEGER,
  is_active   BOOLEAN DEFAULT TRUE,
  updated_at  TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX idx_charging_geo ON charging_stations USING GIST(
  ll_to_earth(lat, lng)
);
