/*
* HOTEL MANAGEMENT DATABASE
* PL/SQL usiing PostgreSQL
* Developed by: Amitoj Singh
* WED 02 April 2020
*/

-- Database name: hotel_database
CREATE DATABASE hotel_database;
----------------------------------------------------------------------------------------------------

-- Connect to hotel_database
\c hotel_database;
----------------------------------------------------------------------------------------------------

-- Table hotel, holds the information about hotels
CREATE TABLE IF NOT EXISTS hotel (
    hotel_id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    number VARCHAR(12) NOT NULL,
    email_id VARCHAR(100) NOT NULL,
    rooms_capacity int NOT NULL
);
----------------------------------------------------------------------------------------------------

-- Table guest, holds information about incoming guests
CREATE TABLE IF NOT EXISTS guest (
    guest_id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    govt_id_number VARCHAR(20) NOT NULL,
    number VARCHAR(12) NOT NULL,
    email_id VARCHAR(100)
);
----------------------------------------------------------------------------------------------------

-- Table department, holds the information of various departments present in hotel
CREATE TABLE IF NOT EXISTS department (
    dept_id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(150)
);
----------------------------------------------------------------------------------------------------

-- Table hotel_dept, connects hotel and department tables
CREATE TABLE IF NOT EXISTS hotel_dept (
    hotel_hotel_id BIGINT NOT NULL REFERENCES hotel (hotel_id),
    dept_dept_id BIGINT NOT NULL REFERENCES department (dept_id)
);
----------------------------------------------------------------------------------------------------

-- Table employees, hold the data of employees working in hotel
CREATE TABLE IF NOT EXISTS employees (
    emp_id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    number VARCHAR(12) NOT NULL, 
    email_id VARCHAR(150) UNIQUE,
    salary MONEY NOT NULL,
    joining_date DATE NOT NULL,
    dept_dept_id BIGINT NOT NULL REFERENCES department (dept_id),
    hotel_hotel_id BIGINT NOT NULL REFERENCES hotel (hotel_id)
);
----------------------------------------------------------------------------------------------------

-- Table room_categories, holds various categories of rooms in a hotel
CREATE TABLE IF NOT EXISTS room_categories (
    room_category_id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(200) NOT NULL,
    cost MONEY NOT NULL
);
----------------------------------------------------------------------------------------------------

-- Table bookings, holds information of active bookings
CREATE TABLE IF NOT EXISTS bookings (
    booking_id BIGSERIAL NOT NULL PRIMARY KEY,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    guest_guest_id BIGINT NOT NULL UNIQUE REFERENCES guest (guest_id),
    hotel_hotel_id BIGINT NOT NULL REFERENCES hotel (hotel_id),
    employee_id BIGINT NOT NULL REFERENCES employees (emp_id)
);
----------------------------------------------------------------------------------------------------

-- Table rooms, holds the information about rooms of a hotel
CREATE TABLE IF NOT EXISTS rooms (
    room_id BIGSERIAL NOT NULL PRIMARY KEY,
    room_number INT NOT NULL,
    hotel_hotel_id BIGINT NOT NULL REFERENCES hotel (hotel_id),
    room_room_category_id BIGINT NOT NULL REFERENCES room_categories (room_category_id),
    booking_booking_id BIGINT REFERENCES bookings (booking_id)
);
----------------------------------------------------------------------------------------------------

-- Table services, holds the information about the services that a hotel offers
CREATE TABLE IF NOT EXISTS services (
    service_id BIGSERIAL NOT NULL PRIMARY KEY,
    service_name VARCHAR(50) NOT NULL,
    cost MONEY NOT NULL
);

-- Table services_provided, estabishes relation between hotel and services
CREATE TABLE IF NOT EXISTS services_provided (
    service_service_id BIGINT NOT NULL REFERENCES services (service_id),
    hotel_hotel_id BIGINT NOT NULL REFERENCES hotel (hotel_id)
);
----------------------------------------------------------------------------------------------------

-- Table services_used, establishes relation between bookings and services
CREATE TABLE IF NOT EXISTS services_used (
    service_service_id BIGINT NOT NULL REFERENCES services (service_id),
    booking_booking_id BIGINT NOT NULL REFERENCES bookings (booking_id)
);