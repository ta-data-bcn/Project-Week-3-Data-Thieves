<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# How changing Youtube algorithm impacts on content creators
*Paula Szewach*
*Elliott Coyne*
*Guillem Godayol*

*[Data Analytics, Barcelona & October 2019]*

## Content
- [Project Description](#project-description)
- [Questions & Hypotheses](#questions-hypotheses)
- [Dataset](#dataset)
- [Database](#database)
- [Workflow](#workflow)
- [Organization](#organization)
- [Links](#links)

## Project Description
In July 2019 Youtube changed its algorithm. We want to know if this change has had an impact in the way of content creators publish their videos, checking two groups of creators: Top 3 and Independent Creators

## Questions & Hypotheses
Our questions were: 
Have the content creators changed their behaviour in the channel?
Have they changed the frecuency of publishing? 
Have they made any changes in the video duration?
Has their income been affected?
Our hypothesis: Independent content creators have decreased their upload frequency after the algorythm changed. 

## Dataset
We focused on Spanish top content creators, so we used web scrapping to get a list for the Top 50: https://marketing4ecommerce.net/youtubers-mas-seguidos-de-espana-2019-50/
With this information, we got more data from Youtube Data API v3
We also identified and interrogated three channels whose owners had mentioned changes to the algorithm and how it had affected them.

## Database
Our Database has 3 tables: content_creator, video_table, video_table_ind
The content_creator table has a list of the Top50 Youtube channels in Spain and is linked to the video_table by channel name. 
The video_table contents the list of videos for the Top3 channels we analysed.
The video_table_ind is not related to other two tables and contents the videos for the 3 independent channels we analysed.

## Workflow
We started scrapping some initial information we used after to get more detailed data in Youtube API. With this information from the API we started our analysis, and we saw we needed more data. So we got extra data for independent channels previously known in the API and we finished the analysis.

## Organization
We organized our work with a Trello board, setting all the tasks to do. Everyone was in charge of some of the tasks in order to work in parallel.

We organized our repository in several folders inside 'your-project'. You can find a 'Data' folder, with all the datasets we obtained, a 'Webscrapping' folder, with the files used for the webscrapping process, a 'YoutubeAPI' folder with the corresponding file, other folder for SQL and a last one for Tableau.

## Links
Include links to your repository, slides and kanban board. Feel free to include any other links associated with your project.

[Repository](https://github.com/GuillemGodayol/Project-Week-3-Data-Thieves)  
[Slides](https://docs.google.com/presentation/d/1ArIrg80tX-3XdUOQNKdlJaZF37O3NWCpyrvMAT02Kis/edit?usp=sharing)  
[Trello](https://trello.com/b/eEuzp2fS/project-3-youtube-algorithm)  
