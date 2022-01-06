##Coding 2: Twitter API
##Topic: Axie Infinity
##Tags: "Axie", "Axie Infinity" , "AXS", "SLP", "Manager", "Scholar", "Scholarship", "Sky Mavis" 
##Abigail Chen

#Load Libraries
library("base64enc")
library("openssl")
library("httpuv")
library("twitteR")
library("tm")
library("stringr")
library("dplyr")
library("httr")
library("tidyverse")
library("tidytext")
library('plotly')

#Twitter API keys 
#Will keep this confidential, but you can generate your own Twitter API keys in the https://developer.twitter.com/en
consumerKey = 
consumerSecret = 
accessToken = 
accessSecret = 

  
## Setting up the API
  
  setup_twitter_oauth(consumerKey, consumerSecret,
                      accessToken,accessSecret)


#Section below is commented because there are limited API calls allowed. 
#So, all the words were scraped and saved into different csv files for later processing  
#These are the codes to extract specific tags/ topics in twitter
#You can specify the dates to a week using this feature

# tt = searchTwitter('Axie', n = 10000, since = '2021-01-01')
# Axie <- twListToDF(tt)
# write.csv(Axie,"Axie10000.csv", row.names = FALSE)



# tt = searchTwitter('axie infinity', n = 10000, since = '2021-01-01')
# axieinfinity <- twListToDF(tt)
# write.csv(axieinfinity,"axieinfinity10000.csv", row.names = FALSE)



# tt = searchTwitter('SLP', n = 10000, since = '2021-01-01')
# SLP <- twListToDF(tt)
# write.csv(SLP,"SLP10000.csv", row.names = FALSE)




# tt = searchTwitter('Sky Mavis', n = 10000, since = '2021-01-01')
# SkyMavis <- twListToDF(tt)
# write.csv(SkyMavis,"SkyMavis10000.csv", row.names = FALSE)



# tt = searchTwitter('Scholarship', n = 10000, since = '2021-01-01')
# Scholarship <- twListToDF(tt)
# write.csv(Scholarship,"Scholarship10000.csv", row.names = FALSE)



# tt = searchTwitter('Manager', n = 10000, since = '2021-01-01')
# Manager <- twListToDF(tt)
# write.csv(Manager,"Manager10000.csv", row.names = FALSE)


# tt = searchTwitter('Scholar', n = 10000, since = '2021-01-01')
# Scholar <- twListToDF(tt)
# write.csv(Scholar,"Scholar10000.csv", row.names = FALSE)

# tt = searchTwitter('AXS', n = 10000, since = '2021-01-01')
# AXS <- twListToDF(tt)
# write.csv(AXS,"AXS10000.csv", row.names = FALSE)


  