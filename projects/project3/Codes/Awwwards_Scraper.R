##Coding 2: Awwwards Full Scraping + Data Analysis
##Topic Description: Scraping the best websites, in the last 10 years!
##Tags: "Design", "UX/UI", "Best Websites", "Smart Design", "Web Design"
##Abigail Chen

## libraries used 
{
  ## libraries used for data handling
  library(tidyverse)
  library(rvest)
  library(stringr)
  library('xml2')
  library(httr)  
  library(tidyr) 
  library(reshape2)
  library(RCurl)
  library(htmltidy)
  library(XML)
}

####################### List of links ##############################

############################################################

##NOMINEES LIST
##scrapes all the articles links in nominees 
getNomineesList = function(){
  NomineesList = list()
  for (p in 1:312) { # there are 312 pages of nominees, manually checked this
    url = paste0("https://www.awwwards.com/websites/nominees/?page=",p)
    print(p)
    
    page <- read_html(url) # reads the entire html page
    
    WebList <- page %>% html_nodes("a") %>%
      html_attr("href") ## this step gets the list of all the web link from the page scraped above 
    
    List1 = WebList[grepl("/sites", WebList)]
    List1 = unique(List1)
    List1 = paste0("https://www.awwwards.com",List1)
    List1 = List1[4:length(List1)] # only 4 winners listed
    List1
    NomineesList = c(NomineesList,List1)
  }
  NomineesList
}

NomineesList = getNomineesList()
NomineesList = unlist(NomineesList)
# write.csv(NomineesList,"NomineesList.txt",row.names = FALSE)

############################################################
##YEARLY WINNER LIST
## scrapes all the articles links of yearly winners 
getYearList = function(){
  NomineesList = list()
  for (p in 1:2) { 
    
    url = paste0("https://www.awwwards.com/websites/sites_of_the_year/?page=",p)
    print(p)
    
    page <- read_html(url) # reads the entire html page
    
    WebList <- page %>% html_nodes("a") %>%
      html_attr("href") ## this step gets the list of all the web link from the page scraped above 
    
    List1 = WebList[grepl("/sites", WebList)]
    List1 = unique(List1)
    List1 = paste0("https://www.awwwards.com",List1)
    List1 = List1[4:length(List1)-1] # casue only 4 winners listed
    List1
    NomineesList = c(NomineesList,List1)
  }
  NomineesList
}
YearList = getYearList()
YearList = unlist(YearList)
# write.csv(YearList,"YearList.txt",row.names = FALSE)

############################################################
##MONTHLY WINNER LIST
##scrapes all the articles links of monthly winners 
getMonthList = function(){
  NomineesList = list()
  for (p in 1:5) { 
    # p = 1
    url = paste0("https://www.awwwards.com/websites/sites_of_the_month/?page=",p)
    print(p)
    
    page <- read_html(url) # reads the entire html page
    
    WebList <- page %>% html_nodes("a") %>%
      html_attr("href") ## this step gets the list of all the web link from the page scraped above 
    
    List1 = WebList[grepl("/sites", WebList)]
    List1 = unique(List1)
    List1 = paste0("https://www.awwwards.com",List1)
    List1 = List1[3:(length(List1)-4)] 
    List1
    NomineesList = c(NomineesList,List1)
  }
  NomineesList
}
MonthList = getMonthList()
MonthList = unlist(MonthList)
# write.csv(MonthList,"MonthList.txt",row.names = FALSE)


############################################################
##DAILY WINNER LIS
## scrapes all the articles links of daily winners 

getDayList = function(){
  NomineesList = list()
  for (p in 1:142) { # there are 142 pages 
    if(p<5|p == 139|p==142){NumPage = 4}else{NumPage = 3}
    p =142
    url = paste0("https://www.awwwards.com/websites/sites_of_the_day/?page=",p)
    print(p)
    
    page <- read_html(url) # reads the entire html page
    
    WebList <- page %>% html_nodes("a") %>%
      html_attr("href") ## this step gets the list of all the web link from the page scraped above 
    
    List1 = WebList[grepl("/sites", WebList)]
    List1 = unique(List1)
    List1 = paste0("https://www.awwwards.com",List1)
    List1 = List1[3:(length(List1)-NumPage)] # casue only 4 winners listed
    print(length(List1))
    NomineesList = c(NomineesList,List1)
  }
  NomineesList
}

DayList4 = getDayList()
DayList = getDayList()
DayList = unlist(DayList)
# rite.csv(DayList,"DayList.txt",row.names = FALSE)

##saved all the list to txt in local directory, to save time

####################### List of links Done ##############################

####################### Scrapping Yearly Winners ########################
###Scraping the yearly winners details
YearList = read.csv("YearList.txt")
YearList = unlist(YearList)
YearList[2]

