-- T_Stops
INSERT INTO T_Stops(
    stop_id,
    code,
    name,
    description,
    lat,
    lon,
    zone_id,
    url,
    location_type,
    parent_station,
    timezone,
    wheelchair_boarding)
  SELECT
     stop_id,
    stop_code,
    stop_name,
    stop_desc,
    stop_lat,
    stop_lon,
    zone_id,
    stop_url,
    location_type,
    parent_station,
    stop_timezone,
    wheelchair_boarding
    from tmp_stops;


INSERT INTO T_Calendar(
gtfs_service_id,
monday,
tuesday,
wednesday,
thursday,
friday,
saturday,
sunday		
)
SELECT
service_id,
monday,
tuesday,
wednesday,
thursday,
friday,
saturday,
sunday		
FROM
TMP_Calendar;


INSERT INTO T_Frequencies (
gtfs_trip_id,
start_time,
end_time,
headway_secs,
exact_times
) 
SELECT
trip_id,
start_time,
end_time,
headway_secs,
exact_times
FROM
TMP_Frequencies;
