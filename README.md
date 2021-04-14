# ETL-Project

The EXTRACT portion ETL process for project was initially conducted by using two datasets from Kaggle. One dataset contained information about recipes for Indian food and the other dataset contained information about nutrition values for common food and products. Both of the datasets we found were CSVs as that was the type of file we wanted to extract for this process. The EXTRACT portion ended with loading the CSVs from these datasets into our Jupyter Notebook using a simple pd.read statement.

The TRANSFORMATION (cleaning) portion for ETL after reading in our CSVs, required us to take apart or split the columns from both dataframes that contained types of ingredients. We used a split function to separate each indivdual ingredient into a separate column. We also needed to remove the commas from the original dataframes between each ingredient. The end result displayed multiple columns of different ingredients in two clean dataframes. Furthermore in the cleaning process, we removed all NA values in each column or any value we feel didn't belong in the final clean dataframe for each dataset. 

The LOAD portion for ETL was initialized once both dataframes were clean and contained all of the data that was needed to then load it into our Ingredients Database. Prior to working in pgAdmin, we had to establish the connection between our Jupyter Notebook and PostGres. Following this step, we used a to_sql function to load our dataframes into our database within pgAdmin. In pgAdmin, we joined both the indian food table and nutrition table on the first ingredient and second ingredient from the data within the clean dataframes. We chose to go this route in terms of query building because we wanted to see how many values would essentially match between each table (specifically the ingredients). We performed this inner join by using partial string match which required the LIKE % function in pgAdmin as well as use | | to represent an addition. 

# Data Sources

https://www.kaggle.com/trolukovich/nutritional-values-for-common-foods-and-products

https://www.kaggle.com/sampannathapaliya/indian-fooddemographic-filtering
