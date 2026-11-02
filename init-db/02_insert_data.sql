INSERT INTO USERS (user_id, full_name, email) VALUES 
(1, 'Alex Rivera', 'arivera@umbc.edu'),
(2, 'Jordan Chen', 'jchen@umbc.edu'),
(3, 'Taylor Swift', 'tswift@umbc.edu'),
(4, 'Morgan Freeman', 'mfreeman@umbc.edu'),
(5, 'Sam Patel', 'spatel@umbc.edu');

INSERT INTO BUILDING (building_id, building_name, location) VALUES 
(101, 'University center', '1000 hilltop cir'),
(102, 'Science & Engineering Hall', 'East Campus Drive'),
(103, 'Main Library', 'Central Campus Mall'),
(104, 'Retrievers Activity Center', '1000 hilltop cir'),
(105, 'Arts & Humanities Center', 'South Campus Way');

INSERT INTO CAMPUS_SERVICE (service_id, service_name, building_id, description) VALUES 
(1, 'IT Help Desk', 101, 'Tech support for campus accounts, Wi-Fi, and software.'),
(2, 'Tutoring & Academic Center', 103, 'Free peer tutoring and writing support services.'),
(3, 'Campus Health Clinic', 101, 'Basic healthcare, vaccinations, and student counseling.'),
(4, 'Equipment Rental Desk', 104, 'Rent camping gear, sports equipment, and bicycles.'),
(5, 'Financial Aid Office', 105, 'Student billing, scholarships, and financial counseling.');

INSERT INTO PARKING_LOT (parking_lot_id, parking_lot_name, building_id, capacity, description) VALUES 
(201, 'Lot A - Student Commuter', 101, 250, 'Permit required. Closest to University Center and Dining hall.'),
(202, 'Lot B - Science & Tech Garage', 102, 400, 'Covered multi-level garage reserved for STEM students and faculty.'),
(203, 'Lot C - Overnight & Resident', 104, 150, 'Resident parking lot located next to Rec Center.'),
(204, 'Lot D - Visitor Pay Station', 103, 75, 'Hourly metered parking directly behind the Main Library.');

INSERT INTO ROOM (room_id, room_num, floor_num, building_id) VALUES 
(301, 101, 1, 101),
(302, 204, 2, 102),
(303, 312, 3, 103),
(304, 115, 1, 104),
(305, 402, 4, 105);

INSERT INTO NAVIGATION_ROUTE (route_id, start_building_id, end_building_id, distance_miles, estimated_time, is_accessible, route_status) VALUES 
(1, 101, 103, 0.25, 5, 'Yes', 'Clear'),
(2, 102, 104, 0.75, 15, 'Yes', 'Under Construction'),
(3, 103, 105, 0.40, 8, 'Yes', 'Clear'),
(4, 101, 102, 0.60, 12, 'No', 'Detour Active');

INSERT INTO SEARCH_HISTORY (service_id, user_id, building_id, search_date) VALUES 
(1, 1, 103, '2026-10-15'),
(2, 2, 101, '2026-10-18'),
(3, 3, 102, '2026-10-20'),
(4, 1, 104, '2026-10-22'),
(5, 4, 105, '2026-10-25');