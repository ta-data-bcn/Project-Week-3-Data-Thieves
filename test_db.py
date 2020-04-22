"""
THIS FILE IS JUST FOR TESTING
shows the structure and management of DBConnector
1. create a file with your credentials
    - create "connection" folder. If it doesn't exists, create it
    - create "credentials.txt" file. It will contain the connection information
    
- file content example:
localhost
username
mySuperPassword
dataBase_name

In this test, example will be made with temp_states
"""
from starwars_project.DBConnector import DBConnector
conn = DBConnector('connection/credentials.txt')

df = conn.read_sql('SELECT * FROM temp_states')
print(df.describe())