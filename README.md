 # For Full Segment Two Presentation [Click Here](https://docs.google.com/presentation/d/1lN10Uj4I-czZft_0L5pLwD7m3BB2kn2HeqIRLskl-gI/edit?usp=sharing) 

  # For Full Segment One Presentation [Click Here](https://docs.google.com/presentation/d/1cWwqKed5WimV2-7tilG8n8RY1jqOYt1-TWfbJ9NX1kg/edit?usp=sharing) 


# Objective

Based on real estate data, how have home prices in the bay area changed over the years and how can we predict changes to prices in the future?

Create heatmap of the bay areas that reflect trends of the average cost of a house in the bay area down to it’s counties, cities, and zip codes, and size of home.
  

# Reason

We want to know how a person should save against a plan to purchase a home in the future depending on the zip code, city, and or county in the SF Bay Area
  


  

# Defining the trend
Bay Area defined as these counties
    

-   Alameda
    
-   Contra Costa
    
-   Marin
    
-   Napa
    
-   San Francisco
    
-   San Mateo
    
-   Santa Clara
    
-   Solano
    
-   Sonoma
    

  

Bay Area Counties, Cities, zip codes info
    

-   [https://data.sfgov.org/Geographic-Locations-and-Boundaries/Bay-Area-ZIP-Codes/u5j3-svi6](https://data.sfgov.org/Geographic-Locations-and-Boundaries/Bay-Area-ZIP-Codes/u5j3-svi6)
    

  
Google Maps (for heat map overlay +Geo data)
    

-   [https://developers.google.com/maps/documentation](https://developers.google.com/maps/documentation)
    

  

Zillow: Annual increase in price in terms of percentage against original price, changes to price yearly, info on real estate.
    

-   Source: [https://www.zillow.com/research/data/](https://www.zillow.com/research/data/)
    

-   Relevant info:
    

-   HOME VALUES
    

-   All Homes
    

-   Per zip code, city, county in bay area
    

-   Bedroom Series 1-5+
    

-   Per zip code, city, county in bay area
    

-   For Sale price?
    

-   INVENTORY AND SALES
    

-   For Sale inventory
    

  

# OTHER INFO THAT CAN HELP (ML?)

Walk score
    

 -   API signup: [https://www.walkscore.com/professional/api-sign-up.php](https://www.walkscore.com/professional/api-sign-up.php)
    

  

Airbnb info (only available for San Francisco City/county, San Mateo County, Santa Clara County, Oakland
    

 -   [http://insideairbnb.com/get-the-data.html](http://insideairbnb.com/get-the-data.html)
    

-   SF
    

    -   [http://insideairbnb.com/san-francisco/](http://insideairbnb.com/san-francisco/)
    

-   San Mateo County
    

    -   [http://insideairbnb.com/san-mateo-county/](http://insideairbnb.com/san-mateo-county/)
    

-   Santa Clara County
    

    -   [http://insideairbnb.com/santa-clara-county/](http://insideairbnb.com/santa-clara-county/)
    

-   Oakland
    

    -   [http://insideairbnb.com/oakland/](http://insideairbnb.com/oakland/)
    

  

-   Zillow: projected YoY increase (to test against w/ machine learning)
    -   Source: [https://www.zillow.com/research/data/](https://www.zillow.com/research/data/)
    

-   HOME VALUES
    

    -   Value Forecast
    

       -   Per zip code, city, county in bay area
      
# Communication protocol
Team meets as much as four times a week via Zoom: Tuesday Class, Wednesday Late Afternoon/Evening, Thursday Class, Sunday Afternoon. 
Team has a dedicated channel in slack for all communications regarding the project. 
Team relies on on a mixture of the Segment’s Rubric, Google slide decks, and Checklists to make sure we are on track with criteria

Machine Learning Description
✓ Description of preliminary data preprocessing
Supervised machine learning-factor analysis is based on Zillow home value and Realtor.com factors.
Preprocessing for Zillow includes: Select only 2016 to 2020 August home value amounts, calculate yearly home value increase, delete NA value, change yearly increase amounts 
from columns to rows, add incr and decr type based on the value increase amounts.
Preprocessing for Realtor.com includes: only include Year to Year changes, only include 2016 to 2020 August factors. 

✓ Description of preliminary feature
engineering and preliminary feature
selection, including their decisionmaking
process
Preliminary feature includes: active_listing_count_yy, median_days_on_market_yy, new_listing_count_yy,pending_ratio_yy. These are key factors that would affect house price based on 
realtor website. And as we only study year to year factors, only year to year change is included. Choosing each Aug data would avoid seasonal reasons.

✓ Description of how data was split
into training and testing sets
Data was split in to training and testing sets based on sklearn.model_selection.

✓ Explanation of model choice,
including limitations and benefits
SMOTE oversamppling and LogisticRegression are used for model.
Limitations: Vulnerability to outliers. If the neiborhood's value is extrem, selected samples may not be accurate.
Benefits: Increase samples for minority groups. Reduce the risk of oversampling.

