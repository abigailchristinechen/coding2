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
- Getting the Links
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


 




