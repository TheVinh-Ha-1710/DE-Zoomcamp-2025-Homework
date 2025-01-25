CREATE TABLE IF NOT EXISTS trips (
    VendorID INT,
    lpep_pickup_datetime TIMESTAMP,
    lpep_dropoff_datetime TIMESTAMP,
    store_and_fwd_flag CHAR(1),
    RatecodeID INT,
    PULocationID INT,
    DOLocationID INT,
    passenger_count INT,
    trip_distance DECIMAL(10, 2),
    fare_amount DECIMAL(10, 2),
    extra DECIMAL(10, 2),
    mta_tax DECIMAL(10, 2),
    tip_amount DECIMAL(10, 2),
    tolls_amount DECIMAL(10, 2),
    ehail_fee DECIMAL(10, 2),
    improvement_surcharge DECIMAL(10, 2),
    total_amount DECIMAL(10, 2),
    payment_type INT,
    trip_type INT,
    congestion_surcharge DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS locations(
    LocationID INT,
    Borough VARCHAR(255),
    Zone VARCHAR(255),
    service_zone VARCHAR(255)
);