getYearData = function(YearList){
  YearData = data.frame()
  for (y in 1:length(YearList)) {
    print(y)
    u = YearList[y]
    read = read_html(u)
    
    title = read %>%
      html_nodes("h1")%>%
      html_text()
    title
    
    subTitles1 = read %>%
      html_nodes("h3")%>%
      html_text()
    subTitles1
    description = subTitles1[1]
    description
    
    
    CList = read %>%
      html_nodes(xpath = '/html/body/div[2]/section/div/div[1]/div[3]/div[3]/div[1]/div[2]')%>%
      html_text()
    CList
    temp =  str_replace_all(CList, "[\r\n\t]" , "")
    temp =  str_replace_all(temp, "  " , "")
    temp =  gsub( "from" , "",temp)
    temp =  gsub("with" , "",temp)
    temp =  gsub("by" , "",temp)
    temp =  gsub(" " , ",",temp)
    temp = strsplit(temp,",")
    temp = unlist(temp)
    temp # "by Immersive Garden from France with 7.64"
    templist = list()
    index = 1
    for (i in 1:length(temp)) {
      if(nchar(temp[i])>0){
        templist[index] = temp[i]
        index = index +1
      }
    }
    templist = unlist(templist)
    
    by = paste(templist[1:(length(templist)-2)], collapse = ' ')
    by
    country = templist[(length(templist)-1)]
    country
    rating = templist[(length(templist))]
    rating
    
    BList = read %>%
      html_nodes( xpath = '/html/body/div[2]/section/div/div[2]/div/div/div/ul')%>%
      html_text()
    BList
    
    BList =  str_replace_all(BList, "[\r\n\t]" , "")
    
    BList = str_replace_all(BList, "  " , ",")
    
    BList = strsplit(BList,",")
    BList = unlist(BList)
    Btemplist = list()
    index = 1
    for (i in 1:length(BList)) {
      if(nchar(BList[i])>0){
        Btemplist[index] = BList[i]
        index = index +1
      }
    }
    Btemplist = unlist(Btemplist)
    Btemplist
    
    categories = Btemplist[!grepl("sites", Btemplist)]
    categories = paste(categories, collapse = ',')
    categories
    
    colors = Btemplist[grepl("sites", Btemplist)]
    colors = gsub(" sites","",colors)
    colors = paste(colors, collapse = ',')
    colors
    YearDataTemp = data.frame(Link = u,
                              Type = "Year",
                              Title = title,
                              Description = description,
                              By = by,
                              Country = country,
                              Rating = rating,
                              Categories = categories,
                              Colors = colors)
    
    YearData = rbind(YearData,YearDataTemp)
    closeAllConnections()
  }
  YearData
}
YearData = getYearData(YearList)

YearData$Country[YearData$Country == "States"] = "United States"
YearData$Country[YearData$Country == "Kingdom"] = "United Kingdom"
YearData$By = gsub("United", "",YearData$By)
YearData$Colors = gsub("Design Websites,", "",YearData$Colors)
YearData$Colors = gsub("E-commerce Websites Examples - Awwwards", "",YearData$Colors)
YearData$Country[YearData$Country == "States"] = "United States"
YearData$By = gsub("United", "",YearData$By)
YearData$Colors = gsub("Design Websites,", "",YearData$Colors)
YearData$Colors = gsub("E-commerce Websites Examples - Awwwards", "",YearData$Colors)
YearData$Country[YearData$Country == "Zealand"] = "New Zealand"
YearData$By = gsub("New", "",YearData$By)

# write.csv(YearData,"YearData.csv", row.names = FALSE)

####################### Scrapped Yearly Winners ########################


####################### Scrapping Monthly Winners ######################

MonthList = read.csv("MonthList.txt")
MonthList = unlist(MonthList)

