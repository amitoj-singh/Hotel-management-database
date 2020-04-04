-- data for guest table
INSERT INTO guest (name, govt_id_number, address, number, email_id) VALUES ('Marj', '4405317290379842', '233 Quincy Lane', '2081145731', 'mleadley0@tripadvisor.com');
INSERT INTO guest (name, govt_id_number, address, number, email_id) VALUES ('Venita', '30280254554191', '696 Raven Trail', '2994976269', 'vfrean1@washingtonpost.com');
INSERT INTO guest (name, govt_id_number, address, number, email_id) VALUES ('Vinny', '3557756689657953', '3 Crowley Trail', '5698117454', null);
INSERT INTO guest (name, govt_id_number, address, number, email_id) VALUES ('Teresita', '346698114153418', '60 Westerfield Road', '1195410204', 'tcoldbathe3@reference.com');
INSERT INTO guest (name, govt_id_number, address, number, email_id) VALUES ('Edithe', '3566777089618162', '31300 Northridge Alley', '8181901770', 'edemogeot4@yolasite.com');
INSERT INTO guest (name, govt_id_number, address, number, email_id) VALUES ('Dayna', '3566560230144951', '54 Park Meadow Drive', '6295625614', null);


-- data for hotel table
INSERT INTO hotel (name , address, number, email_id, rooms_capacity) VALUES ('Espinas', 'Delhi India', '9856455220', 'espinas_palace@gmail.com', '20');
INSERT INTO hotel (name , address, number, email_id, rooms_capacity) VALUES ('Royal park', 'Chandigarh India', '9856456548', 'royal_park@hotel.com', '10');


-- data for department table
INSERT INTO department (name, description) VALUES ('Reception', 'Front office, bookings');
INSERT INTO department (name, description) VALUES ('Housekeeping', 'Room services and cleaning');
INSERT INTO department (name, description) VALUES ('Kitchen', 'Food production');
INSERT INTO department (name, description) VALUES ('Security', 'Overall security');
INSERT INTO department (name, description) VALUES ('IT', 'support for IT systems and computer networks');


-- data for hotel_dept table
INSERT INTO hotel_dept (hotel_hotel_id, dept_dept_id) VALUES ('1', '1');
INSERT INTO hotel_dept (hotel_hotel_id, dept_dept_id) VALUES ('1', '2');
INSERT INTO hotel_dept (hotel_hotel_id, dept_dept_id) VALUES ('1', '3');
INSERT INTO hotel_dept (hotel_hotel_id, dept_dept_id) VALUES ('1', '5');
INSERT INTO hotel_dept (hotel_hotel_id, dept_dept_id) VALUES ('2', '1');
INSERT INTO hotel_dept (hotel_hotel_id, dept_dept_id) VALUES ('2', '2');
INSERT INTO hotel_dept (hotel_hotel_id, dept_dept_id) VALUES ('2', '4');
INSERT INTO hotel_dept (hotel_hotel_id, dept_dept_id) VALUES ('2', '5');


-- data for employees table
INSERT INTO employees (name, number, email_id, salary, joining_date, dept_dept_id, hotel_hotel_id) 
VALUES
    ('Chase Patillo', '5502081885', 'cpatillo0@about.me', '19359.62', '24/06/2018', 1, 1),
    ('Alene Whitlow', '9208277631', 'awhitlow1@barnesandnoble.com', '13528.39', '21/10/2018', 1, 1),
    ('Bella Zettoi', '4753099350', null, '13350.79', '11/10/2014', 1, 1),
    ('Noelle Bau', '6587722822', 'nbau3@bing.com', '16682.69', '29/04/2014', 2, 1),
    ('Chicky Pinchon', '1754277268', 'cpinchon4@delicious.com', '16443.02', '31/10/2018', 2, 1),
    ('Roma O''Hanlon', '0434310743', null, '12997.52', '01/05/2019', 2, 1),
    ('Ana Jerschke', '2098233825', 'ajerschke6@themeforest.net', '15730.88', '22/05/2015', 2, 1),
    ('Graig Clutten', '7221201838', 'gclutten7@bigcartel.com', '10248.02', '24/10/2016', 3, 1),
    ('Inger Farlowe', '9897270418', 'ifarlowe8@cam.ac.uk', '14696.12', '10/05/2018', 3, 1),
    ('Felipa Matieu', '1557318948', 'fmatieu9@blogger.com', '14283.42', '11/12/2017', 3, 1),
    ('Burt Darcy', '3614874109', 'bdarcya@discovery.com', '15729.23', '14/09/2018', 5, 1),
    ('Ivy Kivits', '6755443433', null, '17854.78', '06/12/2014', 5, 1),
    ('Meridith Garlicke', '1712015478', 'mgarlickec@t-online.de', '15749.45', '19/06/2016', 5, 1),
    ('Ivy Barwise', '3071007256', 'ibarwised@meetup.com', '11521.92', '17/05/2015', 1, 2),
    ('Meara Daveley', '0977851672', 'mdaveleye@smh.com.au', '18726.93', '15/01/2017', 1, 2),
    ('Jud Izachik', '0303056487', 'jizachikf@deliciousdays.com', '11197.21', '16/03/2016', 2, 2),
    ('Levey Berryann', '7716838156', 'lberryanng@seattletimes.com', '11037.03', '08/01/2016', 2, 2),
    ('Ethelind Scrivinor', '6013747164', 'escrivinorh@sfgate.com', '16679.93', '05/06/2018', 4, 2),
    ('Udall Minto', '1400981034', 'umintoi@independent.co.uk', '13948.44', '05/10/2014', 4, 2),
    ('Lilli Bootherstone', '9551523741', 'lbootherstonej@washingtonpost.com', '15350.24', '04/05/2017', 5, 2);


