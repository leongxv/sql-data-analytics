# Project Data Overview

## Dataset Layers

### Bronze Layer ('bronze.*')
- **Purpose**: Raw or minimally processed data ingested from source systems
- **Use**: Source of truth for traceability and reprocessing


### Silver Layer ('silver.*')
- **Purpose**: Cleaned and conformed datasets. Combines and standardizes fields across sources
- **Use**: Intermediate transformation stage. May be used for validation.


### Gold Layer ('gold.*')
- **Purpose**: Analysis-ready tables from silver data, structured for reporting and querying

## SQL Query Scripts

### '00 Initial Database.sql'
- **Purpose**: Sets up all initial tables and inserts sample data.

### '01 Change Over Time Analysis.sql'
- **Focus**: Revenue over time, Monthly sales trends

### '02 Cumulative Analysis.sql'
- **Focus**: Total revenue per category, Quantity sold across countries

### '03 Performance Analysis.sql'
- **Focus**: Top and bottom-performing products, Sales comparisons

### '04 Data Segmentation Analysis.sql'
- **Focus**: Customer segmentation by revenue, Country-level breakdowns

### '05 Part-To-Whole Analysis.sql'
- **Focus**: Revenue contribution per category/product, Percentage calculations

### '06 Report Customer Analysis.sql'
- **Focus**: Customer-level KPIs, Lifetime value metrics

### '07 Report Product Analysis.sql'
- **Focus**: Pre-aggregated product performance, Category-level stats

