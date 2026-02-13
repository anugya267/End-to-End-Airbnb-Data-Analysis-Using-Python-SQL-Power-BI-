# 📌 End-to-End Airbnb Data Analysis Using Python, SQL & Power BI
## 🔎 Turning Raw Airbnb Data into Actionable Business Intelligence
End-to-End Airbnb Data Analysis using Python, SQL, and Power BI to extract insights on pricing, availability, locations, and customer behavior. The project covers data cleaning, transformation, exploratory analysis, and interactive dashboard creation to support data-driven business decisions

## 📖 Project Overview

The Airbnb marketplace operates in a highly competitive and dynamic pricing environment where listing performance varies based on location, demand, reviews, and seasonality.

This project performs a complete end-to-end data analysis pipeline to extract meaningful business insights from Airbnb listing data.

This project demonstrates a complete end-to-end Data Analytics workflow from raw data loading to business insights presentation.

The objective of this project is to:

- Load and explore a real-world dataset using Python

- Perform data cleaning and Exploratory Data Analysis (EDA)

- Run advanced SQL queries using PostgreSQL / MySQL / SQL Server

- Build an interactive Power BI dashboard

- Generate a structured analytical report

- Present insights using a professional PowerPoint (Gamma AI)

This project highlights strong skills in data analysis, SQL querying, visualization, and business storytelling.

## 🏢 Business Context

- Airbnb hosts and investors need data-driven strategies to:

- Optimize pricing

- Maximize occupancy

- Improve listing visibility

- Increase revenue performance

## ❗ Business Problem

- How can Airbnb hosts and stakeholders:

- Identify high-performing neighborhoods?

- Optimize listing prices?

- Improve occupancy rates?

- Understand customer behavior through reviews?

## 👥 Stakeholders

- 🏠 Airbnb Hosts

- 💼 Real Estate Investors

- 📊 Business Strategy Teams

- 📈 Revenue & Growth Analysts

## 🎯 Objectives

- Analyze pricing trends across locations

- Identify revenue optimization opportunities

- Evaluate location-based listing performance

- Understand occupancy & availability patterns

- Assess impact of customer reviews on pricing and bookings

## 📂 Dataset Information

- Dataset Name: Airbnb Listings Dataset

- Source: Public Dataset (Kaggle)

- Records: ~48,000+ listings

- Columns: 15+ features

## 🔑 Key Features Used:

- price

- neighbourhood_group

- room_type

- minimum_nights

- number_of_reviews

- reviews_per_month

- availability_365

- calculated_host_listings_count

## 🛠 Tools & Technologies
### 🔹 Core Technologies Used

- #### Python → Data cleaning, transformation, and EDA

- #### Pandas & NumPy → Data manipulation and numerical analysis

- #### Matplotlib & Seaborn → Statistical data visualization

- #### SQL (MySQL / PostgreSQL) → Query-based business analysis & KPI extraction

- #### Power BI → Interactive dashboard creation & business storytelling

- #### Jupyter Notebook → Reproducible analysis workflow
```
| Category       | Tools Used                         |
| -------------- | ---------------------------------- |
| Programming    | Python                             |
| Libraries      | Pandas, NumPy, Matplotlib, Seaborn |
| Database       | PostgreSQL / MySQL / SQL Server    |
| Query Language | SQL                                |
| Visualization  | Power BI                           |
| Reporting      | Power BI Report + Gamma (PPT)      |
| IDE            | Jupyter Notebook / VS Code         |

```


## 🔄 Project Workflow

- Data Collection

- Data Cleaning & Preprocessing

- Data Transformation

- SQL Query-Based Analysis

- Exploratory Data Analysis (EDA)

- KPI Identification

- Power BI Dashboard Development

- Business Insights & Recommendations

### 1️⃣ Data Loading

- Imported dataset using Pandas

- Checked data structure, column types, and summary statistics

### 2️⃣ Data Cleaning

- Handled missing values

- Removed duplicates

- Corrected data types

- Standardized column names

- Treated outliers (if applicable)

### 3️⃣ Exploratory Data Analysis (EDA)

- Univariate and bivariate analysis

- Distribution plots and trend analysis

- Correlation analysis

- Business KPI identification

### 4️⃣ SQL Analysis

- Dataset exported to relational database.

- Performed:

- SELECT queries

- GROUP BY & Aggregations

- JOIN operations

- Subqueries

- Window functions (if applicable)

- KPI calculations using SQL

SQL environments used:

- PostgreSQL

- MySQL

- SQL Server

## 📊 Power BI Dashboard

