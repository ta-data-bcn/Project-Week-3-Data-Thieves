import pandas as pd
import numpy as np
from DBConnector import DBConnector
import re


if __name__ == '__main__':
    db = DBConnector('connection/credentials.txt')
    """
    query = 'SELECT f.title, p.name as planet, p.diameter, p.population FROM films f LEFT JOIN planets p ON '
    query += 'f.planets like CONCAT("%%",p.name,"%%") ORDER BY f.id, p.name'
    planets_df = db.read_sql(query)
    #print(df)
    #planets_df = pd.read_csv('csv/planets.csv', sep=',')
    #print(planets_df.columns)
    planets_df['surface'] = planets_df.diameter * np.pi
    #print(planets_df.surface)
    planets_df['density'] = planets_df.surface / planets_df.population
    print(planets_df.sort_values(by='density', ascending=False))
    
    # search mean of race by planets
    query = 'SELECT species, homeworld, height, mass FROM characters'
    species_df = db.read_sql(query)

    #species_df.mass = pd.to_numeric(species_df.mass)
    print(species_df.dtypes)
    print(species_df.groupby(by=['species','homeworld']).mean(numeric_only=True))
    species_df.groupby(by=['species','homeworld']).mean(numeric_only=True).to_csv('csv/chars_height_mass_mean.csv', sep=';')
    """
    # search percent eye colors
    query = 'SELECT name, eye_colors, hair_colors, skin_colors, homeworld FROM species'
    species_df = db.read_sql(query)
    d_eyes = []
    d_hairs = []
    d_skins = []
    for index, row in species_df.iterrows():
        eyes = []
        hairs = []
        skins = []
        if row['eye_colors']:
            eyes = row['eye_colors'].split(',')
        if row['hair_colors']:
            hairs = row['hair_colors'].split(',')
        if row['skin_colors']:
            skins = row['skin_colors'].split(',')
        # eyes
        for eye in eyes:
            d_eyes.append({
                'name':row['name'],
                'homeworld':row['homeworld'],
                'eye_colors':eye,
            })
        # hairs
        for hair in hairs:
            d_hairs.append({
                'name':row['name'],
                'homeworld':row['homeworld'],
                'hair_colors':hair,
            })
        # skins
        for skin in skins:
            d_skins.append({
                'name':row['name'],
                'homeworld':row['homeworld'],
                'skin_colors':skin
            })

    df_eyes = pd.DataFrame(d_eyes)
    df_hairs = pd.DataFrame(d_hairs)
    df_skins = pd.DataFrame(d_skins)
    df_eyes.to_csv('csv/species_eye_dist.csv', sep=';')
    df_hairs.to_csv('csv/species_hair_dist.csv', sep=';')
    df_skins.to_csv('csv/species_skins_dist.csv', sep=';')
    