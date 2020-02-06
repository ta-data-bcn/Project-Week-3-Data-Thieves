import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import csv
import hashlib
import json
import random
from Marvel_Functions import *

if __name__ == '__main__':
    print('It’s good to meet you. I’m a huge fan of the way you lose control and turn into an enormous green rage monster.')
    # Acquisition // The path is always ../data
    stats_csv = acquire_csv('charcters_stats.csv')
    info_csv = acquire_csv('marvel_characters_info.csv')

    list_of_characters = acquire_api()

    # Wrangling
    final_df = wrangling(list_of_characters, stats_csv, info_csv)
    final_df.to_csv('CSVs/marvel_cleaned.csv', sep = ';', index = False)

    # Analysis
    final_df.describe().to_csv('CSVs/marvel_describe.csv')
    
    # Doing a multi-graph figure
    graphing(final_df, 'marvel_describe')

    keep_on = True
    while keep_on:
        dict_test = {"good": 0 , "bad": 1, "neutral" : 0 , "male": 0 , "female": 1, 'all': 2 }
        gender, alignment = ask_input(dict_test)
        selected_df = df_selection(final_df, dict_test[gender], dict_test[alignment])        
        graphing(selected_df, 'marvel_'+alignment+'_'+gender)

        print(selected_df.describe())
    # Reporting
        number = int(input('How many rows in the table? '))
        best = best_in(selected_df, number)

        # marvel_corr = sns.heatmap(selected_df.corr(), annot=True)
        best.to_csv(f'CSVs/marvel_{alignment}_{gender}_{number}.csv')
        dictyn = {'y':True, 'n':False}
        keep_on = dictyn[input('Do you want to look for another input? (y/n) ')]
        if keep_on:
            print('I can do this all day.')
    print('Thanks for using this app. Excelsior!')