An interactive Power BI dashboard was created to visualize key insights.

### Dashboard Includes:

- KPI Cards

- Trend Analysis

- Category-wise breakdown

- Filters & slicers

- Drill-down insights

- Revenue / Performance analysis

The dashboard enables stakeholders to:

- Track performance metrics

- Identify trends

- Make data-driven decisions

## 🧹 Data Cleaning Steps

- ✅ Handled missing values in review-related fields

- ✅ Removed duplicate listings

- ✅ Detected and removed price outliers using IQR method

- ✅ Converted price column to numeric format

- ✅ Standardized categorical variables

- ✅ Created derived columns for revenue estimation

## 📊 Key KPIs Identified

- 📍 Average Price per Location

- 💰 Estimated Revenue per Listing

- 📅 Occupancy Rate

- ⭐ Review Score Impact on Price

- 👤 Host Performance Metrics

   - Listings per host

   - Super host patterns (if available)

## 🔍 Exploratory Data Analysis Highlights
### 📌 Price Distribution

- Right-skewed distribution

- Premium listings concentrated in specific neighborhoods

### 🏠 Room Type Comparison

- Entire homes generate higher revenue

- Private rooms show higher occupancy frequency

### 📍 Neighborhood Analysis

- Top 3 neighborhoods contribute majority of total revenue

- Central locations have higher price elasticity

### 🔗 Correlation Insights

- Moderate correlation between reviews & occupancy

- Weak direct correlation between price & review count

- Availability strongly impacts revenue potential

## 📈 Power BI Dashboard Explanation

- The interactive dashboard is structured into:

### 1️⃣ Overview Page

- Total Listings

- Average Price

- Estimated Revenue

- Occupancy Rate

- Total Reviews

### 2️⃣ Location Insights

- Price by Neighborhood

- Revenue by Area

- Map-based listing visualization

### 3️⃣ Revenue Insights

- Revenue by Room Type

- Monthly Review Trends

- Availability vs Revenue Analysis

### 🎛 Filters & Slicers

- Neighborhood

- Room Type

- Price Range

- Availability

- Minimum Nights

## 💡 Key Insights & Business Recommendations
### 💰 Pricing Optimization

- Dynamic pricing strategy for high-demand neighborhoods

- Reduce price in low-occupancy zones to increase bookings

### 📍 High-Performing Areas

- Central neighborhoods contribute ~40–50% of total estimated revenue

- Investment opportunity in emerging high-review zones

### 📅 Seasonal Demand Trends

- Listings with moderate availability (150–250 days) show better revenue balance

- High availability listings indicate low booking demand

### ⭐ Customer Preference Insights

- Listings with 50+ reviews have significantly higher booking consistency

- Private rooms attract budget travelers

- Entire homes preferred by families and groups

## 📁 Folder Structure
```
Airbnb-Data-Analysis/
│
├── data/
│   ├── raw_data.csv
│   └── cleaned_data.csv
│
├── notebooks/
│   └── airbnb_analysis.ipynb
│
├── sql/
│   └── airbnb_queries.sql
│
├── powerbi/
│   └── airbnb_dashboard.pbix
│
├── visuals/
│   └── charts.png
│
└── README.md

```

## 🚀 How to Run This Project

### 🐍 Python Setup
```
pip install pandas numpy matplotlib seaborn jupyter

```

#### Run:

```
jupyter notebook

```

## 🗄 SQL Setup

- Import cleaned dataset into MySQL/PostgreSQL

- Execute queries from /sql/airbnb_queries.sql

## 📊 Power BI

- Open airbnb_dashboard.pbix

- Refresh dataset

- Explore interactive visuals using filters

## 📸 Sample Visualizations
### 📊 Price Distribution & Room Type Revenue

- Histogram of Price Distribution

- Bar Chart of Revenue by Room Type

- Neighborhood-wise Average Price

- Correlation Heatmap

(See /visuals folder for dashboard screenshots)

### 🔮 Future Improvements

- 📈 Time-Series Forecasting of Revenue

- 🤖 Machine Learning Pricing Model (Regression)

- 🧠 Predictive Occupancy Modeling

- 📊 Automated Data Pipeline Integration

👤 Author

Anugya Singh

Data Analyst | Python | SQL | Power BI

📧 Email: anugya.singh267@gmail.com

🔗 Open to Data Analyst & Business Intelligence roles

## 📜 License

This project is licensed under the MIT License.
Feel free to use and modify with proper attribution.

## ⭐ Support

If you found this project helpful, give it a ⭐ on GitHub!