getMonthData = function(MonthList){
  MonthData = data.frame()
  for (y in 1:length(MonthList)) {
    # y = 29
    print(y)
    u = MonthList[y]
    read = read_html(u)
    
    title = read %>%
      html_nodes("h1")%>%
      html_text()
    title
    
    subTitles1 = read %>%
      html_nodes("h3")%>%
      html_text()
    subTitles1
    description = subTitles1[1]
    description
    
    
    CList = read %>%
      html_nodes(xpath = '/html/body/div[2]/section/div/div[1]/div[3]/div[3]/div[1]/div[2]')%>%
      html_text()
    CList
    temp =  str_replace_all(CList, "[\r\n\t]" , "")
    temp =  str_replace_all(temp, "  " , "")
    temp =  gsub( "from" , "",temp)
    temp =  gsub("with" , "",temp)
    temp =  gsub("by" , "",temp)
    temp =  gsub(" " , ",",temp)
    temp = strsplit(temp,",")
    temp = unlist(temp)
    temp # "by Immersive Garden from France with 7.64"
    templist = list()
    index = 1
    for (i in 1:length(temp)) {
      if(nchar(temp[i])>0){
        templist[index] = temp[i]
        index = index +1
      }
    }
    templist = unlist(templist)
    
    by = paste(templist[1:(length(templist)-2)], collapse = ' ')
    by
    country = templist[(length(templist)-1)]
    country
    rating = templist[(length(templist))]
    rating
    
    BList = read %>%
      html_nodes( xpath = '/html/body/div[2]/section/div/div[2]/div/div/div/ul')%>%
      html_text()
    BList
    
    BList =  str_replace_all(BList, "[\r\n\t]" , "")
    
    BList = str_replace_all(BList, "  " , ",")
    
    BList = strsplit(BList,",")
    BList = unlist(BList)
    Btemplist = list()
    index = 1
    for (i in 1:length(BList)) {
      if(nchar(BList[i])>0){
        Btemplist[index] = BList[i]
        index = index +1
      }
    }
    Btemplist = unlist(Btemplist)
    Btemplist
    
    categories = Btemplist[!grepl("sites", Btemplist)]
    categories = paste(categories, collapse = ',')
    categories
    
    colors = Btemplist[grepl("sites", Btemplist)]
    colors = gsub(" sites","",colors)
    colors = paste(colors, collapse = ',')
    colors
    MonthDataTemp = data.frame(Link = u,
                               Type = "Month",
                               Title = title,
                               Description = description,
                               By = by,
                               Country = country,
                               Rating = rating,
                               Categories = categories,
                               Colors = colors)
    
    MonthData = rbind(MonthData,MonthDataTemp)
    closeAllConnections()
  }
  MonthData
}
MonthData = getMonthData(MonthList)

MonthData = rbind(MonthData1,MonthData2,MonthData3,MonthData4,MonthData5)

MonthData$Country[MonthData$Country == "States"] = "United States"
MonthData$Country[MonthData$Country == "Kingdom"] = "United Kingdom"
MonthData$By = gsub("United", "",MonthData$By)
MonthData$Colors = gsub("Design Websites,", "",MonthData$Colors)
MonthData$Colors = gsub("E-commerce Websites Examples - Awwwards", "",MonthData$Colors)
MonthData$Country[MonthData$Country == "Zealand"] = "New Zealand"
MonthData$By = gsub("New", "",MonthData$By)

MonthData = unique(MonthData)
# write.csv(MonthData,"MonthData.csv", row.names = FALSE)

####################### Scraped Monthly Winners ######################

####################### Scraping Daily Winners ######################

DayList = read.csv("DayList.txt")
DayList = unlist(DayList)
DayList[1]
(length(DayList)/31)
getDayData = function(DayList){
  DayData = data.frame()
  for (y in 1:length(DayList)) {
    # y = 4460
    print(y)
    u = DayList[y]
    read = read_html(u)
    
    title = read %>%
      html_nodes("h1")%>%
      html_text()
    title
    
    subTitles1 = read %>%
      html_nodes("h3")%>%
      html_text()
    subTitles1
    description = subTitles1[1]
    description
    
    
    CList = read %>%
      html_nodes(xpath = '/html/body/div[2]/section/div/div[1]/div[3]/div[3]/div[1]/div[2]')%>%
      html_text()
    CList
    temp =  str_replace_all(CList, "[\r\n\t]" , "")
    temp =  str_replace_all(temp, "  " , "")
    temp =  gsub( "from" , "",temp)
    temp =  gsub("with" , "",temp)
    temp =  gsub("by" , "",temp)
    temp =  gsub(" " , ",",temp)
    temp = strsplit(temp,",")
    temp = unlist(temp)
    temp # "by Immersive Garden from France with 7.64"
    templist = list()
    index = 1
    if(!is.null(temp)){
      for (i in 1:length(temp)) {
        if(nchar(temp[i])>0){
          templist[index] = temp[i]
          index = index +1
        }
      }
    }
    
    templist = unlist(templist)
    if(length(templist) > 3){
      by = paste(templist[1:(length(templist)-2)], collapse = ' ')
      by
      country = templist[(length(templist)-1)]
      country
      rating = templist[(length(templist))]
      rating
    }
    BList = read %>%
      html_nodes( xpath = '/html/body/div[2]/section/div/div[2]/div/div/div/ul')%>%
      html_text()
    BList
    
    BList =  str_replace_all(BList, "[\r\n\t]" , "")
    
    BList = str_replace_all(BList, "  " , ",")
    
    BList = strsplit(BList,",")
    BList = unlist(BList)
    Btemplist = list()
    index = 1
    if(!is.null(BList) & !is.na(nchar(BList[i])) ){
      for (i in 1:length(BList)) {
        if(nchar(BList[i])>0){
          Btemplist[index] = BList[i]
          index = index +1
        }
      }
    }
    Btemplist = unlist(Btemplist)
    Btemplist
    
    categories = Btemplist[!grepl("sites", Btemplist)]
    categories = paste(categories, collapse = ',')
    categories
    
    colors = Btemplist[grepl("sites", Btemplist)]
    colors = gsub(" sites","",colors)
    colors = paste(colors, collapse = ',')
    colors
    if(is.null(country)){country = ""}
    if(is.null(rating)){rating = ""}
    DayDataTemp = data.frame(Link = u,
                             Type = "Day",
                             Title = title,
                             Description = description,
                             By = by,
                             Country = country,
                             Rating = rating,
                             Categories = categories,
                             Colors = colors)
    
    DayData = rbind(DayData,DayDataTemp)
    closeAllConnections()
  }
  DayData
}

