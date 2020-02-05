import pandas as pd
import numpy as np



if __name__ == '__main__':
    planets_df = pd.read_csv('csv/planets.csv', sep=',')
    #print(planets_df.columns)
    planets_df['surface'] = planets_df.diameter * np.pi
    #print(planets_df.surface)
    planets_df['density'] = planets_df.surface / planets_df.population
    print(planets_df.sort_values(by='density', ascending=False).head(10))