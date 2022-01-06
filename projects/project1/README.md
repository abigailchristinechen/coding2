[Coding 2 : Webscraping] [RStudio]
**<h2>Project 1 : TechCrunch Webscraping</h2>**
*<h5>FOR MS BA 2022</h5>*


>This repository contains the detailed description of my Project 1: submission for Coding 2. I used the website, [TechCrunch](https://www.techcrunch.com). 

<img src="https://startup.info/wp-content/uploads/2020/02/techcrunch-logo-1-1000x600.png" width="400" height="180"/>

1. <h3>Why TechCrunch?</h3>
TechCrunch started back in 2005, delivering startup news for more than a decade already. It is one of the best reliable online news sources for anything technology and startup related happenings, whether it be fundings, awards, mergers and acquisitions, strategies, hardware and software products from all around the world.  This site is a nice go to site to get started with your tech journey.  They also have their own conferences showcasing the upcoming startups and the great tech leaders of our time. 

I choose to scrape this site, for 2 reasons: first because I have been following this site for more than 10 years since 2011, and secondly, I haven't found a webscraper for it. So, I think it will be a great idea to build a scraper for it and maybe generate more analysis for it in the future ;) .

You'll find more details below. Enjoy :) All codes can be found in Project 1 repository -> [Here](https://github.com/abigailchristinechen/coding2/blob/main/projects/project1)

Code Contents:
- Libraries
- GetLink Function
- Error Catching 
- GetData Function
- Results

1. <h3>Libraries Used</h3>
    1.  Here are the libraries I used: '
        <img src= "https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/Libraries%20Used.png" width="300" height="180"/>
             

2. <h3>GetLink Function </h3> 
    1.  To start, we need to go to the TechCrunch webpage, and urlF is introduced because url itself with change after reading one page.  We also have to determine the number of days we want to collect with the Days variable, for this project I decided to collect a week for of articles.  I first ran the code around Early December 2021, so the articles scraped list in the 

  
  ExitFlag = 0 # it remains zero until data till our desired date has been scraped
  
  df = data.frame() # creating a data frame which will contain all the links and their dates
  
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

    
    1.  Here is the Get Link function 
      <img src= "https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/Getlink%20Code%201.png" width="500" height="200"/>
       
       <img src= "https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/Getlink%20Code%202.png" width="500" height="200"/>
      
        
        
     2. The *Salaries Dataset* contains 3 tables from which I only used the Salaries per region, because the other tables were about the various departments in the universities. Here are the details for [Table 3](https://github.com/abigailchristinechen/de1/blob/main/Term1/Table%203.png): 
        
        <img src= "https://github.com/abigailchristinechen/de1/blob/main/Term1/Table%203.png" width="250" height="140"/>
       
    Here's the [EER diagram](https://github.com/abigailchristinechen/de1/blob/main/Term1/EER%20Diagram.png) for the relationship: 
    
      <img src= "https://github.com/abigailchristinechen/de1/blob/main/Term1/EER%20Diagram.png" width="700" height="300"/>

3. <h3>Analytics </h3> 
   - For this project, and for reproducibility here is the -> [Analytics Plan](https://github.com/abigailchristinechen/de1/blob/main/Term1/Analytics%20Plan.png) , quick summary on the steps
        - Loading the tables
        - Creating a data warehouse called dw_uni_analysis
        - Creating data marts to achieve 15 quick views
     <img src= "https://github.com/abigailchristinechen/de1/blob/main/Term1/Analytics%20Plan.png" width="600" height="300"/>

4. <h3>Analytics Layer</h3> 
        - Here is the -> [Data Warehouse](https://github.com/abigailchristinechen/de1/blob/main/Term1/data_warehouse_etl_uni.png), consisting of 3 dimensions: Rankings, Scores and Salaries. 
     <img src= "https://github.com/abigailchristinechen/de1/blob/main/Term1/data_warehouse_etl_uni.png" width="1000" height="200"/>
     
       
5. <h3> Data Marts</h3> 
- The codes for the Data Marts are -> [Here](https://github.com/abigailchristinechen/de1/blob/main/Term1/codes/data_warehouse_etl_uni.sql)

**<h5> Data View 1: Summary of all Universities? </h5>**
<h6> This data covers the top 1526 universities globally. :) </h6>


**<h5> Data View 2: Summary of top 1000 universities </h5>**
<h6> This data covers the top 1000 universities globally </h6>

**<h5> Data View 3: Summary of top 100 universities </h5>**
<h6> This data covers the top 100 universities globally </h6>


**<h5> Data View 4: what countries has the most ranked universities  </h5>**
<h6> This data shows US, Japan, UK, China India as the top 5 countries with the most ranked universities, </h6>
<h6> Hungary has 9 universities ranked, unfortunately CEU is not one of it :( </h6>


**<h5> Data View 5: what are the average scores of the countries with ranked universities </h5>**
<h6> This data view is really useful to see where the various countries scored high in. </h6>
<h6> For Student Prof ratio : Japan is the lowest out of the top 5 countries(based on the count of uni per country). </h6>
<h6> For Country Diversity: UK ranks the highest followed by the US. </h6>
<h6> with UK having almost double the international population of US universities. </h6>
<h6> Japan, China and India are mostly dominated by local students. </h6>

**<h5> Data View 6: what are the top 10 countries based on count of university and what are their details </h5>**
<h6> top 10 countries based on the count of universities </h6>   
    
**<h5>Data View 7: what are the average rankings per country </h5>**
<h6>  We can see that Singapore, Netherlands, Hongkong, Switzerland and Belgium have the highest average rank. </h6>
<h6> Note: that Singapore only had two unis in the ranking. </h6>

**<h5> Data View 8: top universities in the US </h5>**
<h6> - Here we can see the top US universities with details. </h6>
<h6> - The salaries data I found was for US universities, and didn't have complete salaries for all the US universities. </h6>
<h6> - 8/10 top universities are from the US. </h6>
 
**<h5> Data View 9: top universities in China </h5>**
**<h5> Data View 10: top universities in Japan </h5>**
**<h5> Data View 11: top universities in the UK </h5>**

    
**<h5> Data View 12: which universities have the highest research scores? </h5>**
<h6> - We can see that the top 1 uni, which is University of Oxford has 100 for it's research score. </h6>
<h6> - Followed by Harvard University and University of Cambridge with a reserach score of 99.  </h6>


**<h5> Data View 13: which universities have the highest citations scores? </h5>**
<h6> - We can see here that 21 universities got a perfect score in the citations.  </h6>


**<h5>Data View 14: which universities have the highest teaching scores? </h5>**
<h6> - 7/10 top teaching unis are from the US.  </h6>
<h6> - 2/10 top teaching unis are from the UK. </h6>
<h6> - 1/10 Peking University from China is ranked 8th in teaching score, ranking higher than Princeston University. </h6>


**<h5>Data View 15: top universities in Hungary </h5>**
<h6> - Can't forget to check Hungary too 😉. </h6>

6. <h3>Events</h3> 
I also created an event scheduler to refresh the data, you can tweak it to a specific time frame you want  -> [Here](https://github.com/abigailchristinechen/de1/blob/main/Term1/codes/university_event_scheduler.sql)
