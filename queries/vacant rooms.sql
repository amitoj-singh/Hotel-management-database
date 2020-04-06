-- Display the number of rooms vacant of all the room categories and their cost in a particular hotel
SELECT room_categories.name AS category, room_categories.description, room_categories.cost, count(*) AS num_of_rooms
FROM room_categories
INNER JOIN rooms
ON room_categories.room_category_id = rooms.room_room_category_id
WHERE hotel_hotel_id = 1 and booking_booking_id is NULL
GROUP BY room_categories.name, room_categories.room_category_id
ORDER BY room_categories.room_category_id;