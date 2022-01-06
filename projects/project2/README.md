[Coding 2 : Webscraping] [RStudio] [Twitter API]
**<h2>Project 2 : Twitter API + Sentiment Analysis for Axie Infinity</h2>**
*Tags: Axie, Axie Infinity, AXS, SLP, Sky Mavis, Scholar, Scholarship, Manager*
*<h5>FOR MS BA 2022</h5>*


>This repository contains the detailed description and guide for my Project 2: submission for Coding 2. I used [Twitter](https://www.twitter.com) as the primary source of the tweets.  I got the Access Codes via the [Twitter Developer Account](https://developer.twitter.com/).  

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project2/Twitter%20Developer%20Screenshot.png" width="800" height="400"/>


1. <h3>Why Axie Infinity? </h3>

Have you ever seen these cute creatures? Are you into NFT’s?  How about Play-to-earn (P2E) games? 
<img src="https://raw.githubusercontent.com/abigailchristinechen/coding2/main/projects/project2/Axie%20Infinity%20Banner%201.jpg.webp" width="800" height="400"/>

This is one of the first Twitter scraping and data analysis done for a trending play to earn scheme called Axie Infinity?

Why Axie Infinity?  If you like games and you can spend hours and hours gaming and playing games, then why not play and earn money at the same time?  Are you familiar with grinding in game, where you spend hours and hours levelling up? In Axie, you can do so while earning money as well.  

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project2/Axie%20Gameplay.jpg" width="800" height="400"/>

How do you get started? 

<img src="https://raw.githubusercontent.com/abigailchristinechen/coding2/main/projects/project2/Axie%20Scholarship.jpg.webp" width="800" height="400"/>

There are multiple ways you can play and earn via the game, one is if you buy your own “Axies” which are the in game assets. This means you will be funding your own capital. In order to play, you will be needing 3 axies which can cost from "$1,000-$1,500" for a set of 3, depending on the skills, classes and combinations.  Another way for you to earn is for you to buy some Axies and breed them yourself to make baby Axies, which you can then sell in the marketplace. 

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project2/Scholarships.jpg" width="800" height="400"/>

If you have no capital, you can apply to a "scholarship" and be a "scholar", the capital owner will be your "manager".
As a scholar, you'll trade of your time and skills to play the game, while the manager will be providing you with the capital to play.  Then the "scholar" and the "manager", will split the earnings depending on their agreement.  With this quick analaysis, I will be looking at some sentiments for certain tags related to the game Axie Infinity.

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project2/Axie%20Manager%20Services.jpg" width="800" height="400"/>

You'll find more details below. Enjoy :) All codes can be found in Project 2 repository -> [Here](https://github.com/abigailchristinechen/coding2/blob/main/projects/project2)

Contents:
- Key Tags
- Libraries
- Scope & Limitations
- Challenges
- Twitter API
- Sentiment Analysis
- Pair Sentiment Analysis


1. <h3>Keywords to be Scraped</h3>
- Axie
- axie infinity
- AXS
- SLP
- SkyMavis
- Scholarship
- Manager 
- Scholar

2. <h3>Libraries</h3>
Here are the libraries I used.  The library used for the sentiment analysis is the textdata, I read that this isn’t going to provide you the same accuracy as using the language model, but it’s going to get you to the fastest solution (with some accuracy tradeoff).
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project2/Lib.png" width="150" height="150"/>

3.  <h3>Scope & Limitations</h3>
Due to the limited number of tweets allowed to be scraped by my developer account, I will be limiting the scraping to 10,000 tweets per "Tag".  For further continuation of the analysis, and further expansion of the trends with Axie Infinity, more tweets can definitely  beanalyzed. Also, it will also be great to include a lexicon that's more in-line with the crypto slang, and this will probably give better sentiment analysis. 

4.  <h3>Challenges</h3>
Here are some key things to note when you want to scrape from Twitter. One, applying for the twitter developer API takes time, and takes longer during the holidays.  There are also different account tiers that can help you scrape more information with lesser restrictions.  I still have my application for the education tier for million tweet scrapes pending. Aside from this, getting the Twitter API to work is challenging and can be very tricky, you need to set the correct settings to get it to work. :) 

5. <h3>Twitter API</h3>
This is what you'll use to connect with the Twitter API.
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project2/Twitter%20API%20Config.png" width="500" height="100"/>

And to get the tweets on certain tags, you can just change the topics depending on your topic of interest. Then you just have to repeat these for various tags.

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project2/Twitter%20Scrape.png" width="500" height="250"/>

6. <h3>Sentiment Analysis </h3>
For the sentiment analysis, you first need to separate the tweets, and breakdown down into words.  Generate a list of this words and compare it with your chosen lexicon. Then, you need to get the "interesting tweets", and load the sentiment analyzer.
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project2/Twitter.png" width="500" height="250"/>

After that, you need to create a join to combine these two.  Then create a quick summary of the general sentiments based on the tweet tags. Then create a quick visual of the summaries

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project2/Sentiment.png" width="500" height="250"/>

<h3>List of Sentiment Analysis Done</h3>
-8 Sentiment Analysis on each Twitter topic / tag on Axie Infinity
-6 Pair Sentiment Analysis based on two different tags

7. <h3>Results</h3> 
After calling the Getlinks Function, and Getdata Function, we now have our scraped data from TechCrunch. We can write it into a .csv file using the write.csv function.  We can then use these information to conduct further analysis on startup trends and happenings for the various years, and maybe try to see what's up in the next coming years😉 
