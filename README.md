<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# eGold, is Bitcoin a store of value?
*[Andreu Carreño Mateu]*
*[Francesco Baldissera]*

*[Data Analytics, Barcelona April 2020]*

## Content
- [Project Description](#project-description)
- [Questions & Hypotheses](#questions-hypotheses)
- [Dataset](#dataset)
- [Database](#database)
- [Workflow](#workflow)
- [Organization](#organization)
- [Links](#links)

## Project Description
Due to economical turmoil, people now more than ever are eagerly looking for financial alternatives to safeguard their savings. Usually people uses investments in several fiat currencies for storing their savings over short or midterm timeframes.

We wanted to verify through data if Bitcoin is as it is usually advertized: "The new gold".

## Questions & Hypotheses
1. Is Bitcoins volatility much higher than the USD/EUR exchange? | Due to its very nature and the definition of price by pure action of supply and demand in a free market we believe its volatility would be very high.
2. How has the Covid-19 affected the BTC/EUR vs the USD/EUR exchange? | We believe COVID-19 impact has made people to invest their savings into BTC rather than into fiat currency exchanges.
3. Is Bitcoin a new store of value? | Our hypothesis is that this condition for bitcoin is temporary.

## Dataset
WebScrapping: www.coinmarketcap.com for BTC/EUR time series data. 
CSV files: COVID-19 data from the John Hopkins Unniversity repository and USD/EUR exchange data from YahooFinance.

## Database
For every data source we created a table and finally merged them all into one to be able to analize the correlation of prices with contagions through time. 

The join is and outer join using the 'Date'.

## Workflow

1. Research on the topic 
2. Research about data sources
3. Acquiring the data
4. Cleaning the data and joining it
5. Plotting and analysis


## Organization
We used a Trello board to manage the workload.

In our repository you may find different directories inside the main one titled "your-project":

- Testing API's are our notebook files in which we where researching different API's to integrate
- COVID-19 has all the data and notebooks when acquiring and wrangling COVID-19 data
- Bitcoin has all the data and notebooks when acquiring and wrangling Bitcoin data
- Paper has a cleaned up version of the two previous directories plus our paper. It also contains all the images and data sources.

## Links
Include links to your repository, slides and kanban board. Feel free to include any other links associated with your project.

[Repository](https://github.com/franbaldi/Project-Week-3-Data-Thieves)  
[Slides](https://docs.google.com/presentation/d/14m9l87IHX2SkG-B6DmBPQ70MyIz4mQi395r-5v_Sl3w/edit?usp=sharing)  
[Trello](https://trello.com/invite/b/vfWvzrYl/d981662d8ac98ff9dce4b8edbbc628ce/project-week-3-data-thieves)
