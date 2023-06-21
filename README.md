# Overview 
This challenge contains analysis on people whom the company employed during the 1980s and 1990s. All that remains of the employee batabase from that period are CSV files. Here we have divided this challenge into three parts: data modeling, data engineering, and data analysis. 

1. ### Data modeling :
  Fristly, we studied the data that were provided to us. Then, we worked into it to find out how we can create a bridge between those tables, to help us manipulate and understand the data better. Next, we inspected the CSV files, and then sketched an Entity Relationship Diagram of the tables. We used  "QuickDBDLinks" to easily find out the links between the tables.

1. ### Data engineering:
   We used sql query to build the table schemas specifying the data types, primary keys, foreign keys, and other constraints and used import funcuion to directly import data from csv files to the database that we created. After importing csv files in the database, we got all the tables to go for further analysis.

2. ### Data analysis: 
   In this analysis portion, we mainly focused on manipulating the data in different ways using variety of  SQL functions like join and different aggregations to analysis the empoloyee information. 
    
We have saved the schemas, image file of ERD, resources for the analysis, and queries for the data analysis part. They are saved as:
1. [README.md]("https://github.com/shikhasitaula/sql_challenge/blob/main/README.md"): Provides orientation for this challenge.
2. [data_analysis_queries.sql]("https://github.com/shikhasitaula/sql_challenge/blob/main/data_analysis_queries.sql") : It contains logic for the data manipulation. 
3. [schema.sql]("https://github.com/shikhasitaula/sql_challenge/blob/main/schema.sql") : It holds the framework for table schemas. 
4. [ERD for analysis.png]("https://github.com/shikhasitaula/sql_challenge/tree/main/ERD%20for%20analysis.png") : It carries ERD images, one from the Pgadmin itself and another form the OuickDBD. 
5. [Resources]("https://github.com/shikhasitaula/sql_challenge/tree/main/Resources"): It contains the csv files that we used for this chanllenge.

