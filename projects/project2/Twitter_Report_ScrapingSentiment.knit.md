---
title: "Twitter API + Sentiment Analysis"
author: "Abigail Chen"
output:
  prettydoc::html_pretty:
    theme: leonids 
    highlight: github
---



# Why Axie Infinity? 
Are you into NFT’s?  How about Play-to-earn (P2E) games?  

This is one of the first Twitter scraping and data analysis done for a trending play to earn scheme called Axie Infinity?

Why Axie Infinity?  If you like games and you can spend hours and hours gaming and playing games, then why not play and earn money at the same time?  Are you familiar with grinding in game, where you spend hours and hours levelling up? In Axie, you can do so while earning money as well.  

How do you get started? 

There are multiple ways you can play and earn via the game, one is if you buy your own “Axies” which are the in game assets. This means you will be funding your own capital. In order to play, you will be needing 3 axies which can cost from "$1,000-$1,500" for a set of 3, depending on the skills, classes and combinations.  Another way for you to earn is for you to buy some Axies and breed them yourself to make baby Axies, which you can then sell in the marketplace. 

If you have no capital, you can apply to a "scholarship" and be a "scholar", the capital owner will be your "manager".
As a scholar, you'll trade of your time and skills to play the game, while the manager will be providing you with the capital to play.  Then the "scholar" and the "manager", will split the earnings depending on their agreement.  With this quick analaysis, I will be looking at some sentiments for certain tags related to the game Axie Infinity.



# Key words to be scraped

1.    Axie
2.    axie infinity
3.    AXS
4.    SLP
5.    SkyMavis
6.    Scholarship
7.    Manager 
8.    Scholar

# Scope & Limitation
Due to the limited number of tweets allowed to be scraped by my developer account, I will be limiting the scraping to 10,000 tweets per "Tag".  For further continuation of the analysis, and further expansion of the trends with Axie Infinity, more tweets can definitely  beanalyzed. 

# Challenges
Here are some key things to note when you want to scrape from Twitter. One, applying for the twitter developer API takes time, and takes longer during the holidays.  There are also different account tiers that can help you scrape more information with lesser restrictions.  I still have my application for the education tier for million tweet scrapes pending. Aside from this, getting the Twitter API to work is challenging and can be very tricky, you need to set the correct settings to get it to work. :) 

# Libraries 
1.    library("prettydoc")
2.    library("base64enc")
3.    library("openssl")
4.    library("httpuv")
5.    library("twitteR")
6.    library("tm")
7.    library("stringr")
8.    library("dplyr")
9.    library("httr")
10.   library("tidyverse")
11.   library("tidytext")
12.   library('plotly')

# Setting up the Twitter API

## Twitter API keys 


```r
consumerKey = "W7d5usbfcYt3wZPS348sXwJ3i"  
consumerSecret = "GmJ2krkd0Iih1WYXm2Ml2fapcVlwNqgUEBtVQit25ddKrPjDqo"
accessToken = "850647463-lnYE2WUANf2pW0BGTLHbAdkD3g104x03v33cW1zv"
accessSecret = "ssPRkGCIXhVYylKGZWxiJq1ffRk1WYuiinImMsmBW03rO"
```


## API configuration

```r
setup_twitter_oauth(consumerKey, consumerSecret,
                    accessToken,accessSecret)
```

```
## [1] "Using direct authentication"
```

Note: Section below is commented because there are limited API calls allowed. So, all the words were scrapped and saved into a csv file for later processing.  


## Scraping tweets with  "Axie"
##### This is the quick shortcut / slang of what people call the game
##### Separate all the tweets into a list of words, gives 282,490 list of words

```r
# tt = searchTwitter('Axie', n = 10000, since = '2021-01-01')
# Axie <- twListToDF(tt)
# write.csv(Axie,"Axie10000.csv", row.names = FALSE)
```


## Scraping tweets with  "axie infinity"
##### This is the name of the game
##### Separate all the tweets into a list of words, gives  304,518 list of words

```r
# tt = searchTwitter('axie infinity', n = 10000, since = '2021-01-01')
# axieinfinity <- twListToDF(tt)
# write.csv(axieinfinity,"axieinfinity10000.csv", row.names = FALSE)
```


## Scraping tweets with  "SLP"
##### #SLP stands for smooth love potion, which is the in-game currency
##### Separate all the tweets into a list of words, gives  352,123 list of words

