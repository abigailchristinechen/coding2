##Coding 2: Twitter API + Sentiment Analysis +
##Topic: Axie Infinity
##Tags: "Axie", "Axie Infinity" , "AXS", "SLP", "Manager", "Scholar", "Scholarship", "Sky Mavis" 
##Abigail Chen

#installing the packages
install.packages('stringr')
install.packages('base64enc')
install.packages('openssl')
install.packages('httpuv')
install.packages('twitteR')
install.packages('tm')
install.packages('dplyr')
install.packages('tidytext')
install.packages('plotly')
install.packages('textdata')


#loading the libraries
library(base64enc)
library(openssl)
library(httpuv)
library(twitteR)
library(tm)
library(stringr)
library(dplyr)
library(httr)
library(tidyverse)
library(tidytext)
library(plotly)
library(textdata)


#Tag #1 : Axie
#Read Axie10000.csv which has 10,000 tweets containing "Axie"
Axie = read.csv("/Users/abigailchristinechen/coding2/projects/project2/Axie10000.csv")

#separate all the tweets into a list of words
#gives 282,490 list of words
tweet_words <- Axie %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#167,246 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#need to load library(textdata) to use this command
#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#179,550 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with 'Axie"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in Tweets with 'Axie'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))


# my_stop_words <- stop_words %>% select(-lexicon) %>%
# bind_rows(data.frame(word = c("https", "t.co", "rt", "amp","4yig9gzh5t","fyy2ceydhi","78","fakenews")))


##############################################

#Tag #2 : axieinfinity
#Read axieinfinity10000.csv which has 10,000 tweets containing "axieinfinity"
axieinfinity = read.csv("/Users/abigailchristinechen/coding2/projects/project2/axieinfinity10000.csv")

#separate all the tweets into a list of words
#gives 304,518 list of words
tweet_words <- axieinfinity %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#181,608 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#need to load library(textdata) to use this command
#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#214,717 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with 'axieinfinity"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'axie infinity'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################

#Tag #3 : SLP
#Read SLP10000.csv which has 10,000 tweets containing "SLP"
#SLP stands for smooth love potion, which is the in game currency

SLP = read.csv("/Users/abigailchristinechen/coding2/projects/project2/SLP10000.csv")

#separate all the tweets into a list of words
#gives 352,123 list of words
tweet_words <- SLP %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#214,313 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#need to load library(textdata) to use this command
#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#220,612 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with 'SLP"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'SLP'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))


##############################################

#Tag #4 : AXS
#Read AXS10000.csv which has 10,000 tweets containing "AXS"
#AXS stands for the cryptocurrency ticker, this is used to trade the cryptocurrency AXS

AXS = read.csv("/Users/abigailchristinechen/coding2/projects/project2/AXS10000.csv")

#separate all the tweets into a list of words
#gives 337,026 list of words
tweet_words <- AXS %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#214,565 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#need to load library(textdata) to use this command
#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#221,917 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with 'AXS"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'AXS'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################

#Tag #5 : Sky Mavis
#Read SkyMavis10000.csv which has 10,000 tweets containing "SkyMavis"
#Sky Mavis is the game creator/developer of Axie Infinity

SkyMavis = read.csv("/Users/abigailchristinechen/coding2/projects/project2/SkyMavis10000.csv")

#separate all the tweets into a list of words
#gives 5,966 list of words
tweet_words <- SkyMavis %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#3,636 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#need to load library(textdata) to use this command
#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#3,838 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with 'Sky Mavis"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'Sky Mavis'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################

#Tag #6 : Scholarship
#Read Scholarship10000.csvwhich has 10,000 tweets containing "Scholarship"
#In Axie Infinity the cost to play is a little high, ranging from $600 to $1,500 to start a team.
#So players who become scholars, look for scholarships, 
#Which is a sponsorship for them to play, think of it as a free tuition fee to play.

Scholarship = read.csv("/Users/abigailchristinechen/coding2/projects/project2/Scholarship10000.csv")

#250,080 observations
#separate all the tweets into a list of words
tweet_words <- Scholarship %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#137,968 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#need to load library(textdata) to use this command
#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#158,576 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with 'Scholarship"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'Scholarship'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################

