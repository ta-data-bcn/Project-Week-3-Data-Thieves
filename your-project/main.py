import pandas as pd
import numpy as np
import csv
import hashlib
import json
import random
from Marvel_Functions import *

if __name__ == '__main__':
    print('hello, world!')
    # Acquisition
    stats_csv = acquire_csv('charcters_stats.csv')
    info_csv = acquire_csv('marvel_characters_info.csv')
    list_of_characters = acquire_api()

    # Wrangling
    final_df = wrangling(list_of_characters, stats_csv, info_csv)
    #print(len(final_df))

    # Analysis
    keep_on = True
    while keep_on:
        dict_test = {"good": 0 , "bad": 1, "neutral" : 0 , "male": 0 , "female": 1, 'all': 2 }
        gender, alignment = ask_input(dict_test)
        selected_df = df_selection(final_df, dict_test[gender], dict_test[alignment])

    # Reporting
        number = int(input('How many rows in the table? '))
        best = best_in(selected_df, number)

        means_tot = mean_df(selected_df)
        median_tot = median_df(selected_df)
        selected_df.corr()

        # marvel_corr = sns.heatmap(selected_df.corr(), annot=True)
        best.to_csv(f'marvel_{alignment}_{gender}.csv')
        dictyn = {'y':True, 'n':False}
        keep_on = dictyn[input('Do you want to look for another input? (y/n) ')]
