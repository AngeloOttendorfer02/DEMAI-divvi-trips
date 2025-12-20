CREATE INDEX IF NOT EXISTS idx_trip_kpis_window
ON trip_kpis_hourly (window_start, window_end);

CREATE INDEX IF NOT EXISTS idx_daily_usage_date
ON daily_usage (date);
