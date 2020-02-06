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
    """
    query = 'SELECT species, homeworld, height, mass FROM characters'
    species_df = db.read_sql(query)
    pd.to_numeric(species_df.mass)
    print(species_df.groupby(by=['species','homeworld']).mean(numeric_only=True))