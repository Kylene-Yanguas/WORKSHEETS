

#Packages 
library("twitteR") 
library(dplyr)
library(tidyr)
library("plotly")
library(ggplot2)
library(RColorBrewer)
library(tidytext)
library(rtweet)
library(tm)
library(slam)
library(wordcloud)
library(wordcloud2)
library(corpus)


#Extract from twitter using your developer's credentials. Choose any keyword you want. 

#Set-up credentials
CONSUMER_SECRET <- "jLGgrLiwKhMhqISxz53YwOoAM4IiMRtyGCwdzGqpFLXWIEKdVh"
CONSUMER_KEY <- "5HIj8u5pkw6TyxhR9rFCDACEP"
ACCESS_SECRET <- "6sQ6sSDdYNfvbpAExBEtM8kWFC4NyDmYQVgf29ard3uQr"
ACCESS_TOKEN <- "1596510495627878401-gqKBXdZyj2XX46pVrnef5MeVYnLhD8"

#connect to twitter app
setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)



#Get 10000 observations "excluding retweets
GettingTweets <- searchTwitter("#Japan -filter:retweets",
                               n = 10000,
                               lang = "en",
                               since = "2022-11-24",
                               until = "2022-12-01",
                               retryOnRateLimit=120)

GettingTweets


#Converting data into dataframe
GettingTweetsDF <- twListToDF(GettingTweets)
View(GettingTweetsDF)

#Saving the data into a file
save(GettingTweetsDF,file = "GettrendTweetsDF.Rdata")


#Subsetting using the dplyr()package
SubtweetsDF <- GettingTweetsDF %>%
  select(screenName,text,created,statusSource)

#saving file as Rdata
save(SubtweetsDF, file = "GettingtweetsDF.Rdata")

#load the data file
load(file = "GettingtweetsDf.Rdata")
load(file = "GettrendTweetsDF.Rdata")

#Plot the time series from the date created. with legends.
#plotting time series graph using plot() by rtweet package base on the date created.
ggplot(data = SubtweetsDF, aes(x = created), fill = SubtweetsDF) +
  geom_histogram(aes(fill = ..count..)) + 
  theme(legend.position="right",
        axis.title.x = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1)) +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "black", high = "dark green") + 
  ggtitle("Trending Tweets for the Month of November 2022")


#Plot a graph (any graph you want)  based on the type of device - found in Source
#- that the user use. Include the legends.

encodeSource <- function(x) {
  if(grepl(">Twitter for iPhone</a>", x)){
    "iphone"
  }else if(grepl(">Twitter for iPad</a>", x)){
    "ipad"
  }else if(grepl(">Twitter for Android</a>", x)){
    "android"
  } else if(grepl(">Twitter Web Client</a>", x)){
    "Web"
  } else if(grepl(">Twitter for Windows Phone</a>", x)){
    "windows phone"
  }else if(grepl(">dlvr.it</a>", x)){
    "dlvr.it"
  }else if(grepl(">IFTTT</a>", x)){
    "ifttt"
  }else if(grepl(">Facebook</a>", x)){  
    "facebook"
  }else {
    "others"
  }
}


SubtweetsDF$tweetSource = sapply(SubtweetsDF$statusSource, 
                                     encodeSource)

tweet_appSource <-SubtweetsDF %>% 
  select(tweetSource) %>%
  group_by(tweetSource) %>%
  summarize(count=n()) %>%
  arrange(desc(count)) 

Source_subset <- subset(tweet_appSource,count >10)


data_tweet <- data.frame(
  category = tweet_appSource$tweetSource,
  count = tweet_appSource$count
)

data_tweet$fraction = data_tweet$count / sum(data_tweet$count)
data_tweet$percentage = data_tweet$count / sum(data_tweet$count) * 100
data_tweet$ymax = cumsum(data_tweet$fraction)
data_tweet$ymin = c(0, head(data_tweet$ymax, n=-1))
data_tweet$roundP = round(data_tweet$percentage, digits = 2)

#plotting
Source <- paste(data_tweet$category, data_tweet$roundP, "%")

ggplot(data_tweet, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=Source)) +
  geom_rect() +
  coord_polar(theta="y") +
  xlim(c(2, 4)) +
  theme_void() +
  theme(legend.position = "left")


#Create a wordcloud from the screenName

#Using wordcloud() package 
tweet_appScreen <- SubtweetsDF %>%
  select(screenName) %>%
  group_by(screenName) %>%
  summarize(count=n()) %>%
  arrange(desc(count)) 

#convert to Corpus
namesCorpus <- Corpus(VectorSource(SubtweetsDF$screenName))

#Running the code using the wordcloud()
wordcloud2(data=tweet_appScreen, 
           size=1, 
           color='random-light')

