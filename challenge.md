# Challenge

## Welcome Cosmos lover

You are passionate about the universe and need to write an essay on planetary systems. In order to do so you need to retrieve some essential information from a database.
The databse will have to be created along with its tables, and seeded with all the data we will need for our essay.
In order to start gathering your data, you will first have to follow the instructions inside the README.md file to get setup.

### The tables inside our database are the following

1. planetary_systems: id, name, planet_count

2. planets: id, name, mass, rotation, revolution, distance_from_star, eccentricity, planetary_system_id, hostile

3. stars: id, name, mass, avg_temperature, star_type, planetary_system_id

4. spaceships: id, name, color, speed, planet_id

5. austronauts: id, name, age, experience, spaceship_id, planet_id

### Here is the list of fata you will have to collect

- return the names and masses of all the stars whose type is "red dwarfs"
- return the names of the hostile planets
- return all of the info about the fastest spaceship
- return a list of all spaceships names and the planet they belong to
- return a list of all astronauts aboard the spaceship named 'Galactica'
- return the planet name, the count of all spaceships from each planet, and the name of the star of their planetay system
- order the planets based on how many astronauts are from that planet
- order the planets based on how many astronauts over the age of 60 are from that planet
- return the planet name, the count of all spaceships from each planet, and the name of the star of their planetay system
- return the planet name and count of astronauts of all spaceships where the planet_id is 3
