#youtube API key:
api_key = 'AIzaSyBBouPW0Ug4r5tWzccLsSJetvMZL4edv-Q'

#if your are not so sure about how to get this key

import os
import google_auth_oauthlib.flow
import googleapiclient.discovery
import googleapiclient.errors
from datetime import datetime
import pandas as pd
import numpy as np

# If we just use "googleapiclient.discovery" we will have an error.
# We have to use the following line ir order to be able to use the 'build' function.

from googleapiclient.discovery import build

youtube = build('youtube', 'v3', developerKey = api_key )

start_time = datetime(year=2010, month=1, day=1).strftime('%Y-%m-%dT%H:%M:%SZ')
end_time = datetime(year=2011, month=1, day=1).strftime('%Y-%m-%dT%H:%M:%SZ')

search_topic = ['harry potter trailer', 'harry potter movie trailer', 'harry potter film trailer']
start_year = 2008
end_year = 2013

list_df_monthly = []


for each_year in range(start_year, end_year):
    for each_month in range(1,13): 
        
        # A il/else loop is created to have a more precisse control of the time range evaluated.
        # December will have an expecific expression to avoid errors. The other months will be the same.
        if each_month == 12:
        start_time = datetime(year=each_year, month= each_month, day=1).strftime('%Y-%m-%dT%H:%M:%SZ')
        end_time = datetime(year= each_year, month= each_month, day=31).strftime('%Y-%m-%dT%H:%M:%SZ')
        else:
        start_time = datetime(year=each_year, month= each_month, day=1).strftime('%Y-%m-%dT%H:%M:%SZ')
        end_time = datetime(year= each_year, month= each_month+1, day=1).strftime('%Y-%m-%dT%H:%M:%SZ')

        res = youtube.search().list(part='snippet', q= search_topic, type='video',
                                    publishedAfter=start_time,
                                    publishedBefore=end_time,
                                    maxResults=50).execute()
        
        #some empty lists are declared. They will store the data.
        video_info = []
        id_list = []
        stats = []
        video_statistics=[]


        for item in sorted(res['items'], key=lambda x:x['snippet']['publishedAt']):
            #print(item['snippet']['title'], item['snippet']['publishedAt'], item['id']['videoId'])

            #from here we take the snippet, which has the video name
            video_info.append(item['snippet'])

            #with this we take the video ID, which will be use as input 
            id_list.append(item['id']['videoId'])


        #this take all the videos_id and analize them 
        res_video = youtube.videos().list(id=','.join(id_list),part='statistics').execute()

        #now we add all of them in a single code line to the variable 'stats'
        stats.append(res_video)

        #this will iterate throught all the videos stats and it will pick the statisctics
        for elem in stats[0]['items']:
            #print(elem['statistics'])
            video_statistics.append(elem['statistics'])   


        #the 2 data sets are created:
        df_videos = pd.DataFrame(stats[0]['items'])
        df_statistics = pd.DataFrame(video_statistics)

        #lets concatenate. super - mega - definitive data set:
        data_frames = [df_videos, df_statistics]
        data = pd.concat(data_frames, axis = 1)

        #some columns are eliminated
        data = data.drop(['kind','etag', 'statistics', 'favoriteCount'], axis=1)

        #df_info    
        df_info = pd.DataFrame(video_info)
        df_info_clean = df_info.drop(['channelId', 'description', 'thumbnails', 'liveBroadcastContent'], axis=1)

        #the last concat is done. this gives a very clean df
        youtube_data = pd.concat([data, df_info_clean], axis = 1)

        #this appends this iteration to the big list
        list_df_monthly.append(youtube_data)
        
        #lets save each month as an independent .csv file.
        if each_month < 10:
            file_name = 'df_youtube_' + search_topic[0] + '_' + str(each_year) + '_0' + str(each_month)+'.csv'
        else:
            file_name = 'df_youtube_' + search_topic[0] + '_' + str(each_year) + '-' + str(each_month)+'.csv'
        
        youtube_data.to_csv(file_name)
    
youtube_df = pd.concat(list_df_monthly)

#show this big data set
youtube_df

#save this big set
big_df_name = 'df_youtube_' + search_topic[0] + '_' + str(start_year) + '-' + str(end_year)+'.csv'
youtube_df.to_csv(big_df_name)