```r
# tt = searchTwitter('SLP', n = 10000, since = '2021-01-01')
# SLP <- twListToDF(tt)
# write.csv(SLP,"SLP10000.csv", row.names = FALSE)
```

## Scraping tweets with  "AXS"
##### AXS stands for the cryptocurrency ticker, this is used to trade the cryptocurrency AXS
##### Separate all the tweets into a list of words, gives 337,026 list of words

```r
# tt = searchTwitter('AXS', n = 10000, since = '2021-01-01')
# AXS <- twListToDF(tt)
# write.csv(AXS,"AXS10000.csv", row.names = FALSE)
```


## Scraping tweets with  "Sky Mavis"
##### Sky Mavis is the game creator/developer of Axie Infinity
##### Separate all the tweets into a list of words, gives 5,966 of words

```r
# tt = searchTwitter('Sky Mavis', n = 10000, since = '2021-01-01')
# SkyMavis <- twListToDF(tt)
# write.csv(SkyMavis,"SkyMavis10000.csv", row.names = FALSE)
```


## Scraping tweets with  "Scholarship"
##### In Axie Infinity the cost to play is a little high, ranging from $600 to $1,500 to start a team. So, players who become scholars, look for scholarships, which is a sponsorship for them to play, think of it as a free tuition fee to play.
##### Separate all the tweets into a list of words, gives 250,080 of words

```r
# tt = searchTwitter('Scholarship', n = 10000, since = '2021-01-01')
# Scholarship <- twListToDF(tt)
# write.csv(Scholarship,"Scholarship10000.csv", row.names = FALSE)
```


## Scraping tweets with  "Manager"
##### #In Axie Infinity the cost to play is a little high, ranging from $600 to $1,500 to start a team.The people who provide scholarships, are called the "Managers", they shell out the initial capital.
##### Separate all the tweets into a list of words, gives 255,111 of words

```r
# tt = searchTwitter('Manager', n = 10000, since = '2021-01-01')
# Manager <- twListToDF(tt)
# write.csv(Manager,"Manager10000.csv", row.names = FALSE)
```


## Scraping tweets with  "Scholar"
##### #In Axie Infinity the cost to play is a little high, ranging from $600 to $1,500 to start a team. So players look to become scholars, and look for scholarships, in order to play the game
##### Separate all the tweets into a list of words, gives 217,195 of words

```r
# tt = searchTwitter('Scholar', n = 10000, since = '2021-01-01')
# Scholar <- twListToDF(tt)
# write.csv(Scholar,"Scholar10000.csv", row.names = FALSE)
```



# Sentiments Analysis

### Total Tweets Analyzed : 80,000 Tweets
### Total Words Analyzed  : 2,004,509 words

## Sentiments in tweets with 'Axie' 


```r
Axie = read.csv("Axie10000.csv")

tweet_words <- Axie %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```

```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'Axie'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-9b2c02331a06dd622c41" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-9b2c02331a06dd622c41">{"x":{"visdat":{"a5c325ba4add":["function () ","plotlyVisDat"]},"cur_data":"a5c325ba4add","attrs":{"a5c325ba4add":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with 'Axie'","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[859],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[3360],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[502],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[685],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[3312],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[1695],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[7047],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[459],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[865],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[3884],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Sentiments in tweets with 'axie infinity'


```r
axieinfinity = read.csv("axieinfinity10000.csv")

