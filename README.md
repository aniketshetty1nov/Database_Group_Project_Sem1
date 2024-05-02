This Project of Database & Analytics Programming (MSCDAD_C_JAN24I)
Student ID:  23215852  Name - Sahil Shashikant Pathak  Github User ID: sahilp05                                     
                         
Student ID:  23222468  Name - Awadhesh Trivedi  Github User ID: punjab-mail
              
Student ID:  23177861  Name -  Aniket Shetty  Github User ID: aniketshetty1nov 

Initial Setup with Docker:
--------------------------
1. *Docker Setup*:
   - Open a command prompt on Windows or a terminal on Mac.
   - Navigate to the project directory where the docker-compose.yml file is located.
   - Execute the following command to create and start the Docker containers:
     
     docker-compose -p teamS up --build -d
     
   - This will set up instances of PostgreSQL. Make sure Docker Desktop is running or that you have the Docker daemon started on your system.

ETL_Pipeline_Daap_prject.ipynb  
-> This code is the Main code of ETL Pipeline which executes the entire ETL process of the project from start to End.

DATASETS Folder
-> contains the json dataset of superstore and blackfriday for loading into Mongo DB

EDA_Analysis Folder
-> Consist of the python files where we have performed the indepth analysis and visualisation of each datasets.

OutputDataframes Folder
-> Consists of the cleaned and transformed output csv files which are loaded in the Postgres SQL Database.

Database_Queries
-> Consist of all the database queries database operation performed.
 espically the file: 
 -> DAAP_Proj_Query 1.sql
 contains all the queries with join operations and database operations performed.
