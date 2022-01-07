[Coding 2 : Webscraping] [RStudio] [Awwwards] [Design] [Data]
**<h2>Project 3 : Awwwards Full Web Scraping  + Data Analysis</h2>**
*<h5>FOR MS BA 2022</h5>*


>This repository contains the detailed description and guide for my Project 3: submission for Coding 2. I used [Awwwards](https://www.awwwards.com) as the primary source of the data I scraped.  
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW1.png" width="800" height="400"/>

Content:
- Why Awwwards
- What Can We Find
- Scope & Limitations
- Challenges
- Scraping Methodology
- Libraries
- Getting the Links
- Links Sample
- Scraping the Information
- Results 

# Why Awwwards?
The goal of this project is to scrape the site [**Awwwards**](https://www.awwwards.com).  It is a website primarily focused on design, creativity and innovation for various platforms like web sites, mobile sites, AR/VR and other things on the internet.  This is really interesting because we can see the design trends, and digital visuals that are considered "best" depending on different criteria like "Design", "Usability", "Content", "Creativity", "Mobile", "Developer", then there will be a "Total Rating" which will rank the site for the awards.  Awwwards, is used as a design benchmark in the design community.  Designers and non-designers use it to find inspirations for their own projects.

There aren't a lot of datasets for design, and I intend to start with this to build my own datasets, with the goal of making digital design "smarter" and more "intuitive" by being powered by data.  

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW2.png" width="800" height="400"/>


## What Can We Find?
You can also see the technologies people use as the it evolves to build their digital products like Figma, API's, PHP, Shopify, various Javascripts, Laravel, Webpack, CSS, and others.  

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW13.png" width="800" height="350"/>

You can also see the top Countries ranked, and you can check out which country/ agency is good in designing what kinds of interfaces.  

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW14.png" width="800" height="350"/>

These are the various tags of the various websites:
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW15.png" width="800" height="350"/>

These are the various categories of the various websites:
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW16.png" width="800" height="250"/>

We can also find the color themes:
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW11.png" width="800" height="80"/>

## Scope & Continuity 
For this project, I will be scraping the ALL of the yearly winners, monthly winners, daily winners, and nominees from Awwwards.  The data will be dating from 2011 up to December 2021. The graphs and representations here will give a very basic overview of the dataset, but I intend to continue and perform extended analysis to analyze the trends and the evolution of digital design. 

We can see the selection for the nominees, daily awardees, monthly awardees, and yearly awardees. 
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW17.png" width="800" height="100"/>

This is what it looks like for the nominees:
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW4.png" width="800" height="300"/>

This is what it looks like for the monthly winners:
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW6.png" width="800" height="300"/>

This is what it looks like for the yearly winners:
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Photos/AW5.png" width="800" height="300"/>

I will be scraping the ALL of the yearly winners, monthly winners, daily winners, and nominees from Awwwards.  The data will be dating from 2011 up to December 2021. The graphs and representations here will give a very basic overview of the dataset, but I intend to continue and perform extended analysis to analyze the trends and the evolution of digital design.

## Challenges
One of my initial goals was to also scrape the various subratings ("Design", "Usability", "Creativity", "Content", "Mobile") within the site. But these subratings are in an animation.  So, I was only able to scrape the "Total Ratings".  Another challenge would be scraping the media from the site, since these photos/gif/animations are mostly snippets of the dfferent design websites, it would've been really nice to be able to run some image processing on it, to see the visual design evolution in the last decade.

## Scraping Methodology 
1. (Get the Links) In brief summary, first, all the articles link for "Daily", "Monthly" and "Yearly" winners, along with the "Nominated" articles were scrapped and their web links were saved in a separate ".txt" file. 
2. (Scrape the Data) The ".txt" files were read to get the list of web links saved earlier.  These links were used to scrape "Title", "Description", "Country", "Author","Rating", "Categories" and "Colors" for "Daily", "Monthly" and "Yearly" winners. The scrapped data was saved as "csv" files.
3. (Note:) For "Nominees" the "Rating" was not available, colors and authors couldn't be scrapped and rest was done as mentioned above. 

## Libraries

Here are the libraries used:

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/Lib.png" width="200" height="150"/>

## Getting the Links

To get the website links, we will need to run 4 versions of the code.

This is for getting the list for ALL the daily winners:

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Day_List.png" width="500" height="250"/>

This is for getting the list for ALL  the monthly winners:

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Month_List.png" width="500" height="250"/>

This is for getting the list for ALL the yearly winners:

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Year_List.png" width="500" height="250"/>

This is for getting the list for ALL the nominees:

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Nom_List.png" width="500" height="250"/>

## Links Sample:

The generated lists can then be found [Here](https://github.com/abigailchristinechen/coding2/tree/main/projects/project3/List%20of%20Sites):

This is the generated list for ALL the daily winners:

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/List%20of%20Sites/AW_List1.png" width="400" height="200"/>

This is the generated list for ALL the monthly winners:

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/List%20of%20Sites/AW_List2.png" width="400" height="200"/>

This is the generated list for ALL the yearly winners:

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/List%20of%20Sites/AW_List4.png" width="400" height="200"/>

This is the generated list for ALL the Nominees:

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/List%20of%20Sites/AW_List3.png" width="400" height="200"/>

## Scraping the Information
All the codes, I used can be found [Here](https://github.com/abigailchristinechen/coding2/tree/main/projects/project3/Codes):

Here is a code snap for getting the Yearly Winners information, it will be similar for the Monthly, and Daily winners as well.
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Year_Scrape.png" width="500" height="350"/>

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Year_Scrape2.png" width="500" height="350"/>

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Year_Scrape3.png" width="500" height="350"/>

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Year_Scrape4.png" width="500" height="350"/>

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Year_Scrape5.png" width="500" height="350"/>

## Results
For the results, I decided to use Plotly and generate histograms. 

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Res_Viz.png" width="500" height="80"/>
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Code%20Snaps/AW_Res_Viz2.png" width="500" height="80"/>

Here is a quick summary of everything I scraped. 
For Winners: Title, Description, Country, Author, Rating, Categories, Colors, Technologies, Industry, Tags, Rating For Nominees: Title, Description, Country, Author, Rating, Technologies, Industry, Tags

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Results/AW_Res_Tot.png" width="500" height="150"/> 

And here are the sample visuals of it. Enjoy. :) 

The spread of yearly winners rating is the least of all three and its mean lies around 8.0.

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Results/AW_Res1.png" width="500" height="350"/>

The mean and spread of the monthly winners spread has moved towards higher ratings compared to the daily winners.

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Results/AW_Res2.png" width="500" height="350"/>

The rating spread shows normal distribution with mean lying somewhere at 7.3.

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Results/AW_Res3.png" width="500" height="350"/>

Yearly winners are France and Netherlands and are followed by the US and Denmark respectively.
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Results/AW_Res4.png" width="500" height="350"/>

Monthly winner is the US followed by France; however, Netherlands have displaced the UK at the third spot.
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Results/AW_Res7.png" width="500" height="350"/>

The United States has the most “Daily Winners” articles. France comes at second while UK stands at third position.

<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Results/AW_Res6.png" width="500" height="350"/>

For the Nominees, the United States has the most nominations with 2400 followed by the United Kingdom at 1087.
<img src="https://github.com/abigailchristinechen/coding2/blob/main/projects/project3/Results/AW_Res5.png" width="500" height="350"/>