tweet_words <- axieinfinity %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```



```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'axie infinity'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-807e2f9e75573d08c248" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-807e2f9e75573d08c248">{"x":{"visdat":{"a5c325b2ccc4":["function () ","plotlyVisDat"]},"cur_data":"a5c325b2ccc4","attrs":{"a5c325b2ccc4":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with 'axie infinity'","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[584],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[9752],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[398],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[700],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[10751],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[1173],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[15110],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[441],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[1242],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[10855],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Sentiments in tweets with 'SLP'


```r
SLP = read.csv("SLP10000.csv")

tweet_words <- SLP %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```


```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'SLP'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-3c6483cf50635e4a3566" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-3c6483cf50635e4a3566">{"x":{"visdat":{"a5c312bb7440":["function () ","plotlyVisDat"]},"cur_data":"a5c312bb7440","attrs":{"a5c312bb7440":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with 'SLP'","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[412],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[1799],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[272],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[404],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[1519],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[1158],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[3631],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[333],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[625],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[1819],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Sentiments in tweets with 'AXS'


```r
AXS = read.csv("AXS10000.csv")

tweet_words <- AXS %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```


```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'AXS'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-b7e91d394fbb10950fde" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-b7e91d394fbb10950fde">{"x":{"visdat":{"a5c37ae802bb":["function () ","plotlyVisDat"]},"cur_data":"a5c37ae802bb","attrs":{"a5c37ae802bb":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with 'AXS'","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[308],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[2381],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[121],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[304],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[1693],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[640],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[3736],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[325],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[448],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[2338],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Sentiments in tweets with 'Axie'


```r
SkyMavis = read.csv("SkyMavis10000.csv")

tweet_words <- SkyMavis %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```



```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'Sky Mavis'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-7340fd1f3de7d8d039b4" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-7340fd1f3de7d8d039b4">{"x":{"visdat":{"a5c310b543c":["function () ","plotlyVisDat"]},"cur_data":"a5c310b543c","attrs":{"a5c310b543c":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with 'Sky Mavis'","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[9],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[342],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[6],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[11],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[52],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[34],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[86],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[8],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[10],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[61],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Sentiments in tweets with 'Scholarship'


```r
Scholarship = read.csv("Scholarship10000.csv")

tweet_words <- Scholarship %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```


```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'Scholarship'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-bf150536e217b339606a" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-bf150536e217b339606a">{"x":{"visdat":{"a5c336e0b5a4":["function () ","plotlyVisDat"]},"cur_data":"a5c336e0b5a4","attrs":{"a5c336e0b5a4":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with 'Scholarship'","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[1184],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[4162],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[572],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[1212],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[9052],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[2073],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[16228],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[772],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[1564],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[4919],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Sentiments in tweets with 'Manager'


```r
Manager = read.csv("Manager10000.csv")

tweet_words <- Manager %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```

```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'Manager'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-c9c21156f2bf27803b6e" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-c9c21156f2bf27803b6e">{"x":{"visdat":{"a5c3376f9e":["function () ","plotlyVisDat"]},"cur_data":"a5c3376f9e","attrs":{"a5c3376f9e":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with 'Manager'","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[1422],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[4349],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[1028],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[1675],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[3367],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[2914],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[7968],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[1443],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[1381],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[5011],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Sentiments in tweets with 'Scholar'


```r
Scholar = read.csv("Scholar10000.csv")

tweet_words <- Scholar %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```




```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with 'Scholar'", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-d2cdfe1f329dc5de10e6" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-d2cdfe1f329dc5de10e6">{"x":{"visdat":{"a5c37817a830":["function () ","plotlyVisDat"]},"cur_data":"a5c37817a830","attrs":{"a5c37817a830":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with 'Scholar'","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[1441],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[2830],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[1656],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[2348],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[2541],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[3290],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[14179],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[1149],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[1154],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[6229],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


# Pair Analysis

## Axie and Scholar


```r
Axie_Scholar = Axie[grepl("Scholar", Axie$text,ignore.case = TRUE),]

tweet_words <- Axie_Scholar %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```


```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and Scholar", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-affa6b425b0dffc89c91" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-affa6b425b0dffc89c91">{"x":{"visdat":{"a5c3461be2d2":["function () ","plotlyVisDat"]},"cur_data":"a5c3461be2d2","attrs":{"a5c3461be2d2":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with Axie and Scholar","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[62],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[490],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[36],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[29],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[708],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[205],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[1410],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[14],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[124],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[669],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Axie and AXS


```r
Axie_AXS = Axie[grepl("AXS", Axie$text,ignore.case = TRUE),]

tweet_words <- Axie_AXS %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```


```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and AXS", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-ee9a0091ed248a7d684b" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-ee9a0091ed248a7d684b">{"x":{"visdat":{"a5c3431fe0aa":["function () ","plotlyVisDat"]},"cur_data":"a5c3431fe0aa","attrs":{"a5c3431fe0aa":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with Axie and AXS","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[3],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[277],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[2],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[20],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[276],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[9],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[328],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[7],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[21],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[269],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Axie and SLP


```r
Axie_SLP = Axie[grepl("SLP", Axie$text,ignore.case = TRUE),]

tweet_words <- Axie_SLP %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```

```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and SLP", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-0445079bfd48f02a6220" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-0445079bfd48f02a6220">{"x":{"visdat":{"a5c35d35e2d1":["function () ","plotlyVisDat"]},"cur_data":"a5c35d35e2d1","attrs":{"a5c35d35e2d1":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with Axie and SLP","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[72],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[445],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[42],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[41],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[373],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[127],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[654],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[35],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[51],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[327],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Axie and Sky Mavis


```r
Axie_SkyMavis = Axie[grepl("Sky Mavis", Axie$text,ignore.case = TRUE),]

tweet_words <- Axie_SkyMavis %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```

```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and Sky Mavis", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-cce6eaa57a33d8956e12" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-cce6eaa57a33d8956e12">{"x":{"visdat":{"a5c3e6da2f":["function () ","plotlyVisDat"]},"cur_data":"a5c3e6da2f","attrs":{"a5c3e6da2f":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with Axie and Sky Mavis","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","joy","negative","positive","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[1],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[3],"type":"bar","name":"anticipation","marker":{"color":"rgba(252,141,98,1)","line":{"color":"rgba(252,141,98,1)"}},"textfont":{"color":"rgba(252,141,98,1)"},"error_y":{"color":"rgba(252,141,98,1)"},"error_x":{"color":"rgba(252,141,98,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[2],"type":"bar","name":"joy","marker":{"color":"rgba(141,160,203,1)","line":{"color":"rgba(141,160,203,1)"}},"textfont":{"color":"rgba(141,160,203,1)"},"error_y":{"color":"rgba(141,160,203,1)"},"error_x":{"color":"rgba(141,160,203,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[1],"type":"bar","name":"negative","marker":{"color":"rgba(231,138,195,1)","line":{"color":"rgba(231,138,195,1)"}},"textfont":{"color":"rgba(231,138,195,1)"},"error_y":{"color":"rgba(231,138,195,1)"},"error_x":{"color":"rgba(231,138,195,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[9],"type":"bar","name":"positive","marker":{"color":"rgba(166,216,84,1)","line":{"color":"rgba(166,216,84,1)"}},"textfont":{"color":"rgba(166,216,84,1)"},"error_y":{"color":"rgba(166,216,84,1)"},"error_x":{"color":"rgba(166,216,84,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[2],"type":"bar","name":"trust","marker":{"color":"rgba(255,217,47,1)","line":{"color":"rgba(255,217,47,1)"}},"textfont":{"color":"rgba(255,217,47,1)"},"error_y":{"color":"rgba(255,217,47,1)"},"error_x":{"color":"rgba(255,217,47,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```


## Axie and Scholarship

```r
Axie_Scholarship = Axie[grepl("Scholarship", Axie$text,ignore.case = TRUE),]

tweet_words <- Axie_Scholarship %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```




```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and Scholarship", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-2aa1ad470423dc6efd33" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-2aa1ad470423dc6efd33">{"x":{"visdat":{"a5c3768df4bd":["function () ","plotlyVisDat"]},"cur_data":"a5c3768df4bd","attrs":{"a5c3768df4bd":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with Axie and Scholarship","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[29],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[297],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[29],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[14],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[571],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[91],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[841],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[8],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[71],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[380],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```

## Axie and Manager


```r
Axie_Manager = Axie[grepl("Manager", Axie$text,ignore.case = TRUE),]

tweet_words <- Axie_Manager %>% select(id, text) %>% unnest_tokens(word,text)

my_stop_words <- stop_words %>% select(-lexicon)

tweet_words_interesting <- tweet_words %>% anti_join(my_stop_words)
```

```
## Joining, by = "word"
```

```r
bing_lex <- get_sentiments("nrc")

fn_sentiment <- tweet_words_interesting %>% left_join(bing_lex)
```

```
## Joining, by = "word"
```

```r
sentiments = fn_sentiment %>% filter(!is.na(sentiment)) %>% group_by(sentiment) %>% summarise(n=n())

sentiments = as.data.frame(sentiments)

sentiments$sentiment = as.factor(sentiments$sentiment)
```


```r
plot_ly(sentiments, x = ~sentiment,y =~n, type = "bar", color =~ sentiment )%>%
  layout(title = "Sentiments in tweets with Axie and Manager", yaxis = list(title = "Word Count"), xaxis = list(title = "Sentiments", categoryorder = "total descending"))
```

```{=html}
<div id="htmlwidget-c58b55126e6947623e31" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-c58b55126e6947623e31">{"x":{"visdat":{"a5c3b7306cf":["function () ","plotlyVisDat"]},"cur_data":"a5c3b7306cf","attrs":{"a5c3b7306cf":{"x":{},"y":{},"color":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"bar"}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Sentiments in tweets with Axie and Manager","yaxis":{"domain":[0,1],"automargin":true,"title":"Word Count"},"xaxis":{"domain":[0,1],"automargin":true,"title":"Sentiments","categoryorder":"total descending","type":"category","categoryarray":["anger","anticipation","disgust","fear","joy","negative","positive","sadness","surprise","trust"]},"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"data":[{"x":["anger"],"y":[3],"type":"bar","name":"anger","marker":{"color":"rgba(102,194,165,1)","line":{"color":"rgba(102,194,165,1)"}},"textfont":{"color":"rgba(102,194,165,1)"},"error_y":{"color":"rgba(102,194,165,1)"},"error_x":{"color":"rgba(102,194,165,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["anticipation"],"y":[100],"type":"bar","name":"anticipation","marker":{"color":"rgba(228,156,113,1)","line":{"color":"rgba(228,156,113,1)"}},"textfont":{"color":"rgba(228,156,113,1)"},"error_y":{"color":"rgba(228,156,113,1)"},"error_x":{"color":"rgba(228,156,113,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["disgust"],"y":[11],"type":"bar","name":"disgust","marker":{"color":"rgba(201,152,157,1)","line":{"color":"rgba(201,152,157,1)"}},"textfont":{"color":"rgba(201,152,157,1)"},"error_y":{"color":"rgba(201,152,157,1)"},"error_x":{"color":"rgba(201,152,157,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["fear"],"y":[7],"type":"bar","name":"fear","marker":{"color":"rgba(175,154,200,1)","line":{"color":"rgba(175,154,200,1)"}},"textfont":{"color":"rgba(175,154,200,1)"},"error_y":{"color":"rgba(175,154,200,1)"},"error_x":{"color":"rgba(175,154,200,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["joy"],"y":[130],"type":"bar","name":"joy","marker":{"color":"rgba(226,148,184,1)","line":{"color":"rgba(226,148,184,1)"}},"textfont":{"color":"rgba(226,148,184,1)"},"error_y":{"color":"rgba(226,148,184,1)"},"error_x":{"color":"rgba(226,148,184,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["negative"],"y":[27],"type":"bar","name":"negative","marker":{"color":"rgba(176,208,99,1)","line":{"color":"rgba(176,208,99,1)"}},"textfont":{"color":"rgba(176,208,99,1)"},"error_y":{"color":"rgba(176,208,99,1)"},"error_x":{"color":"rgba(176,208,99,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["positive"],"y":[227],"type":"bar","name":"positive","marker":{"color":"rgba(227,217,62,1)","line":{"color":"rgba(227,217,62,1)"}},"textfont":{"color":"rgba(227,217,62,1)"},"error_y":{"color":"rgba(227,217,62,1)"},"error_x":{"color":"rgba(227,217,62,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["sadness"],"y":[6],"type":"bar","name":"sadness","marker":{"color":"rgba(245,207,100,1)","line":{"color":"rgba(245,207,100,1)"}},"textfont":{"color":"rgba(245,207,100,1)"},"error_y":{"color":"rgba(245,207,100,1)"},"error_x":{"color":"rgba(245,207,100,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["surprise"],"y":[15],"type":"bar","name":"surprise","marker":{"color":"rgba(219,192,155,1)","line":{"color":"rgba(219,192,155,1)"}},"textfont":{"color":"rgba(219,192,155,1)"},"error_y":{"color":"rgba(219,192,155,1)"},"error_x":{"color":"rgba(219,192,155,1)"},"xaxis":"x","yaxis":"y","frame":null},{"x":["trust"],"y":[127],"type":"bar","name":"trust","marker":{"color":"rgba(179,179,179,1)","line":{"color":"rgba(179,179,179,1)"}},"textfont":{"color":"rgba(179,179,179,1)"},"error_y":{"color":"rgba(179,179,179,1)"},"error_x":{"color":"rgba(179,179,179,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
```
