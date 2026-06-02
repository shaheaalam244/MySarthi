-- REWARD_POINTS
CREATE TABLE reward_points (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id     UUID REFERENCES users(id),
  points      INTEGER DEFAULT 0,
  action      VARCHAR(50),  -- ride_complete|referral|subscription
  ride_id     UUID REFERENCES rides(id),
  expires_at  TIMESTAMPTZ,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX idx_rewards_user ON reward_points(user_id, created_at DESC);
