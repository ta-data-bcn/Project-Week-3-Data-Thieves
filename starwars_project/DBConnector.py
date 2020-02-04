import pymysql
from pathlib import Path
import sys
import pandas as pd

class DBConnector:
    def __init__(self, path):
        """
        Constructor -->
        - path: relative or full path to the connection file
                structure of the file:
                - host
                - user
                - password
                - database
        """
        credentials = Path(path)
        # check file exists
        if (not credentials.exists()):
            print('ERROR - COULD NOT RECOVER CREDENTIAL FILES')
            sys.exit()
        # open credentials super secret file
        with open(credentials) as f:
            lines = f.read().splitlines()
            f.close()
        # create connector
        self.conn = pymysql.connect(host=lines[0], user=lines[1], password=lines[2], db=lines[3])

    def read_sql(self, sql):
        """
        executes the given slq sentence. It can
        only execute SELECT sentences.
        - sql: the query to execute
        - return >> pandas dataframe with result
        """
        return pd.read_sql(sql, self.conn)

    def to_sql(self, df, table_name, ifexists='replace'):
        """
        transforms the given DataFrame into a table
        and sabe the content into it
        - df: the DataFrame to save
        - table_name: the name of the table to save
        - ifexists: what to do if there is a table with given name
        """
        df.to_sql(table_name, self.conn, if_exists=ifexists)

    def __del__(self):
        print('-----------------------')
        try:
            self.conn.close()
        except:
            print('could not close connection')
        try:
            self.engine.dispose()
        except:
            print('could not close engine')
        finally:
            print('Connector destroyed.')
