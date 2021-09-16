# fetch_data_analyst_exercise
### David Marchena's Fetch Rewards Data Analyst Application Exercise

#### Section 1:
My data model diagram is in DataModelDiagram.pdf.  I created it using dbdiagram.io, which uses DBML to generate a customizable diagram.  

A couple of notes about the model:  
* I did not include every possible field from the rewardsReceiptItemList in the ReceiptItemList table, like the descriptions, a handful of fields that only appeared on a few receipt items, etc.  These could be included in a final model, but aren't necessary for the business questions.
* The ReceiptItemList table uses a composite primary key, with ReceiptID and a Line column that indicates which line of the list for each receipt.  Generating surrogate keys would also be an option for this table.

#### Section 2:
My queries are in Stakeholder_Questions.sql.  I chose to write queries answering the first and third business questions, though the model should be able to answer all six (given quality data).  Code to create the database in a SQL Server environment is in buildDatabase.sql. The queries are T-SQL and are runnable in a Microsoft SQL Server environment, though the data won't actually be loaded into the database so they won't return anything.

#### Section 3:
I used a python 3 Jupyter notebook for my data quality exploration.  This notebook is 'Data Exploration and Quality Issues.ipynb', but I've also included an HTML version if you want to view that as well.  It looks like GitHub can view .ipynb with formatting, though, if you want to open it directly to view here. Cool!

#### Section 4:
My stakeholder email is in "Questions about your receipts data.pdf"


Thanks for reviewing my exercise! Please let me know your feedback and when I can expect to hear about next steps.
