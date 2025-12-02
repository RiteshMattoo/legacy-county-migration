📌 Legacy County Data Migration & Standardization Project
Technologies Used: Python (Pandas), MySQL, Power BI

Counties Included: San Joaquin, Yolo, Grant

🧭 Project Overview
The goal is to migrate legacy real-estate property data from different counties, clean it, standardize formats, validate quality, load into a database, and visualize KPIs.

It focuses on:

Cleaning inconsistent legacy datasets

Standardizing formats (names, dates, prices, tax status)

Validating records using business rules

Splitting clean vs rejected rows

Loading cleaned data into a SQL database

Building a Power BI dashboard to analyze data quality

This process mirrors how organizations maintain and improve data quality during county onboarding.

🏗 Project Architecture
Raw CSVs →

Python Cleaning →

Validation (Rules, Duplicates) →

SQL Load →

Power BI Dashboard

📁 Folder Structure
legacy-county-migration/ │ ├── data/ # Raw County Data

├── python/ # Python Cleaning Pipeline

├── sql/ # Database Scripts & KPI Views

├── powerbi/ # Power BI Dashboard File

├── screenshots/ # Dashboard Images

└── README.md # Project Documentation

🧹 Python Data Cleaning Workflow
python/county_migration.ipynb

Tasks performed:
1️⃣ Merge all county CSVs
2️⃣ Standardize fields
Parcel ID → uppercase

Owner Name → full name

Address → title case

Sale Price → numeric

Tax Status → normalized

Sale Date → datetime

3️⃣ Apply validation rules
Missing parcel_id

Invalid sale date

Invalid price

Duplicate parcel per county

4️⃣ Split into datasets
clean_df_final

reject_df_final

5️⃣ Load into MySQL
Tables created:

property_master

rejected_records

🛢️ SQL Scripts
Inside sql/ folder:
✔ create_tables.sql
✔ KPI Queries For Power BI.sql
📊 Power BI Dashboard
📌 Page 1 — Data Quality Overview
Clean records

Rejected records

Coverage percentage

County slicer

📌 Page 2 — Rejected Records Explorer
Error by reason chart

Table listing rejected rows

📌 Page 3 — Property Master Explorer
County + Tax Status slicers

Sale Price trend line chart

Clean property dataset table

📸 Screenshots

![KPI Dashboard](CountyMigrationOverview.png)

![Rejected Records](DataQuality(Rejectedrecords).png)

![Property Master](PropertymasterExplorere.png)

🏁 Conclusion

This project shows how raw county datasets can be transformed into clean, analysis-ready information using a simple and efficient Python + SQL + Power BI workflow.

The project demonstrates strong skills in:

Cleaning inconsistent legacy data

Applying validation & quality checks

Designing SQL storage structures

Creating KPI dashboards for monitoring data quality

This is a realistic, job-relevant case study suitable for data analyst, BI analyst, and data specialist roles.
