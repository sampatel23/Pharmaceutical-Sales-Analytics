# Pharmaceutical Sales Analytics Dashboard

A comprehensive **Business Analytics** project built using **Power BI, SQL, Python, and DAX** to analyze pharmaceutical sales performance, customer segmentation, and commercial sales analytics.

The project demonstrates an end-to-end analytics workflow—from data cleaning and SQL analysis to customer segmentation and interactive business intelligence dashboards that support strategic decision-making.

---

## Project Overview

The dashboard provides actionable insights into pharmaceutical sales by analyzing:

- Sales performance across products and channels
- Customer segmentation
- Sales representative performance
- Sales team performance
- Geographic sales distribution
- Sales trends and seasonality
- Commercial analytics for decision-making

The project combines **Python**, **SQL**, and **Power BI** to simulate a real-world business analytics workflow.

---

# Business Analytics Workflow

```
Raw Dataset
      │
      ▼
Python Data Cleaning
      │
      ▼
SQLite + SQL Analysis
      │
      ▼
Customer Segmentation
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights & Recommendations
```

---

# Dashboard Pages

## Page 1 – Pharma Sales Performance

Executive dashboard providing an overview of overall business performance.

### KPIs

- Total Sales
- Total Quantity Sold
- Average Price
- Active Customers
- Year-over-Year (YoY) Sales Growth

### Visualizations

- Monthly Sales Trend
- Sales by Channel
- Top Selling Products
- Geographic Sales Distribution

---

## Page 2 – Sales Trend & Seasonality

Time-based sales analysis to identify trends and seasonality.

### KPIs

- This Year Sales
- Month-over-Month (MoM) Growth

### Visualizations

- Monthly Sales Matrix
- Sales Summary by Year
- Year-wise Sales Trend
- Price vs Quantity Analysis

---

## Page 3 – Customer Segmentation & Commercial Insights

Customer-focused commercial analytics using customer segmentation.

### KPIs

- Total Customers
- Platinum Customers
- Platinum Revenue
- Average Revenue per Customer

### Visualizations

- Revenue by Customer Segment
- Customer Distribution
- Top Customers by Revenue
- Geographic Sales Distribution

---

## Page 4 – Sales Team Performance & Commercial Analytics

Sales force performance analysis to support commercial decision-making.

### KPIs

- Total Sales Representatives
- Total Managers
- Total Sales Teams
- Average Sales per Representative

### Visualizations

- Top Sales Representatives
- Sales by Sales Team
- Manager Performance
- Product Class Contribution by Sales Team

---

# Technologies Used

- Power BI
- Power Query
- DAX
- Python
- Pandas
- SQLite
- SQL

---

# Project Structure

```
PHARMA_DASHBOARD
│
├── Dashboard
│   └── Pharma_Dashboard.pbix
│
├── Data
│   ├── pharma-data.csv
│   └── cleaned_pharma_sales.csv
│
├── Notebooks
│   ├── clean_data.ipynb
│   ├── sql_analysis.ipynb
│   └── customer_segmentation.ipynb
│
├── SQL
│   ├── 01_customer_analysis.sql
│   └── 02_sales_rep_analysis.sql
│
├── photos
│   ├── Page1.png
│   ├── Page2.png
│   ├── Page3.png
│   └── Page4.png
│
├── .gitignore
└── README.md
```

---

# Data Preparation

The dataset was prepared using Python before visualization.

Processing steps included:

- Handling missing values
- Removing duplicate records
- Standardizing data types
- Creating a Date column
- Preparing the dataset for SQL analysis
- Customer segmentation
- Exporting the cleaned dataset for Power BI

---

# SQL Analysis

SQL was used to perform business-focused analytical queries, including:

- Customer performance analysis
- Customer engagement analysis
- Sales representative performance
- Sales team analysis
- Manager performance analysis
- Product-level sales analysis

---

# Customer Segmentation

Customers were segmented using Python based on:

- Total Sales
- Purchase Quantity
- Product Diversity

Customers were classified into:

- Platinum
- Gold
- Silver
- Bronze

This segmentation supports commercial analytics and customer prioritization.

---

# Key DAX Measures

Some of the DAX measures used include:

- Total Sales
- Total Quantity
- Average Price
- Active Customers
- Previous Year Sales
- YoY Sales Growth %
- Previous Month Sales
- MoM Growth %
- This Year Sales
- Platinum Revenue
- Average Revenue per Customer
- Total Sales Representatives
- Average Sales per Representative

---

# Dashboard Preview

## Page 1 – Pharma Sales Performance

![Dashboard Page 1](photos/Page1.png)

---

## Page 2 – Sales Trend & Seasonality

![Dashboard Page 2](photos/Page2.png)

---

## Page 3 – Customer Segmentation & Commercial Insights

![Dashboard Page 3](photos/Page3.png)

---

## Page 4 – Sales Team Performance & Commercial Analytics

![Dashboard Page 4](photos/Page4.png)

---

# Business Insights

The dashboard helps answer important business questions such as:

- Which products generate the highest revenue?
- Which customer segments contribute the most sales?
- Which sales representatives are top performers?
- Which sales teams achieve the highest revenue?
- How does sales performance change over time?
- Which geographic regions contribute the most revenue?
- How can customer segmentation support commercial decision-making?

---

# Future Improvements

- Sales forecasting
- Profit and margin analysis
- Customer lifetime value analysis
- Market basket analysis
- Inventory analytics
- Drill-through reports
- Automated dashboard refresh

---

# Author

**Samarth Patel**

GitHub: https://github.com/sampatel23