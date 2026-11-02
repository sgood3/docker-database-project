CREATE TABLE USERS (
    user_id INT NOT NULL PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE BUILDING (
    building_id INT NOT NULL PRIMARY KEY,
    building_name VARCHAR(100),
    location VARCHAR(100)    
);

CREATE TABLE CAMPUS_SERVICE (
    service_id INT NOT NULL PRIMARY KEY,
    service_name VARCHAR(100),
    building_id INT NOT NULL,
    description VARCHAR(400),
    FOREIGN KEY (building_id) REFERENCES BUILDING (building_id)
);

CREATE TABLE PARKING_LOT (
    parking_lot_id INT NOT NULL PRIMARY KEY,
    parking_lot_name VARCHAR(100),
    building_id INT NOT NULL,
    capacity INT NOT NULL,
    description VARCHAR(400),
    FOREIGN KEY (building_id) REFERENCES BUILDING (building_id)
);

CREATE TABLE ROOM (
    room_id INT NOT NULL PRIMARY KEY,
    room_num INT NOT NULL,
    floor_num INT NOT NULL,
    building_id INT NOT NULL,
    FOREIGN KEY (building_id) REFERENCES BUILDING (building_id)
);

CREATE TABLE NAVIGATION_ROUTE (
    route_id INT NOT NULL PRIMARY KEY,
    start_building_id INT NOT NULL,
    end_building_id INT NOT NULL,
    distance_miles DECIMAL(10,2),
    estimated_time INT NOT NULL,
    is_accessible VARCHAR(10),
    route_status VARCHAR(200)
);

CREATE TABLE SEARCH_HISTORY (
    service_id INT NOT NULL PRIMARY KEY,
    user_id INT NOT NULL,
    building_id INT NOT NULL,
    search_date DATE NOT NULL,
    FOREIGN KEY (building_id) REFERENCES BUILDING (building_id),
    FOREIGN KEY (user_id) REFERENCES USERS (user_id)
);
