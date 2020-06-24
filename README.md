# Healthcare_Fraud

Many people are concerned with who their medical provider is for various reasons such as expertise, coverage, location, logistics, quality, etc.. Who your doctor is matters in having someone diagnose and advise you on next best steps in treatment. Therefore it is important to have as much information as possible when choosing a provider. When choosing a provider, it is far too common for the process to be long and difficult to decipher. This project was designed to help make it easier to find a provider and see if they may be fraudulent or not. This is important in making sure that the provder chosen is not going to have larger bills that get passed on.

# What this is:
An [Interactive Website](http://www.healthcarefraud.com.us.s3-website-us-west-1.amazonaws.com/) designed to showcase what doctgors may be fraudulent using Machine Learning to help predict which health care providers may be fraudulent.

# Languages Used:
* Python
* SQL
* HTML
* CSS
* JavaScript

# Libraries Used:
 * Pyspark to  read in and manipulate data in Google Colab
 * Google.colab to import files
 * Hadoop to manipulate data
 * Java to run OS library
 * Pandas to clean and import data to CSV (comma seperated values)
 * Bootstrap to format website and embed Tableau to our visuals
 * Numpy
 * SQLAlchemy to read from Postgres
 * ScikitLeaRN - Logistic Regression and KNeighbors for basic Machine Learning algorithms since our data is best utilized with classification algorithms
 
# Tools Used:
* AWS to store our large CSV files and host our site
* Google Colab to download CSV files and clean before writing outinto a CSV for further manipulation
* Postgres to use SQL to further clean our data and showcase SQL queries
* Jupyter to compile all data into one file for visualizations and Machine Learning
* Visual Studio Code to work on the web design portion of our project

# Follow up goals:
* flesh out the Machine learning portion to include more libraries and demonstrate more capabilities 
* incorporate the ML portion with the website to allow a user to look up providers to determine whether fraudulent or not

# Source:

* [Medicare Provider Utilization and Payment Data 2016](https://www.cms.gov/openpayments/explore-the-data/dataset-downloads)
* [Medicare Open Payment](https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Downloads/OpioidDrugList.zip)
* [LEIE Provider Exclusion List](https://oig.hhs.gov/exclusions/exclusions_list.asp)
* [Prescriber Drug Data](https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Part-D-Prescriber)