DayData = getDayData(DayList)
DayData$Country[DayData$Country == "States"] = "United States"
DayData$Country[DayData$Country == "Kingdom"] = "United Kingdom"
DayData$Country[DayData$Country == "Zealand"] = "New Zealand"
DayData$By = gsub("United", "",DayData$By)
DayData$By = gsub("New", "",DayData$By)
DayData$Colors = gsub("Design Websites,", "",DayData$Colors)
DayData$Colors = gsub("E-commerce Websites Examples - Awwwards", "",DayData$Colors)
DayData = unique(DayData)

# write.csv(DayData,"DayData.csv", row.names = FALSE)

####################### Scrapped Daily Winners ######################


# NomineesList = read.csv("NomineesList.txt")
# NomineesList = unlist(NomineesList)
# getNomineesData = function(NomineesList){
#   NomineesData  = data.frame()
#   for (n in 1:length(NomineesList)) {
#     # n = 240
#     print(n)
#     u = NomineesList[n]
#     
#     read = read_html(u)
#     
#     title = read %>%
#       html_nodes("h1")%>%
#       html_text()
#     title
#     
#     
#     subTitles1 = read %>%
#       html_nodes("h3")%>%
#       html_text()
#     subTitles1
#     description = subTitles1[1]
#     description
#     
#     CList = read %>%
#       html_nodes(xpath = '/html/body/div[2]/section/div/div[1]/div[1]/div/div[1]/div')%>%
#       html_text()
#     CList
#     temp =  str_replace_all(CList, "[\r\n\t]" , "")
#     temp =  str_replace_all(temp, "  " , "")
#     temp =  gsub( "from" , "",temp)
#     temp =  gsub("with" , "",temp)
#     temp =  gsub("by" , "",temp)
#     temp =  gsub(" " , ",",temp)
#     temp = strsplit(temp,",")
#     temp = unlist(temp)
#     temp # "by Immersive Garden from France with 7.64"
#     
#     if(!is.null(temp)){
#       country = temp[length(temp)]
#       country
#     }
#     
#     rating = ""
#     by = ""
#     BList = read %>%
#       html_nodes( xpath = '/html/body/div[2]/section/div/div[1]/div[3]/div[2]/div[3]/ul')%>%
#       html_text()
#     BList
#     
#     BList =  str_replace_all(BList, "[\r\n\t]" , "")
#     
#     BList = str_replace_all(BList, "  " , ",")
#     
#     BList = strsplit(BList,",")
#     BList = unlist(BList)
#     Btemplist = list()
#     index = 1
#     if(!is.null(BList)){
#       for (i in 1:length(BList)) {
#         if(nchar(BList[i])>0){
#           Btemplist[index] = BList[i]
#           index = index +1
#         }
#       }
#       Btemplist = unlist(Btemplist)
#       Btemplist
#       
#       categories = Btemplist[!grepl("sites", Btemplist)]
#       categories = paste(categories, collapse = ',')
#       categories
#       
#       colors = Btemplist[grepl("sites", Btemplist)]
#       colors = gsub(" sites","",colors)
#       colors = paste(colors, collapse = ',')
#       colors
#     }else{
#       categories = ""
#       colors = ""
#     }
#     
#     if(is.null(country)){country = ""}
#     if(is.null(rating)){rating = ""}
#     NomineesDataTemp = data.frame(Link = u,
#                              Type = "Nominees",
#                              Title = title,
#                              Description = description,
#                              By = by,
#                              Country = country,
#                              Rating = rating,
#                              Categories = categories,
#                              Colors = colors)
#     
#     NomineesData = rbind(NomineesData,NomineesDataTemp)
#     closeAllConnections()
#   }
#   NomineesData
# }
# NomineesData = getNomineesData(NomineesList[239:241])
# write.csv(NomineesData,"NomineesData.csv", row.names = FALSE)












