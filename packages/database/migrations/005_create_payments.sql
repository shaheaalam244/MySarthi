-- PAYMENTS
CREATE TABLE payments (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  ride_id         UUID REFERENCES rides(id),
  passenger_id    UUID REFERENCES users(id),
  amount          DECIMAL(10,2) NOT NULL,
  currency        VARCHAR(3) DEFAULT 'INR',
  method          VARCHAR(20),  -- upi|card|wallet|cash
  gateway_txn_id  VARCHAR(100),
  status          VARCHAR(20) DEFAULT 'pending',
  commission      DECIMAL(10,2),
  driver_payout   DECIMAL(10,2),
  refund_amount   DECIMAL(10,2),
  created_at      TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX idx_payments_ride ON payments(ride_id);
CREATE INDEX idx_payments_status ON payments(status, created_at);
