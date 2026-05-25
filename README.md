# Marketing Campaign Performance Analysis

## About The Project
This project is a SQL-based marketing campaign analysis database developed to evaluate the performance of digital marketing campaigns across multiple advertising channels.

The dataset contains campaign metrics such as:
- Advertising Spend
- Impressions
- Clicks
- Conversions
- Revenue
- Campaign Dates
  
This project demonstrates how SQL can be used for:
- Marketing analytics
- Campaign performance tracking
- ROI analysis
- Conversion analysis
- Revenue analysis
- Business intelligence reporting

---

# Project Objectives
- Analyze campaign profitability
- Compare marketing channel performance
- Measure customer engagement
- Calculate ROI and conversion rates
- Support data-driven marketing decisions

---

# Dataset Information

## Dataset Type
Synthetic Marketing Campaign Dataset

## Source
This dataset was manually created for educational, portfolio, and SQL practice purposes.

You may state:

> “This dataset was generated manually for marketing analytics and portfolio demonstration purposes.”

---

# Database Name
Marketing_Campaign_DB

---

# Table Name
campaign_performance

---

# Technologies Used
- SQL
- MySQL
- GitHub

---

# Dataset Structure

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id | INT | Unique identifier |
| campaign | VARCHAR(50) | Campaign name |
| channel | VARCHAR(50) | Marketing platform |
| spend | DECIMAL(12,2) | Advertising spend |
| impressions | INT | Number of ad impressions |
| clicks | INT | Number of user clicks |
| conversions | INT | Number of successful conversions |
| revenue | DECIMAL(12,2) | Revenue generated |
| campaign_date | DATE | Campaign date |

---

# Campaigns Included
- Summer25
- Fall25
- Winter25

---

# Marketing Channels Included
- Google
- Facebook
- Email

---

# SQL Features Demonstrated
- Database creation
- Table creation
- Data insertion
- Aggregate functions
- GROUP BY operations
- ROI calculations
- Conversion rate analysis
- Revenue analysis
- Campaign tracking

---

# Sample SQL Queries

## Revenue by Campaign
```sql
SELECT
    campaign,
    SUM(revenue) AS total_revenue
FROM campaign_performance
GROUP BY campaign;
```

## ROI Analysis
```sql
SELECT
    campaign,
    SUM(spend) AS total_spend,
    SUM(revenue) AS total_revenue,
    ROUND(((SUM(revenue) - SUM(spend)) / SUM(spend)) * 100, 2) AS ROI_Percentage
FROM campaign_performance
GROUP BY campaign;
```

## Conversion Rate Analysis
```sql
SELECT
    channel,
    SUM(clicks) AS total_clicks,
    SUM(conversions) AS total_conversions,
    ROUND((SUM(conversions) / SUM(clicks)) * 100, 2) AS conversion_rate
FROM campaign_performance
GROUP BY channel;
```

---

# Business Insights
This project helps businesses:
- Measure campaign effectiveness
- Optimize marketing budgets
- Identify high-performing channels
- Improve conversion performance
- Increase return on investment (ROI)

---

# How to Run the Project

## Step 1
Install MySQL or any SQL database software.

## Step 2
Open MySQL Workbench or your preferred SQL editor.

## Step 3
Run the `campaign_performance.sql` script.

## Step 4
Execute the analysis queries to generate business insights.

---

# Repository Topics
marketing-analysis sql mysql data-analysis business-intelligence campaign-analysis roi-analysis conversion-rate digital-marketing analytics portfolio-project

---

# Future Improvements
- Add more campaign data
- Build Power BI dashboards
- Add KPI reporting
- Integrate data visualization
- Create predictive marketing analysis

---

# Author
Ifunanya Igbonwa

Data Analyst skilled in:
- SQL
- Excel
- Power BI
- Data Visualization
- Marketing Analytics

---

# License
This project is open-source and available for educational purposes.
