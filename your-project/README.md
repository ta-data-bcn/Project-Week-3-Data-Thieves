<<<<<<< HEAD
<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# The mighty Human - Destroyer of Worlds
*[Mar Cánovas, Mireia Guinovart, Carles Rosell]*

*[DataAnalysis, Ironhack & 09-07-2020]*

## Content
- [Project Description](#project-description)
- [Questions & Hypotheses](#questions-hypotheses)
- [Dataset](#dataset)
- [Workflow](#workflow)
- [Organization](#organization)
- [Links](#links)

## Project Description
Human effects on everything that surround them is a known issue but we tend to believe what we hear, without facts.
Planet Earth is changing constantly and so does everything inside it.
This project focuses on displaying data over the years to describe and prove a reality that affects all living beings on Earth.
Our goal is to showcase in an understandable way the facts and generate interest and retention.

## Questions & Hypotheses
Q1. Have the threatened species increased over the years?

Q2. Has human population increased over the years?

Q3. Is humans growth affecting animal population?

Q4. Are the humans correlated to climate change?

Q5. Are vertebrates and invertebrates affected in a different manner?

Q6. Are plants and animals affected in a different manner?


H1. The Humans are directly related to animals extinction

H2. The temperature is directly related to animals extinction

H3. Vertebrates and invertebrates are affected differently. Invertebrates are the most affected.

H4. Plants and animals are affected differently.

## Dataset
1. Animal Species - (https://www.iucnredlist.org/resources/summary-statistics)
2. Clima - (https://climate.nasa.gov/vital-signs/global-temperature/)
3. Population - (https://databank.worldbank.org/)

Other resources:
APIs:
https://endangeredanimals.docs.apiary.io/#
https://apiv3.iucnredlist.org
https://dev.meteostat.net/
https://datahelpdesk.worldbank.org/
Web scrapping:
http://earthsendangered.com/search-regions3.asp
https://www.statista.com/statistics/978577/number-threatened-species-brazil-type/
https://knoema.es/WBWDI2019Jan/world-development-indicators-wdi

## Workflow
Questions
Hypotheses
Dataset research
Web scrapping + API requests
Dataset enquiries
Data cleaning
Data analysis
Results
Conclusions

## Organization

1. We used trello in order to organize our work and have a visual representation of the pendind tasks.

2. Datasets:
DatasetTransformation.ipynb:
 Climate Lowess(5) index, the change in global surface temperature relative to 1951-1980 average temperatures compared with range 1996 to 2019
World Population Data.ipynb:
 Number of people in the world from 1960 to 2019
animals.xlsx:
 Animals divided by Vertebrates, Invertebrates, Plants and Fungi & protists (and their corresponding subclasses) from 1996 to 2020
 
3. Folder structure:
your-project (folder):
	-images(folder): plots dashboards for relevant Data exposure
	-ERD(image): relation between datasets
	-Project3(file): main project resource for data description and questions-hypotheses conclusions
	-Readme: structure of the study
gitignore (file):
	.txt file for unnecessary files
drafts (folder): 
	secondary used datasets

## Links
[Repository](https://github.com/MarCanovas/Project-Week-3-Data-Thieves.git)  
[Slides](https://docs.google.com/presentation/d/1QSKYigACbWaYPUXfEvjud0S_tJ4xdA-ADxUupz5ZdyI/edit?usp=sharing)  
[Trello](https://trello.com/b/TEH9u75K/projectweek3datathieves)  
