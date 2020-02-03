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
    data_csv = acquire_csv()
    list_of_characters = acquire_api()
#    print(list_of_characters)

    # Wrangling
    df_marvel = extract_names_ids(list_of_characters)
    print(df_marvel)
    #df_marvel = pd.DataFrame(names, columns =['Name'])

    """ # Analysis
    analysed = analyze(filtered)"""
    # Reporting
    df_marvel.to_csv("marvel_characters.csv")
    """ save_report(report, current_year) """



    # clean csv file