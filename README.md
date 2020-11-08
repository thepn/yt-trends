# YT-Trends
Analysis of German YouTube trends (trending videos) of December 2019 to 2020

## About this project
Since December of 2019, an application sends a request to the YouTube api[1] requesting the 50 videos of the German youtube 'trends' every hour. For each video, the application stores some metadata in a database. That data contains the current amount of likes, dislikes, views or trend rating but also the current title, video description and tags. I created this hobby project to train myself in the statistic language R and concepts of data science. The charts were generated using RStudio and Google Spreadsheets.

Please note that my data can be incomplete or corrupted due to server downtimes or errors.
For legal reasons, I cannot publish the records of the database.

# 1) Corona crisis
To verify the results gained from the data, we can compare the amount of trending videos about the Corona virus and the amount of positive laboratory tests in Germany [2]. When these two graphs correlate, the results should be correct to a certain degree.

### 1.1) Positive Corona virus tests in 2020 in Germany by week of the year ###
![Positive Corona virus tests since week 10 of 2020 in Germany](https://github.com/thepn/yt-trends/blob/main/Results/Positive%20tests%20since%20week%2010%20of%202020%20in%20Germany.png?raw=true)

### 1.2) Amount of trending videos discussing Corona virus by week of the year ###
![Chart of trending videos about Corona virus](https://github.com/thepn/yt-trends/blob/main/Results/corona.png?raw=true)

Comparing these two charts, you can clearly notice that both charts have their peak of the first Corona wave in week 13 and the peak of the second wave in week 44.
However, Corona virus does not seem to be as important in the second wave as it was in the first wave. Perhaps this could be because people didn't know as much about the virus in March as science has now figured out. As a result, the virus could no longer seem so threatening and people are less interested in what is being shown in the YouTube trends.

### 1.3) Google Trends search for 'Coronavirus' ###
![Chart provided by Google Trends showing the general interest in the Corona virus over time](https://github.com/thepn/yt-trends/blob/main/Results/corona%20relevance%20google%20trends.png)

Moreover, the 'search interest over time' chart provided on Google Trends [3] looks pretty similar to the second chart. The data must be more or less correct.

# 2) Relevant video topics: Which topics trend the most?

The Youtube api provides a field called 'category' that describes the video topic. Because the creators can set the category of their videos themselves, the following data should be treated carefully.

### 2.1) Best trend rating index by video category (packed bubble chart) ###
![Best trend rating by category](https://raw.githubusercontent.com/thepn/yt-trends/main/Results/trend%20index%20by%20category.png)
Please click on the chart to zoom in if the text labels are too small. The packed bubble chart shows the trend rating position by chart. The bigger each bubble, the more relevant the topic seems to be in the German Youtube trends. As expected, the most relevant topics are 'People & Blogs' because of the vlog youtubers, Entertainment and sports.
In my opinion, it is surprising that the categories Gaming, 'HowTo & Style', and Comedy seems to be less important, as are the topics 'News & Politics', 'Autos & Vehicles', 'Science & Technology' and 'Education'. The categories 'Film & Animation', 'Travel & Events', 'Pets & Animals' and 'Nonprofits & Activism' are the least relevant on the 'trends' page.

# Sources
[1] Youtube Data Api https://developers.google.com/youtube/v3 \
[2] German laboratory tests https://de.statista.com/statistik/daten/studie/1107749/umfrage/labortest-fuer-das-coronavirus-covid-19-in-deutschland/#professional \
[3] Google Trends search for 'Coronavirus' in German https://trends.google.com/trends/explore?geo=DE&q=%2Fm%2F01cpyy
