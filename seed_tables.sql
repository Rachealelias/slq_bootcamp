/* One really handy gem when creting data to seed the databse is the 'faker' gem. Check it out here: https://github.com/faker-ruby/faker */

INSERT INTO planetary_systems (name, planet_count) VALUES ("Solar System", 8);
INSERT INTO planetary_systems (name, planet_count) VALUES ("Luyten's Star System", 4);
INSERT INTO planetary_systems (name, planet_count) VALUES ("TRAPPIST-1 System", 7);
INSERT INTO planetary_systems (name, planet_count) VALUES ("HD 219134 System", 6);

INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("Earth", 6, 24, 365, 91, 0.02, 1, 0);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("Mars", 0.7, 24.6, 687, 139, 0.09, 1, 1);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("Neptune", 0.7, 16, 60225, 27813, 0.009, 1, 1);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("b", 1.18, 0, 4.7, 2314, 0.09, 3, 1);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("c", 2.89, 0.7, 81.6, 27140, 0.3, 3, 0);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("d", 0.38, 0.3, 413, 33918, 0.01, 3, 1);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("e", 0.69, 1, 542, 60225, 0.4, 3, 0);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("b", 1, 0.4, 4, 451, 0.004, 2, 1);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("d", 9, 10, 6, 3006, 0.005, 2, 0);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("e", 9, 3, 9, 6025, 0.01, 2, 1);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("b", 4.74, 0, 3092, 780, 0, 4, 1);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("c", 4.36, 0.3, 6764, 2100, 0.062, 4, 1);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("f", 7.3, 5, 22717, 3025, 0.148, 4, 1);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("d", 16.17, 9, 46.859, 6025, 0.018, 4, 1);
INSERT INTO planets (name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile) VALUES ("g", 11, 2, 94.2, 19824, 0, 4, 1);

INSERT INTO stars (name, mass, avg_temperature, star_type, planetary_system_id) VALUES ("Sun", 198, 5778, "yellow dwarf", 1);
INSERT INTO stars (name, mass, avg_temperature, star_type, planetary_system_id) VALUES ("Luyten's Star", 51710, 3150, "red dwarf", 2);
INSERT INTO stars (name, mass, avg_temperature, star_type, planetary_system_id) VALUES ("TRAPPIST-1", 78, 2550, "red dwarf", 3);
INSERT INTO stars (name, mass, avg_temperature, star_type, planetary_system_id) VALUES ("HD 219134", 30, 1015, "K-dwarf", 4);

INSERT INTO spaceships (name, color, speed, planet_id) VALUES ("Her Majesty's", "silver", 152437, 1);
INSERT INTO spaceships (name, color, speed, planet_id) VALUES ("Galactica", "red", 9913, 4);
INSERT INTO spaceships (name, color, speed, planet_id) VALUES ("Imperial", "gold", 62638, 7);
INSERT INTO spaceships (name, color, speed, planet_id) VALUES ("Spacecruiser", "silver", 893748, 10);

INSERT INTO astronauts (name, age, experience, spaceship_id, planet_id) VALUES ("Mark", 78, 33, 1, 1);
INSERT INTO astronauts (name, age, experience, spaceship_id, planet_id) VALUES ("Meggy", 45, 17, 2, 4);
INSERT INTO astronauts (name, age, experience, spaceship_id, planet_id) VALUES ("Troy", 54, 21, 2, 4);
INSERT INTO astronauts (name, age, experience, spaceship_id, planet_id) VALUES ("Tom", 32, 8, 1, 1);
INSERT INTO astronauts (name, age, experience, spaceship_id, planet_id) VALUES ("Luke", 89, 48, 3, 7);
INSERT INTO astronauts (name, age, experience, spaceship_id, planet_id) VALUES ("Laura", 29, 6, 3, 7);
INSERT INTO astronauts (name, age, experience, spaceship_id, planet_id) VALUES ("Martha", 62, 25, 4, 3);
INSERT INTO astronauts (name, age, experience, spaceship_id, planet_id) VALUES ("Gwen", 25, 2, 4, 3);
