INSERT INTO trips (
    VendorID, lpep_pickup_datetime, lpep_dropoff_datetime, store_and_fwd_flag, RatecodeID, 
    PULocationID, DOLocationID, passenger_count, trip_distance, fare_amount, extra, 
    mta_tax, tip_amount, tolls_amount, ehail_fee, improvement_surcharge, total_amount, 
    payment_type, trip_type, congestion_surcharge
) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);