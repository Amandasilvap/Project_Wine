# Project_Wine
Study to look best rating Wines, looking inside some databases to find how to choose your wine.

# How to use
We have some folder where you can find the code and the databases, a presentation with the insights and a study with data world vitivinicultural.

# The Code
The data cleaning and the data analysis is done in Python in a Jupyter Notebook, where I used to see the content of the main dataset, clean the data, replace missing values and drop some null values like country, drop some columns, create a new color for year of wines extract this inside the title.
I try to predict the price using KNeighbors, but didn't result efficient, so I decided to drop this missing values.
I made some classification on my data in prices and quality, to see how is the behavior behind the points. Likewise, I use some data plots methods to see better the data and information about grapes, countries and regions.
Not only that, but I used to some description analysis inside the text that describe the wines, using WordCloud and StopWords, something like that:

Create a custom stopwords list
stopwords = set(STOPWORDS)
stopwords.update(["drink", "now", "wine", "flavor", "flavors", 'finish', 'palate', 'show', 'nose', 'note', 'taste', 'shows', 'notes', 'much', 'like' ])

Generate a word cloud
wordcloud = WordCloud(stopwords=stopwords, background_color="white").generate(text)

Then I used a new dataset, that provides me data from wine production, that I will join with my main dataset. The data after being clean was exported to SQL and CSV files.

# The presentation

This will bring some of the insights I get after to analyze my data and back to my results.

# Data Visualization
WordCloud
Matplotlib
Seaborn
Tableau

# Credits
Data Sets
•https://www.kaggle.com/zynicide/wine-reviews
•https://www.oiv.int/
•https://economics.adelaide.edu.au/wine-economics/databases#database-of-regional-national-and-global-winegrape-bearing-areas-by-variety-1960-to-2016
•https://data.world/food/wine-quality

Wine Big Numbers
•https://www.winecountry.com/blog/wine-basics-by-the-numbers/

Wine Images
Vivino WebSite


