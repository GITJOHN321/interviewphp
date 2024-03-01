
CREATE TABLE headquarters (
    headquarters_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(100),
    address VARCHAR(100)
);

-- Inserts for the table "venues"
INSERT INTO headquarters (name, city, address) VALUES ('Olympic Stadium', 'Bogotá', 'Carrera 45 # 67-89');
INSERT INTO headquarters (name, city, address) VALUES ('Sports Coliseum', 'Medellín', 'Calle 23 # 56-78');
INSERT INTO headquarters (name, city, address) VALUES ('Municipal Sports Center', 'Cali', 'Avenida 10 # 20-30');
INSERT INTO headquarters (name, city, address) VALUES ('Sports Complex', 'Barranquilla', 'Calle 34 # 12-45');
INSERT INTO headquarters (name, city, address) VALUES ('National Stadium', 'Bogotá', 'Avenida # 123');

-- Create table "sports"
CREATE TABLE sports (
    sport_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    headquarters_id INT,
    FOREIGN KEY (headquarters_id) REFERENCES headquarters(headquarters_id)
);

-- Inserts for the table "sports"
INSERT INTO sports (name, headquarters_id) VALUES ('Athletics', 1); -- Associated with Olympic Stadium in Bogotá
INSERT INTO sports (name, headquarters_id) VALUES ('Cycling', 2); -- Associated with Sports Coliseum in Medellín
INSERT INTO sports (name, headquarters_id) VALUES ('Gymnastics', 3); -- Associated with Municipal Sports Center in Cali
INSERT INTO sports (name, headquarters_id) VALUES ('Boxing', 4); -- Associated with Sports Complex in Barranquilla
INSERT INTO sports (name, headquarters_id) VALUES ('Hockey', 5); -- Associated with National Stadium in Bogotá
INSERT INTO sports (name, headquarters_id) VALUES ('Handball', 1); -- Associated with Olympic Stadium in Bogotá
INSERT INTO sports (name, headquarters_id) VALUES ('Fencing', 2); -- Associated with Sports Coliseum in Medellín
INSERT INTO sports (name, headquarters_id) VALUES ('Judo', 3); -- Associated with Municipal Sports Center in Cali
INSERT INTO sports (name, headquarters_id) VALUES ('Rowing', 4); -- Associated with Sports Complex in Barranquilla
INSERT INTO sports (name, headquarters_id) VALUES ('Taekwondo', 5);

-- Create table "athletes"
CREATE TABLE athletes (
    athlete_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10)
);

-- Inserts for the table "athletes"
INSERT INTO athletes (name, age, gender) VALUES ('Juan Pérez', 25, 'Male');
INSERT INTO athletes (name, age, gender) VALUES ('María Gómez', 30, 'Female');
INSERT INTO athletes (name, age, gender) VALUES ('Carlos Rodríguez', 22, 'Male');
INSERT INTO athletes (name, age, gender) VALUES ('Laura Martínez', 28, 'Female');
INSERT INTO athletes (name, age, gender) VALUES ('Pedro López', 27, 'Male');
INSERT INTO athletes (name, age, gender) VALUES ('Ana Ramírez', 24, 'Female');
INSERT INTO athletes (name, age, gender) VALUES ('Diego Hernández', 29, 'Male');
INSERT INTO athletes (name, age, gender) VALUES ('Sofía Pérez', 26, 'Female');
INSERT INTO athletes (name, age, gender) VALUES ('Andrés Castro', 23, 'Male');
INSERT INTO athletes (name, age, gender) VALUES ('Luisa Gutiérrez', 31, 'Female');
INSERT INTO athletes (name, age, gender) VALUES ('Gabriel Ramírez', 25, 'Male');
INSERT INTO athletes (name, age, gender) VALUES ('Daniela Martínez', 27, 'Female');
INSERT INTO athletes (name, age, gender) VALUES ('Javier Pérez', 28, 'Male');
INSERT INTO athletes (name, age, gender) VALUES ('Elena Sánchez', 29, 'Female');
INSERT INTO athletes (name, age, gender) VALUES ('Miguel González', 26, 'Male');
INSERT INTO athletes (name, age, gender) VALUES ('Valentina Torres', 24, 'Female');
INSERT INTO athletes (name, age, gender) VALUES ('Roberto López', 30, 'Male');
INSERT INTO athletes (name, age, gender) VALUES ('Camila Rodríguez', 27, 'Female');
INSERT INTO athletes (name, age, gender) VALUES ('Mario Gómez', 28, 'Male');
INSERT INTO athletes (name, age, gender) VALUES ('Natalia Castro', 25, 'Female');

-- Create table "sports_athletes"
CREATE TABLE sports_athletes (
    sport_id INT,
    athlete_id INT,
    PRIMARY KEY (sport_id, athlete_id),
    FOREIGN KEY (sport_id) REFERENCES sports(sport_id),
    FOREIGN KEY (athlete_id) REFERENCES athletes(athlete_id)
);

INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (1, 1); -- Juan Pérez participates in Football
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (2, 2); -- María Gómez participates in Athletics
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (3, 3); -- Carlos Rodríguez participates in Swimming
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (4, 4); -- Laura Martínez participates in Tennis
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (5, 5); -- Pedro López participates in Volleyball
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (6, 6); -- Ana Ramírez participates in Football
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (7, 7); -- Diego Hernández participates in Athletics
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (8, 8); -- Sofía Pérez participates in Swimming
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (9, 9); -- Andrés Castro participates in Tennis
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (10, 10); -- Luisa Gutiérrez participates in Volleyball
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (1, 11); -- Gabriel Ramírez participates in Football
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (2, 12); -- Daniela Martínez participates in Athletics
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (3, 13); -- Javier Pérez participates in Swimming
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (4, 14); -- Elena Sánchez participates in Tennis
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (5, 15); -- Miguel González participates in Volleyball
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (6, 16); -- Valentina Torres participates in Football
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (7, 17); -- Roberto López participates in Athletics
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (8, 18); -- Camila Rodríguez participates in Swimming
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (9, 19); -- Mario Gómez participates in Tennis
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (10, 20);
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (2, 1);

INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (10, 1); -- Juan Pérez participates in Football
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (9, 2); -- María Gómez participates in Athletics
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (8, 3); -- Carlos Rodríguez participates in Swimming
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (7, 4); -- Laura Martínez participates in Tennis
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (6, 5); -- Pedro López participates in Volleyball
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (5, 6); -- Ana Ramírez participates in Football
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (4, 7); -- Diego Hernández participates in Athletics
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (3, 8); -- Sofía Pérez participates in Swimming
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (2, 9); -- Andrés Castro participates in Tennis
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (1, 10); -- Luisa Gutiérrez participates in Volleyball
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (10, 11); -- Gabriel Ramírez participates in Football
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (9, 12); -- Daniela Martínez participates in Athletics
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (8, 13); -- Javier Pérez participates in Swimming
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (7, 14); -- Elena Sánchez participates in Tennis
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (6, 15); -- Miguel González participates in Volleyball
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (5, 16); -- Valentina Torres participates in Football
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (4, 17); -- Roberto López participates in Athletics
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (3, 18); -- Camila Rodríguez participates in Swimming
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (2, 19); -- Mario Gómez participates in Tennis
INSERT INTO sports_athletes (sport_id, athlete_id) VALUES (1, 20);

