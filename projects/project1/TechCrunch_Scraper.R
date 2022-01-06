##Coding 2: News Scraper
##TECHCRUNCH SCRAPER
##Abigail Chen

## libraries used for data handling
library(tidyverse)
library(rvest)
library(stringr)
library(xml2)
library(httr)  
library(tidyr) 
library(reshape2)
library(RCurl)
library(htmltidy)
library(XML)


## number of days to be scraped, can be increased for more days
Days = 7

getlinks = function(Days){
  url = "https://techcrunch.com/" ## web link to start scraping from
  
  urlF = url # urlF is introduced because url itself with change after reading one page
  # urlF is the web link we started our scraping from
  # it will be used ahead for data procesing
  
  ExitFlag = 0 # it remains zero until data till our desired date has been scraped
  
  df = data.frame() # creating a dataframe which will contain all the links and their dates
  
  CurrentDate = Sys.Date() # gets the current date from the system
  
  FilterDate = CurrentDate - Days # subtracts days from the current date to get filter date
  # it is the date until which we will extract our data
  
  while(ExitFlag == 0){ # remains in this loop until falg  is 0
    
    page <- read_html(url) # reads the entire html page
    
    WebList <- page %>% html_nodes("a") %>%
      html_attr("href") ## this step gets the list of all the web link from the page scraped above 
    
    url = WebList[length(WebList)] # resetting the url to the next page, 
    #last element of the weblist  contains list to the next page of the website 
    
    ## removing the urlF from each website
    TempWebList = gsub(urlF,"",WebList)
    
    ## loop over al the links and select the ones we want
    for (i in 1:length(WebList)) {
      
      ## try catch is used for error handling
      tryCatch(
        {
          ## the webink has date embeded in them, extracting date below
          Year = unlist(strsplit(TempWebList[i],"/"))[1] 
          Month = unlist(strsplit(TempWebList[i],"/"))[2]
          Day = unlist(strsplit(TempWebList[i],"/"))[3]
          paste0(Year,"-",Month,"-",Day)
          
          # changing datatype form character to Date
          date = as.Date(paste0(Year,"-",Month,"-",Day)) 
          
          ## updating the current date to the one extracted from the link
          CurrentDate = date 
          
          if(CurrentDate > FilterDate){ ## if current date is graeter than the filter date, we add the link and date to the datafarem defined above
            link = WebList[i] 
            # creating temporary data frame, which has link and date in it.
            Tempdf = data.frame(Date = c(date),
                                Link = c(link))
            df = rbind(df,Tempdf) ## binding the data with the one we defined above
          }
          ## if current date is out of our desired range we set the exit flag to 1
          else{ 
            ExitFlag = 1
          }
        },
        error = function(e) {
          
        }
      )
    }
  }
  
  ## gets only the unique elements 
  df = unique(df) 
  
  ## resets row indexex
  row.names(df) <- NULL 
  
  ## returns the dataframe
  return(df) 
}