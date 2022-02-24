# The comments indicate the expected result of your query

def names_and_masses_of_red_dwarf_stars
    # Luyten's Star	51710.0
    # TRAPPIST-1	78.0
    SELECT name,mass FROM stars WHERE star_type = "red dwarf";
end


def names_of_hostile_planets
    # Mars
    # Neptune
    # b
    # d
    # b
    # e
    # b
    # c
    # f
    # d
    # g
    SELECT planets.name FROM planets WHERE hostile > 0;
end

def all_data_about_fastest_spaceship
    #4	Spacecruiser	silver	893748.0	10
    SELECT id,name, color, MAX (spaceships.speed), planet_id FROM spaceships;
    # SELECT BY (spaceships.speeds) DESC
    # LIMIT 1;

def spaceships_names_and_name_of_planet_they_belong_to
    # Her Majesty's	Earth
    # Galactica	b
    # Imperial	e
    # Spacecruiser	e
    SELECT DISTINCT spaceships.name AS spaceships_name, planets.name AS planet_name FROM spaceships
    INNER JOIN planets ON planet_id = spaceships.planet_id
end

def names_and_experience_of_astronauts_on_spaceship_galactica
    # Meggy	17
    # Troy	21
    SELECT astronauts.name, astronauts.experience FROM astronauts
    INNER JOIN spaceships ON spaceships.id = astronauts.spaceship_id
    WHERE spaceships.name = "Galactica";
end



def order_planets_based_on_astronauts_count_and_display_the_count_along_with_the_planet_name
    # Earth	2
    # Neptune	2
    # b	2
    # e	2
    SELECT planets.name AS planet_name, COUNT(spaceships.planet_id), stars.name AS star_name FROM spaceships
    INNER JOIN planets ON planets.id = spaceships.planet_id
    INNER JOIN planetary_systems ON planetary_systems.id = planets.planetary_system_id
    INNER JOIN stars ON planetary_systems.id = stars.planetary_system_id
    GROUP BY planets.id
end

def order_planets_based_on_count_of_astronauts_over_60_and_display_all_data_for_the_planets
    # 1	Earth	6.0	24.0	365.0	91.0	0.02	1	0	1
    # 3	Neptune	0.7	16.0	60225.0	27813.0	0.009	1	1	1
    # 7	e	0.69	1.0	542.0	60225.0	0.4	3	0	1
    SELECT planets.*, COUNT(astronauts.id) AS total_count FROM planets
    INNER JOIN astronauts ON planets.id = astronauts.planet_id
    WHERE astronauts.age > 60
    GROUP BY planets.id
    ORDER BY total_count
end


def planet_name_and_spaceships_count_by_planet_and_star_name
    # Earth	1	Sun
    # b	1	TRAPPIST-1
    # e	1	TRAPPIST-1
    # e	1	Luyten's Star
    SELECT planets.name AS planet_name, COUNT(spaceships.planet_id), stars.name AS star_name FROM spaceships
    INNER JOIN planets ON planets.id = spaceships.planet_id
    INNER JOIN planetary_systems ON planetary_systems.id = planets.planetary_system_id
    INNER JOIN stars ON planetary_systems.id = stars.planetary_system_id
    GROUP BY spaceships.id
    ORDER BY planets.name;
end

def name_and_age_of_astronauts_from_planet_e_with_age_under_50
    # Laura	29
    SELECT astronauts.name, astronauts.age FROM astronauts
    INNER JOIN planets ON planets.id = astronauts.planet_id
    WHERE planets.name = "e" AND astronauts.age < 50;
end

def planet_name_and_count_of_astronauts_in_spaceships_where_planet_id_is_3
     # Neptune	2
     SELECT planets.name AS planet_name, COUNT(astronauts.planet_id) FROM planets
    INNER JOIN astronauts ON planets.id = astronauts.planet_id
    WHERE planet_id = 3;
end

