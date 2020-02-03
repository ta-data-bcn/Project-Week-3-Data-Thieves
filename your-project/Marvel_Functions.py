import pandas as pd
import numpy as np
import csv
import hashlib
import json
import requests
import random

def acquire_csv():
	data_csv = pd.read_csv('../data/charcters_stats.csv')
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
    
    df_marvel = pd.DataFrame({'Names': column_names, 'Ids': column_ids})
    return df_marvel