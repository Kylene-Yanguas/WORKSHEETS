
#Packages 
library("twitteR") 
library(dplyr)
library(tidyr)
library("plotly")
library(ggplot2)
library(RColorBrewer)
library(tidytext)
library(rtweet)


#Extract 10000 tweets from Twitter using twitteR package including retweets.
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

#Get 10000 observations "including retweets
GettingTweets <- searchTwitter("#ENHYPEN",
                               n = 10000,
                               lang = "en",
                               since = "2022-11-24",
                               until = "2022-12-01",
                               retryOnRateLimit=120)

GettingTweets

#Converting data into dataframe
GettingTweetsDF <- twListToDF(GettingTweets)
GettingTweetsDF 

#Saving File
save(GettingTweetsDF,file = "GettingTweetsDF.Rdata")

#Load the file
load(file = "GettingTweetsDF.Rdata")

#Subset the retweets and the original tweets into a separate file
Orig_Tweets <- subset(GettingTweetsDF,
                      isRetweet == "FALSE",
                      select = c(text,screenName,created,
                                 isRetweet))
Retweets <- subset(GettingTweetsDF,
                   isRetweet == "TRUE",
                   select = c(text,screenName,created,
                              isRetweet))

#Grouping the Data Created
#Original Tweets
Orig_Tweets %>%
  group_by(1) %>%
  summarise(max = max(created), min= min(created))

Orig_Tweet <- Orig_Tweets %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
Orig_Tweet 

mini <- Orig_Tweets %>% pull(created) %>% min()
mini

maxi <- Orig_Tweets %>% pull(created) %>% max()
maxi

#Retweets

Retweets  %>%
  group_by(1) %>%
  summarise(max = max(created), min= min(created))

Retweet<- Retweets%>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
Retweet 

minn <- Retweets %>% pull(created) %>% min()
minn

maxx <- Retweets %>% pull(created) %>% max()
maxx


#Plot the retweets and the original tweets using bar graph in vertical manner.
#Include legends

#Plotting of Original Tweets
 ggplot(Orig_Tweet, aes(x = created)) +
             geom_bar(aes(fill = ..count..)) +
             theme(legend.position = "right") +
             xlab("Time") + ylab("Number of tweets") + 
             scale_fill_gradient(low = "light pink", high = "skyblue")

  

#Plotting of Retweets
 ggplot(Retweet, aes(x = created)) +
            geom_bar(aes(fill = ..count..)) +
            theme(legend.position = "right") +
            xlab("Time") + ylab("Number of tweets") + 
            scale_fill_gradient(low = "yellow", high = "green")

 

