[Coding 2 : Webscraping] [RStudio] [Twitter API]
**<h2>Project 2 : Twitter API + Sentiment Analysis for Axie Infinity</h2>**
*Tags: Axie, Axie Infinity, AXS, SLP, Sky Mavis, Scholar, Scholarship, Manager*
*<h5>FOR MS BA 2022</h5>*


>This repository contains the detailed description and guide for my Project 2: submission for Coding 2. I used [Twitter](https://www.twitter.com) as the primary source of the tweets.  I got the Access Codes via the [Twitter Developer Account](https://developer.twitter.com/).  

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project2/Twitter%20Developer%20Screenshot.png" width="800" height="400"/>


1. <h3>Why Axie Infinity? </h3>

Are you into NFT’s?  How about Play-to-earn (P2E) games? 
<img src="https://raw.githubusercontent.com/abigailchristinechen/coding2/main/projects/project2/Axie%20Infinity%20Banner%201.jpg.webp" width="800" height="400"/>

This is one of the first Twitter scraping and data analysis done for a trending play to earn scheme called Axie Infinity?

Why Axie Infinity?  If you like games and you can spend hours and hours gaming and playing games, then why not play and earn money at the same time?  Are you familiar with grinding in game, where you spend hours and hours levelling up? In Axie, you can do so while earning money as well.  

<img src="https://raw.githubusercontent.com/abigailchristinechen/coding2/main/projects/project2/Axie%20Infinity%20Banner%201.jpg.webp" width="800" height="400"/>

How do you get started? 

There are multiple ways you can play and earn via the game, one is if you buy your own “Axies” which are the in game assets. This means you will be funding your own capital. In order to play, you will be needing 3 axies which can cost from "$1,000-$1,500" for a set of 3, depending on the skills, classes and combinations.  Another way for you to earn is for you to buy some Axies and breed them yourself to make baby Axies, which you can then sell in the marketplace. 

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
