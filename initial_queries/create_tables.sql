CREATE TABLE planets (id INTEGER PRIMARY KEY, name TEXT, mass REAL, rotation REAL, revolution REAL, distance_from_star REAL, eccentricity REAL, planetary_system_id INTEGER, hostile INTEGER);
CREATE TABLE planetary_systems (id INTEGER PRIMARY KEY, name TEXT, planet_count INTEGER);
CREATE TABLE stars (id INTEGER PRIMARY KEY, name TEXT, mass REAL, avg_temperature REAL, star_type TEXT, planetary_system_id INTEGER);
CREATE TABLE spaceships (id INTEGER PRIMARY KEY, name TEXT, color TEXT, speed REAL, planet_id INTEGER);
CREATE TABLE astronauts (id INTEGER PRIMARY KEY, name TEXT, age INTEGER, experience INTEGER, spaceship_id INTEGER, planet_id INTEGER);