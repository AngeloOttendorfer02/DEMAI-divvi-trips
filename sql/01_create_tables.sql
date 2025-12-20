CREATE TABLE IF NOT EXISTS trip_kpis_hourly (
    window_start TIMESTAMP NOT NULL,
    window_end TIMESTAMP NOT NULL,

    total_trips INTEGER,
    member_trips INTEGER,
    casual_trips INTEGER,

    avg_trip_duration_min FLOAT,
    median_trip_duration_min FLOAT,
    avg_trip_distance_km FLOAT,
    avg_speed_kmh FLOAT,

    weekday INTEGER,
    hour INTEGER,
    is_weekend BOOLEAN,

    PRIMARY KEY (window_start, window_end)
);

CREATE TABLE IF NOT EXISTS station_kpis (
    station_name TEXT PRIMARY KEY,

    start_lat FLOAT,
    start_lng FLOAT,

    total_starts INTEGER,
    total_ends INTEGER,
    net_departures INTEGER,

    member_starts INTEGER,
    casual_starts INTEGER
);
CREATE TABLE IF NOT EXISTS daily_usage (
    date DATE PRIMARY KEY,

    total_trips INTEGER,
    member_trips INTEGER,
    casual_trips INTEGER,

    member_ratio FLOAT,
    avg_trip_duration_min FLOAT,
    avg_trip_distance_km FLOAT,

    weekday INTEGER,
    is_weekend BOOLEAN
);

CREATE TABLE IF NOT EXISTS bike_utilization (
    bike_id TEXT PRIMARY KEY,

    rideable_type TEXT,

    total_trips INTEGER,
    total_duration_min FLOAT,
    total_distance_km FLOAT,

    avg_trip_duration_min FLOAT,
    avg_trip_distance_km FLOAT
);

CREATE TABLE IF NOT EXISTS popular_stations (
    station_name TEXT PRIMARY KEY,

    total_starts INTEGER,
    total_ends INTEGER,

    rank_by_starts INTEGER,
    rank_by_ends INTEGER
);

CREATE TABLE IF NOT EXISTS trip_distance_analysis (
    ride_id TEXT PRIMARY KEY,

    bike_id TEXT,
    member_casual TEXT,

    start_time TIMESTAMP,
    end_time TIMESTAMP,

    trip_duration_min FLOAT,
    trip_distance_km FLOAT,
    avg_speed_kmh FLOAT,

    start_station_name TEXT,
    end_station_name TEXT
);