-- data for services table
INSERT INTO services (service_name, cost) 
VALUES
    ('wifi', 10),
    ('gym', 50),
    ('coffee/tea', 20),
    ('laudry', 50),
    ('meeting room', 500),
    ('bar', 100),
    ('lounge', 100),
    ('meal', 200);


-- data for services_provided table
INSERT INTO services_provided (service_service_id, hotel_hotel_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (8, 1),
    (1, 2),
    (3, 2),
    (4, 2),
    (5, 2),
    (6, 2),
    (7, 2);


-- data for bookings table
INSERT INTO bookings (check_in_date, check_out_date, guest_guest_id, hotel_hotel_id, employee_id)
VALUES
    ('2020-01-20', '2020-01-21', 1, 1, 2),
    ('2020-01-19', '2020-01-21', 3, 1, 3),
    ('2020-01-20', '2020-01-23', 4, 1, 3),
    ('2020-01-21', '2020-01-22', 5, 1, 1),
    ('2020-01-20', '2020-01-25', 2, 2, 14),
    ('2020-01-21', '2020-01-23', 6, 2, 15);


-- data for services_used table
INSERT INTO services_used (service_service_id, booking_booking_id)
VALUES
    (1, 1),
    (8, 1),
    (3, 1),
    (2, 2),
    (3, 2),
    (8, 2),
    (4, 2),
    (8, 3),
    (8, 3),
    (2, 4),
    (1, 4),
    (3, 4),
    (3, 5),
    (5, 5),
    (6, 5),
    (1, 6),
    (4, 6),
    (7, 6),
    (7, 6);


-- data for room_categories table
INSERT INTO room_categories (name, description, cost)
VALUES
    ('Basic', 'Bed room and attached bath', '1500'),
    ('Luxory', 'Basic + window view + hotel facilities', '2500'),
    ('Premium', 'Luxory + spacious rooms + free room services', '3500'),
    ('Grand Magic', 'Premium + top floor + free meals', '5000');


-- data for rooms table 
INSERT INTO rooms (room_number, hotel_hotel_id, room_room_category_id, booking_booking_id)
VALUES
    ('101', '1', '1', NULL),
    ('102', '1', '1', '1'),
    ('103', '1', '1', '2'),
    ('104', '1', '2', '2'),
    ('105', '1', '2', NULL),
    ('201', '1', '1', NULL),
    ('202', '1', '1', NULL),
    ('203', '1', '2', NULL),
    ('204', '1', '2', NULL),
    ('205', '1', '3', NULL),
    ('301', '1', '2', NULL),
    ('302', '1', '2', NULL),
    ('303', '1', '2', NULL),
    ('304', '1', '3', '3'),
    ('305', '1', '3', '3'),
    ('401', '1', '3', NULL),
    ('402', '1', '3', NULL),
    ('403', '1', '4', '4'),
    ('404', '1', '4', NULL),
    ('405', '1', '4', NULL),
    ('101', '2', '2', '5'),
    ('102', '2', '2', '5'),
    ('103', '2', '1', '5'),
    ('104', '2', '1', NULL),
    ('105', '2', '2', NULL),
    ('201', '2', '3', '5'),
    ('202', '2', '3', '6'),
    ('203', '2', '1', NULL),
    ('204', '2', '2', '6'),
    ('205', '2', '2', NULL);