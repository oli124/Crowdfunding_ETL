# Crowdfunding_ETL
Project 2 - Extract Transform Load

Team members:
- Ufuoma Atakere
- Oliver King

Starting with two related csv datasets, crowdfunding data and contacts data, we will build an ETL pipeline using Python, Pandas and Python dictionary methods to extract and transform the data. After the data has been extracted and transformed into four csv files (as specified), we will create an ERD and table schema and upload the data into a Postgres database.

The source data includes two xlsx files that are related through common 'contact-id' codes. The source data includes:
1. crowdfunding.xlsx
2. contacts.xlsx

The four csv data files will be presented in separate dataframes inside the jupyter notebook (ETL_Mini_Project_OKing_UAtakere.ipynb) and then will be exported as separate csv files. These include:
1. 'category_df' / category.csv
2. 'subcategory_df' / subcategory.csv
3. 'campaign_cleaned_df' / campaign.csv
4. 'contacts_df_clean' / contacts.csv

Note: all source data files and exported csv files can be found in the 'Resources' directory.

Transformations undertaken include:
- Splitting and reidentifying category and subcategory names.
- Renaming some columns.
- Changing some data types.
- Splitting and reordering contact information.

All data from the four exported csv files will then be loaded into a sql database (crowdfunding_db.sql). An ERD (crowdfunding_db_schema.sql) of the sql database has been created using QuickDBD and both the script relating to this ERD and a graphic representation of it (in png form) can be found in the Crowdfunding_ETL repository. The files related to the sql database include:
1. crowdfunding_db.sql
2. crowdfunding_db_schema.sql
3. QuickDBD-crowdfunding_db_schema.sql.png