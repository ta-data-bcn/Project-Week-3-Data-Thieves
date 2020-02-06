import pandas as pd
import requests

if __name__ == '__main__':
    films = pd.read_csv('data/csv/films.csv', sep=';', index_col=0)

    # search for species
    film_species = {}
    for species_lst, title in zip(films.species, films.title):
        species_lst = species_lst.replace('\'', '').replace('[', '').replace(']', '')
        species_lst = species_lst.split(',')
        specie_names = []
        print('one more row...', species_lst[0])
        for specie in species_lst:
            try:
                res = requests.get(specie)
                if res.status_code == 200:
                    specie_names.append(res.json()['name'])
            except:
                print('ERROR >> ' + specie)
        print('done!')
        film_species[title] = specie_names.copy()

    print('out of loop for!')
    for k,v in film_species.items():
        films.species[films.title == k] = ','.join(v)

    print(films.species)


    # search for vehicles
    film_vehicles = {}
    for vehicles_lst, title in zip(films.vehicles, films.title):
        vehicles_lst = vehicles_lst.replace('\'', '').replace('[', '').replace(']', '')
        vehicles_lst = vehicles_lst.split(',')
        vehicle_names = []
        print('one more row...', vehicles_lst[0])
        for vehicle in vehicles_lst:
            try:
                res = requests.get(vehicle)
                if res.status_code == 200:
                    vehicle_names.append(res.json()['name'])
            except:
                print('ERROR >> ' + vehicle)
        print('done!')
        film_vehicles[title] = vehicle_names.copy()

    print('out of loop for!')
    for k,v in film_vehicles.items():
        films.vehicles[films.title == k] = ','.join(v)

    print(films.vehicles)

    # search for starships
    film_starships = {}
    for starships_lst, title in zip(films.starships, films.title):
        starships_lst = starships_lst.replace('\'', '').replace('[', '').replace(']', '')
        starships_lst = starships_lst.split(',')
        starship_names = []
        print('one more row...', starships_lst[0])
        for starship in starships_lst:
            res = requests.get(starship)
            if res.status_code == 200:
                starship_names.append(res.json()['name'])
        print('done!')
        film_starships[title] = starship_names.copy()

    print('out of loop for!')
    for k,v in film_starships.items():
        films.starships[films.title == k] = ','.join(v)

    print(films.starships)

    # search for planets
    film_planets = {}
    for planets_lst, title in zip(films.planets, films.title):
        planets_lst = planets_lst.replace('\'', '').replace('[', '').replace(']', '')
        planets_lst = planets_lst.split(',')
        planet_names = []
        print('one more row...', planets_lst[0])
        for planet in planets_lst:
            res = requests.get(planet)
            if res.status_code == 200:
                planet_names.append(res.json()['name'])
        print('done!')
        film_planets[title] = planet_names.copy()

    print('out of loop for!')
    for k,v in film_planets.items():
        films.planets[films.title == k] = ','.join(v)

    print(films.planets)

    # search for characters

    film_char = {}
    for characters_lst, title in zip(films.characters, films.title):
        characters_lst = characters_lst.replace('\'', '').replace('[', '').replace(']', '')
        characters_lst = characters_lst.split(',')
        char_names = []
        print('one more row...', characters_lst[0])
        for character in characters_lst:
            res = requests.get(character)
            if res.status_code == 200:
                char_names.append(res.json()['name'])
        print('done!')
        film_char[title] = char_names.copy()

    print('out of loop for!')
    for k,v in film_char.items():
        films.characters[films.title == k] = ','.join(v)
    
    print(films.characters)

    films.to_csv('films_full.csv')