#Tag #7 : Manager
#Read Manager10000.csv which has 10,000 tweets containing "Manager"
#In Axie Infinity the cost to play is a little high, ranging from $600 to $1,500 to start a team.
#So players who become scholars, look for scholarships, 
#Which is a sponsorship for them to play, think of it as a free tuition fee to play.
#The people who provide scholarships, are the "Managers"

Manager = read.csv("/Users/abigailchristinechen/coding2/projects/project2/Manager10000.csv")

#255,111 observations
#separate all the tweets into a list of words
tweet_words <- Manager %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#140,507 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#need to load library(textdata) to use this command
#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#157,886 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with 'Manager"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'Manager'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################

#Tag #8 : Scholar
#Read Manager10000.csv which has 10,000 tweets containing "Scholar"
#In Axie Infinity the cost to play is a little high, ranging from $600 to $1,500 to start a team.
#So players who become scholars, and look for scholarships, 
#Which is a sponsorship for them to play, think of it as a free tuition fee to play.
#The people who provide scholarships, are the "Managers"

Scholar = read.csv("/Users/abigailchristinechen/coding2/projects/project2/Scholar10000.csv")

#217,195 observations
#separate all the tweets into a list of words
tweet_words <- Scholar %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#127,649 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#need to load library(textdata) to use this command
#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#144,858 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with 'Scholar"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'Scholar'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################

#Combined Analysis for 2 tags
# Axie
# axie infinity
# AXS
# SLP
# SkyMavis 
# Scholarship 
# Manager 
# Scholar

#Combined Analysis #1 (for 2 tags)
#Checks for Scholar in Axie file
#853 observations
Axie_Scholar = Axie[grepl("Scholar", Axie$text,ignore.case = TRUE),]

#separate the tweets into words
#20,157 observations
tweet_words <- Axie_Scholar %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#11,545 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#need to load library(textdata) to use this command
#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#13,399 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with 'Scholar & Axie"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and Scholar", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################

#Combined Analysis #2 (for 2 tags)
#Checks for AXS in Axie file
#398 observations
Axie_AXS = Axie[grepl("AXS", Axie$text,ignore.case = TRUE),]

#separate the tweets into words
#20,840 observations
tweet_words <- Axie_AXS %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#12,584 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#13,433 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with 'AXS & Axie"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and AXS", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################

#Combined Analysis #3 (for 2 tags)
#Checks for SLP in Axie file
#1,337 observations
Axie_SLP = Axie[grepl("SLP", Axie$text,ignore.case = TRUE),]

#separate the tweets into words
#38,712 observations
tweet_words <- Axie_SLP %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#25,497 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#26,670 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with "SLP & Axie"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and SLP", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################
#Combined Analysis #4 (for 2 tags)
#Checks for Sky Mavis in Axie file
#5 observations

Axie_SkyMavis = Axie[grepl("Sky Mavis", Axie$text,ignore.case = TRUE),]

#separate the tweets into words
#106 observations
tweet_words <- Axie_SkyMavis %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#62 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#68 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with "Sky Mavis & Axie"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and Sky Mavis", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################

#Combined Analysis #5 (for 2 tags)
#Checks for Scholarship in Axie file
#448 observations
Axie_Scholarship = Axie[grepl("Scholarship", Axie$text,ignore.case = TRUE),]

#separate the tweets into words
#9,997 observations
tweet_words <- Axie_Scholarship %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#5,763 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#7,024 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with "Scholarship & Axie"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and Scholarship", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))

##############################################

#Combined Analysis #6 (for 2 tags)
#Checks for Manager in Axie file
#213 observations
Axie_Manager = Axie[grepl("Manager", Axie$text,ignore.case = TRUE),]

#separate the tweets into words
#4,369 observations
tweet_words <- Axie_Manager %>% select(id, text) %>% unnest_tokens(word,text)

#1,149 observations
my_stop_words <- stop_words %>% select(-lexicon)

#2,541 observations
#find the interesting words within the tweets
tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)

#13,875 observations
bing_lex <- get_sentiments("nrc")

#left join the interesting tweets to the lexicon
#2,891 observations
fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)

#combine the sentiments into summarized 'emotions'
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

#convert into data frame
sentiments = as.data.frame(sentiments)

#convert into factors
sentiments$sentiment = as.factor(sentiments$sentiment)

#Sentiment graph for tweets with "Manager & Axie"
#y axis is for the number of words 
#x axis is for the emotion
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and Manager", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))


