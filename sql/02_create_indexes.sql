-- Time-based queries for dashboards
CREATE INDEX IF NOT EXISTS idx_trip_kpis_window_start
ON trip_kpis_hourly (window_start);

-- Weekend vs weekday analytics
CREATE INDEX IF NOT EXISTS idx_daily_usage_is_weekend
ON daily_usage (is_weekend);

-- Member vs casual filtering
CREATE INDEX IF NOT EXISTS idx_trip_distance_member
ON trip_distance_analysis (member_casual);

-- Station imbalance analysis
CREATE INDEX IF NOT EXISTS idx_station_net_departures
ON station_kpis (net_departures);

-- Popular stations ranking
CREATE INDEX IF NOT EXISTS idx_popular_stations_rank_starts
ON popular_stations (rank_by_starts);
