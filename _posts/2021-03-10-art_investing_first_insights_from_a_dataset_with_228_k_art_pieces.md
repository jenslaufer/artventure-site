---
title: "Data-Driven Art Investing"
subtitle: First Insights from an Art investor's data set with +228k artworks
header:
  image: /assets/img/dataset.jpeg
  caption: Plot by Author
---



















A few weeks ago I started my ["Artventure"](https://medium.datadriveninvestor.com/5-reasons-why-i-want-to-invest-in-art-this-year-a1b8937f2c38) of investing in physical art pieces. As a software-/machine learning engineer and data analyst, I want to follow a data-driven approach, although I am sure that my journey won't be just dead-dry analysis as art is pure emotions. To get the answers for my [questions](https://artventure.me/data_driven_art_investment_what_questions_i_want_to_get_answered/) I needed data, which I found on a website [Expresso Beans](https://expressobeans.com). The website is an art collector's community resource built and maintained by a volunteer staff. Although the design of the website is old-fashioned, it's a gold mine for art pieces. Thanks to the community for this excellent website.

To gain insights from the website's data with an analyst's toolset I developed a web scraper in Python which extracted the raw data to a MongoDB database. From the database, I was able to do a first exploratory data analysis (EDA) with the help of R, which I prefer for data analysis instead of Python.

In this article, I want to share the results of the first analysis.

### Overview

![Artinvestor's Data Set Overview](https://image-84nn9nef4.s3.amazonaws.com/overall_overview.jpeg)


The data set holds information about over 228,000 art pieces in 27 art classes from more than 17,000 artists. For about 9% (~21,000) of all artwork there is basic pricing information available like original-, average-, lowest- and highest price.

### What variables describe the artworks?

First, you have the name of the art piece, the status, the release date, the class, the size (width and height), the technique, the paper in case it's on paper. You have the Artist's name and her pseudonym, the number of collections and the run. There are several prices available for some of the art pieces like the original-,lowest- and highest price, but as well an overall and 6-month average price.

Not all variables are filled for every entry.

![Artinvestor's Data Set Features](https://image-84nn9nef4.s3.amazonaws.com/features.jpeg)

### How old are the art pieces?

Art is a very broad field. A question, that interested me from the beginning was how old the art pieces in the data set are. You can see that about 80% are from the last 20 years. The oldest art piece in the data set is from 1662.

The data set is basically about modern art.


![Artinvestor's Data Set Age Artworks](https://image-84nn9nef4.s3.amazonaws.com/age.jpeg)

### What are the most common art classes are in the data set?

I found out that there are 27 art classes in the data set, however, the classes are uneven distributed with many exotic classes like "magnets", "button" or "backstage passes". The most common art classes are Posters, Original Art and Art Prints, they make altogether almost 90% of all art classes in the data set.


![Artinvestor's Data Set Age Artworks](https://image-84nn9nef4.s3.amazonaws.com/art_classes.jpeg)


### What are the art pieces with the highest price increase?

As an aspiring investor in art, I am interested in the art pieces with the highest price increases. Remember, I want to invest in art that I love and that I can get for a low price with the chance for a high price gain.

To answer the question, I evaluated which has art pieces have the highest relative and absolute price increases. There are artworks with more than 1000%, which is impressive. Both charts have many art pieces from artists like KAWS, Banksy or Space Invader. It brought me to my next question: Which are artists with the highest price increase?



![Artinvestor's Data Set Artworks with highest absolute price increase](https://image-84nn9nef4.s3.amazonaws.com/price_increase.jpeg)


![Artinvestor's Data Set Artworks with the highest relative price increase](https://image-84nn9nef4.s3.amazonaws.com/price_increase_relative.jpeg)


### Which are artists with the highest price increase for their artworks?

By adding up all absolute price increases for artists I want to get insights into the artists that have the highest total price increase. As some artists created more pieces than others I created also a chart with the artists with the highest average price increase per piece.

Although there are different artists in the two charts, there a lot of overlaps. The artists on the list are a good starting point for art investment.

![Artinvestor's Data Set Total Price Increase of Artist's Artworks ](https://image-84nn9nef4.s3.amazonaws.com/artists.jpeg)



![Artinvestor's Data Set Average Price Increase Per Artwork of Artists](https://image-84nn9nef4.s3.amazonaws.com/artists_per_piece.jpeg)

## Summary

The Art Investor's Data Set contains data about more than 228,000 art pieces with information about the artist, the size, the run and the number of pieces sold. For about 9% of the artworks, there are basic pricing data available. The data set is about modern art; the majority of art pieces are "Posters", "Original Art" or "Art Print". Some of the art pieces in the data set increased in price up to $8000, others saw a relative price increase of up to 2500%. There are several artists in the data set that seem promising for investments.

In case you are interested in the data set you can [drop me a message](mailto:jens@artventure.com)
