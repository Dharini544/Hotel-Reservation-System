create database Hotel_Reservation;
use hotel_reservation;
CREATE TABLE room_type(
 room_type int PRIMARY KEY,
 room_desc VARCHAR(10000)
 );
 CREATE TABLE hotel(
 hotel_id VARCHAR(255) PRIMARY KEY,
 hotel_name VARCHAR(255) NOT NULL,
 hotel_grade int NOT NULL,
 hotel_location VARCHAR(255),
 hotel_phone VARCHAR(255));
CREATE TABLE room(
 room_id int PRIMARY KEY,
 room_price int NOT NULL,
 room_check VARCHAR(255),
 room_type int NOT NULL,
 hotel_id VARCHAR(5) NOT NULL,
 foreign key (room_type) references room_type (room_type) on delete cascade,
 FOREIGN KEY (hotel_id) REFERENCES hotel (hotel_id) ON DELETE CASCADE
 );
 CREATE TABLE Customer(
CustomerName VARCHAR(255),
CustomerEmail VARCHAR(255),
CustomerPassword VARCHAR(255)
 );
create TABLE reserve(
 reserve_id int NOT NULL AUTO_INCREMENT primary key,
 hotel_id VARCHAR(5) NOT NULL,
 room_id int NOT NULL,
 people_count int,
 stay_period int,
 reserve_checkIn date,
 FOREIGN KEY (room_id) REFERENCES room (room_id) ON DELETE CASCADE,
 FOREIGN KEY (hotel_id) REFERENCES hotel (hotel_id) ON DELETE CASCADE
 );