from APIRequest import APIRequest
import pandas as pd

ext = {
    'films':'films/',
    'people':'people/',
    'planets':'planets/',
    'species':'species/',
    'starships':'starships/',
    'vehicles':'vehicles/'
}

if __name__ == '__main__':
    req = APIRequest('https://swapi.co/api/')
    for k,v in ext.items():
        if req.new_request(v):
            df = pd.DataFrame(req.result['results'])
            df.to_csv(k + '.csv', sep=';')