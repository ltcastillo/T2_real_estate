  # For Full Segment Four Presentation [Click Here](https://docs.google.com/presentation/d/1tk2rh-BGaGehh7CSWbKGwKsqzlPy5llDR74u2SJt7aA/edit?usp=sharing)
 
 # For Full Segment Three Presentation [Click Here](https://docs.google.com/presentation/d/1KQxsC_TDFFifpXnv7MYF0HEqY-mBCuN6AVXFRf2shCo/edit#slide=id.ga413141b08_0_0)
 
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
    

# Data

### Database
* PostgreSQL
    * Schema: T2_real_estate
    * See ERD for table fields and joins

### Data Sources
* Data.Gov
    * Data type: Bay Area ZIP Codes
    * Link: https://catalog.data.gov/dataset/bay-area-zip-codes/resource/6cacd1a1-6bff-4c7c-9094-49188ea29f85
* Zillow
    * Date type: ZHVI All Homes (SFR, Condo/Co-op) Time Series, Smoothed, Seasonally Adjusted($) -> ZIP Code
    * Period: 1/31/1996 - 8/31/2020 (monthly)
    * Link: https://www.zillow.com/research/data/ 
* Realtor.com
    * Data type: Inventory - Monthly, Market Hotness -> ZIP
    * Period: 07/2016 - 08/2020 (monthly)
    * Link: https://www.realtor.com/research/data/ 
  

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

# Machine learning description

✓ Description of data preprocessing

Supervised machine learning-factor analysis is based on Zillow home value and Realtor.com factors.
Preprocessing for Zillow includes: Select only 2015 to 2020 August home value amounts, calculate yearly home value increase, delete NA value, change yearly increase amounts 
from columns to rows, add incr and decr type based on the value increase amounts.
Preprocessing for Realtor.com includes: only include Year to Year changes factors, only include 2016 to 2020 July factors. 

Non Supervised machine learning:
Non Supervised machine learning is using Zillow home value,
Preprocessing for Zillow includes: Select only 1996 to 2020 August home value amounts, delete NA value.

✓ Description of feature
engineering and feature selection, including their decisionmaking process

Supervised machine learning:
Feature includes: median_days_on_market_yy, pending_ratio_yy. These are key factors that would affect house price based on 
realtor website. And as we only study year to year factors, only year to year change is included. Dependent is August's home value increase, we are using July's factor as there would normally be time for closing and factors one month ahead should be more relative and help in future predicting. 

Feature selection and decition making: initially we have four factors: active_listing_count_yy, median_days_on_market_yy, new_listing_count_yy,pending_ratio_yy. To make the module has higher accuracy rate, we are trying to delete some factors to see if it helps high accuracy rate. It turns out that if we delete the factors of active_listing_count_yy and new_listing_count_yy, the accuracy rate is increasing. So the module would also help us to discover which factors are more relative to home value increase.

unsupervised machine learning:
Feature includes: 1997 to 2020 home value increase rate. We want to use unsupervised machine learning to seprate bay area's growth pattern to several groups and in the future, we can discover more home value increase characteristics based on the group and make predictions based on the group. We use elbow curve to find the best groups. And us PCA to reduce factors.

✓ Description of how data was split into training and testing sets

Data was split in to training and testing sets based on sklearn.model_selection.

✓ Explanation of model choice,
including limitations and benefits

Supervised machine learning:
Logisticregression model is used as we are trying to find out the relationship between factors and increase type and want to use factors to predict increase type. The logistic model is the right one for categorized machine learning. 
Limitations: If some factors are not relative and would accuracy rate, we need to mannually update X to find the best factors that can predict the increase type.
Benefits: Easy and direct to predict increase type based on factors

SMOTE oversamppling are used for model sample selection:
Limitations: Vulnerability to outliers. If the neiborhood's value is extrem, selected samples may not be accurate.
Benefits: Increase samples for minority groups. Reduce the risk of oversampling.

✓ Explanation of changes in model choice:
Model choice has no change but we decrease the increase type from 10 types to 4 types as the sample size is not so big considering only bay areas.

✓ Description of how they have trained the
model thus far, and any additional training
that will take place

We have already trained our model with our samples and change factors to see how different factors help to make the sample more accurate. No additional training will take place.

✓ Description of current accuracy score

If there are four factors: active_listing_count_yy, median_days_on_market_yy, new_listing_count_yy,pending_ratio_yy, accuracy score is as follows:
                   pre       rec       spe        f1       geo       iba       sup

       Decr       0.35      0.32      0.89      0.33      0.53      0.27        19
  Huge_Decr       0.05      1.00      0.84      0.10      0.92      0.85         1
  Huge_Incr       0.35      0.39      0.76      0.37      0.54      0.28        31
       Incr       0.68      0.49      0.69      0.57      0.58      0.33        70

avg / total       0.54      0.44      0.74      0.48      0.56      0.31       121

If there are two factors: median_days_on_market_yy, pending_ratio_yy, accuracy score is as follows: 

                   pre       rec       spe        f1       geo       iba       sup

       Decr       0.33      0.26      0.90      0.29      0.49      0.22        19
  Huge_Decr       0.04      1.00      0.82      0.08      0.90      0.83         1
  Huge_Incr       0.39      0.39      0.79      0.39      0.55      0.29        31
       Incr       0.77      0.57      0.76      0.66      0.66      0.43        70

avg / total       0.60      0.48      0.79      0.53      0.61      0.36       121

In the factor 2 supervised machine learning. We only have two types. Increase and decrease. Accuracy of Increase has been improved. But it seems that decrease prediction is still not good.
                   pre       rec       spe        f1       geo       iba       sup

       Decr       0.31      0.60      0.73      0.41      0.66      0.43        20
       Incr       0.90      0.73      0.60      0.81      0.66      0.45       101

avg / total       0.80      0.71      0.62      0.74      0.66      0.44       121

The supervised machine learning is more good at predicing increase type and it turns out the two factors: median_days_on_market_yy, pending_ratio_yy are more relative and new listing factors seem not to be relative.


