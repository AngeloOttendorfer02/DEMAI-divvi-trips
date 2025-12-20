CREATE TABLE IF NOT EXISTS trip_kpis_hourly (
    window_start TIMESTAMP NOT NULL,
    window_end TIMESTAMP NOT NULL,
    total_trips INTEGER,
    avg_trip_duration FLOAT,
    member_trips INTEGER,
    casual_trips INTEGER,
    avg_speed FLOAT,
    PRIMARY KEY (window_start, window_end)
);

CREATE TABLE IF NOT EXISTS station_kpis (
    station_name TEXT PRIMARY KEY,
    total_starts INTEGER,
    total_ends INTEGER,
    net_departures INTEGER
);

CREATE TABLE IF NOT EXISTS daily_usage (
    date DATE PRIMARY KEY,
    total_trips INTEGER,
    member_ratio FLOAT,
    weekend BOOLEAN
);

CREATE TABLE IF NOT EXISTS bike_utilization (
    bike_id INTEGER PRIMARY KEY,
    total_trips INTEGER,
    total_duration FLOAT,
    avg_duration FLOAT
);

CREATE TABLE IF NOT EXISTS popular_stations (
    station_name TEXT PRIMARY KEY,
    total_starts INTEGER,
    total_ends INTEGER
);

CREATE TABLE IF NOT EXISTS trip_distance_analysis (
    trip_id INTEGER PRIMARY KEY,
    bike_id INTEGER,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    trip_duration FLOAT,
    distance FLOAT
);
