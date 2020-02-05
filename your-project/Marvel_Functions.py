import pandas as pd
import numpy as np
import csv
import hashlib
import json
import requests
import random
# import seaborn as sns

def acquire_csv(csv_file):
	data_csv = pd.read_csv('../data/'+csv_file)
	return data_csv 

def acquire_api():
    list_of_characters = []
    offset = 0
    url = f'http://gateway.marvel.com/v1/public/characters'
    private_key = "9569164e98f5f2b3a84ce161f501b6e7cda35997"
    public_key = "f4afbc73aea9aa4703bf0ba8e236f72c"
    limit = 100
    ts = "1580473503"
    # hash is a md5 digest of the ts parameter, your private key and your public key (e.g. md5(ts+privateKey+publicKey))
    to_encode = (ts+private_key+public_key)
    h = hashlib.md5(to_encode.encode()).hexdigest()

    for i in range(15):
        p = {
        "apikey": public_key ,
        "ts": ts,
        "hash": h,
        "limit" : limit,
        "offset" : offset
        }
        offset += limit
        
        response = requests.get(url, params=p)
        result = response.json()
        
        list_of_characters.append(result)
    
    return list_of_characters

def extract_names_ids(list_of_characters):
    column_names = []
    column_ids = []

    for i in range(len(list_of_characters)):
        for character in list_of_characters[i]['data']['results']:
            column_names.append(character["name"])
            column_ids.append(character["id"])
    
    df_marvel = pd.DataFrame({'Name': column_names, 'ID': column_ids})
    return df_marvel

def wrangling(df1, stats, info):
    df = extract_names_ids(df1)
    cleaned_ids = df["ID"]
    df_cleaned_ids = pd.DataFrame(cleaned_ids)
    # We eliminated the extension of the name to avoid having repeated characters (e.g. Wolverine, Wolverine (Ultimate), Wolverine (Age of Dragon))
    cleaned_names = df["Name"].apply(lambda x: x.split("(")[0].strip() )

    # we merged both column clean name with id to create match (new dataframe)
    df_cleaned_names = pd.DataFrame(cleaned_names)
    df_cleaned_1 = df_cleaned_names.merge(df_cleaned_ids, left_index=True, right_index=True)

    # we eliminated duplicated values (as before, we removed the extension)
    df_cleaned_2 = df_cleaned_1.drop_duplicates("Name")

    # we merge with the csv df
    df_cleaned_3 = df_cleaned_2.merge(stats, on = "Name")

    # we clean the total values with a value of 5 or less
    Marvel_DF = df_cleaned_3[df_cleaned_3["Total"] > 5] 

    # Time to work with the second csv
    # Taking off useless columns as IDs, Alignment (repeated) Eyecolor or Race from info df
    print(info.columns)
    info_cl  = info.drop(columns = ["Publisher","ID","Alignment","EyeColor", "Race", "HairColor","SkinColor"])

    # Merging dataframe with Marvel_DF
    Marvel_temp = Marvel_DF.merge(info_cl, on = "Name")

    #Converting categorical values to binomial and '-', neutral to 0
    Marvel_characters_info_BI = Marvel_temp.replace({"Alignment": {"good": 0 , "bad": 1, "neutral" : 0 }, 
                                            "Gender": {"Male": 0 , "Female": 1, "-" : 0 }} )

    # converting object to numeric values
    Marvel_characters_info_BI["Gender"] = pd.to_numeric(Marvel_characters_info_BI["Gender"])
    Marvel_characters_info_BI["Alignment"] = pd.to_numeric(Marvel_characters_info_BI["Alignment"])
    Marvel_characters_info_BI["ID"] = Marvel_characters_info_BI["ID"].astype(str)

    return Marvel_characters_info_BI


def ask_input(dict_test):
    gender = str(input("What gender you want to analyse? (male/female/all) ")).lower()
    alignment = str(input("What alignment you want to analyse? (good/bad/all)")).lower()
    if (gender not in dict_test.keys()) or (alignment not in dict_test.keys()):
        print ("Puny human!")
        ask_input()
    return gender, alignment

def df_selection(df, gender, alignment):
    if alignment == 2 and gender == 2:
        test = df
    elif alignment == 2:
        test = df[df.Gender == gender]
    elif gender == 2:
        test = df[df.Alignment == alignment]
    else:
        test = df[(df.Alignment == alignment) & (df.Gender == gender)]
    return test


def best_in(group,number = 10):
    topX = pd.DataFrame()
    for column in group.columns:
        topX[column] = list(group.sort_values(by = column, ascending = False).Name.head(number))
    top = topX.drop(topX.columns[[0,1,2,-3]], axis=1)
    return top

def mean_df(df):
    dict_means = {}
    col = ['Intelligence', 'Strength', 'Speed', 'Durability', 'Power', 'Combat', 'Total','Height', 'Weight']
    for i in col:
        dict_means[i] = df[i].mean()
    return dict_means

def median_df(df):
    dict_medians = {}
    col = ['Intelligence', 'Strength', 'Speed', 'Durability', 'Power', 'Combat', 'Total','Height', 'Weight']
    for i in col:
        dict_medians[i] = df[i].median()
    return dict_medians