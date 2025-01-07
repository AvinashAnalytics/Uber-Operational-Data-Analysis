CREATE DATABASE uber;
use uber;

CREATE TABLE city (
    city_id VARCHAR(50) PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    continent VARCHAR(50) NOT NULL,
    population INT,
    regulatory_status VARCHAR(50) NOT NULL,
    market_competition VARCHAR(50) NOT NULL,
    number_of_drivers INT NOT NULL,
    number_of_rides INT NOT NULL,
    avg_fare FLOAT NOT NULL,
    avg_wait_time_min FLOAT NOT NULL,
    uber_services VARCHAR(50) NOT NULL,
    major_competitors VARCHAR(200) NOT NULL
);



CREATE TABLE driver (
    driver_id VARCHAR(50) PRIMARY KEY,
    driver_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    city_id VARCHAR(50) NOT NULL,
    vehicle_type VARCHAR(50) NOT NULL,
    avg_driver_rating FLOAT NOT NULL,
    total_rides INT NOT NULL,
    total_earnings FLOAT NOT NULL,
    driver_status VARCHAR(50) NOT NULL,
    employment_type VARCHAR(50) NOT NULL,
    years_of_experience INT NOT NULL,
    ride_acceptance_rate FLOAT NOT NULL,
    FOREIGN KEY (city_id) REFERENCES city(city_id)
);


CREATE TABLE rides (
    ride_id VARCHAR(50) PRIMARY KEY,
    start_city VARCHAR(100) NOT NULL,
    end_city VARCHAR(100) NOT NULL,
    ride_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    distance_km FLOAT NOT NULL,
    fare FLOAT NOT NULL,
    dynamic_pricing VARCHAR(50) NOT NULL,
    driver_id VARCHAR(50) NOT NULL,
    passenger_id VARCHAR(50) NOT NULL,
    rating INT NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    ride_status VARCHAR(50) NOT NULL
);

CREATE INDEX idx_passenger_id ON rides(passenger_id);


CREATE TABLE payment (
    payment_id VARCHAR(50) PRIMARY KEY,
    ride_id VARCHAR(50) NOT NULL,
    driver_id VARCHAR(50) NOT NULL,
    passenger_id VARCHAR(50) NOT NULL,
    fare FLOAT NOT NULL,
    surge_multiplier FLOAT NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    driver_earnings FLOAT NOT NULL,
    uber_commission FLOAT NOT NULL,
    transaction_status VARCHAR(50) NOT NULL,
    payment_date DATE NOT NULL,
    FOREIGN KEY (ride_id) REFERENCES rides(ride_id),
    FOREIGN KEY (driver_id) REFERENCES driver(driver_id),
    FOREIGN KEY (passenger_id) REFERENCES rides(passenger_id)
);




