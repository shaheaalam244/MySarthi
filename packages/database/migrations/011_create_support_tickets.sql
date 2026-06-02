-- SUPPORT_TICKETS
CREATE TABLE support_tickets (
  id           UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id      UUID REFERENCES users(id),
  ride_id      UUID REFERENCES rides(id),
  category     VARCHAR(50),
  priority     VARCHAR(10) DEFAULT 'medium',
  status       VARCHAR(20) DEFAULT 'open',
  description  TEXT,
  assigned_to  UUID,
  resolved_at  TIMESTAMPTZ,
  created_at   TIMESTAMPTZ DEFAULT NOW()
);
