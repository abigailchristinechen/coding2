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
    Here are the libraries I used:
    
   <img src= "https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/Libraries%20Used.png" width="300" height="180"/>
             

2. <h3>GetLink Function </h3> 
   To start, we need to go to the TechCrunch webpage, and urlF is introduced because url itself with change after reading one page.  We also have to determine the number of days we want to collect with the Days variable, for this project I decided to collect a week for of articles.  I first ran the code around Early December 2021, and the articles scraped list are in the [ListLinks](https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/listLinks.txt)

 <img src= "https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/Getlink%20Code%201.png" width="500" height="200"/>
       
 <img src= "https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/Getlink%20Code%202.png" width="500" height="200"/>
  
3. <h3>Error Catching</h3> 
This part of the code tries to extract the embedded dates, fix the data forms from character to Date format, creating a temporary data frame which has a link and the date in it, and rbinding it all into one list.  
 <img src= "https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/Error%20Handling.png" width="600" height="400"/> 
   
4. <h3>GetData Function</h3> 
This is where we extract further information from the links we generated from the getlink function. The first part will be a loop that will go over the generated data frame awhile ago.  

 <img src= "https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/Loop.png" width="1000" height="20"/> 

This is where we will generate a new dataframe that will store all the new information from the websites we scraped.  Here, we will be getting the links, reading the page, and then extracting the information such as the title, subtitles, and will be piping it.
 <img src= "https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/GetData%201.png" width="600" height="400"/> 

Here, we will be fixing the extracted text, and combining it into one list -> [Here's a Sample](https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/Scraped%20Articles.csv)

 <img src= "https://github.com/abigailchristinechen/coding2/blob/main/projects/project1/GetData%202.png" width="500" height="200"/>

5. <h3>Results</h3> 
After calling the Getlinks Function, and Getdata Function, we now have our scraped data from TechCrunch. We can write it into a .csv file using the write.csv function.  We can then use these information to conduct further analysis on startup trends and happenings for the various years, and maybe try to see what's up in the next coming years😉 
