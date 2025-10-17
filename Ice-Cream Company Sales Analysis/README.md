# 🍦 Ice Cream Company Sales Analysis Dashboard (Power BI)

<p align="center">
  <img src="https://github.com/Basavaraj0127/POWER-BI-DASHBOARD/blob/main/Ice-Cream%20Company%20Sales%20Analysis/Dashboard/dashboard.jpg?raw=true" alt="Ice Cream Company Sales Analysis Banner" width="100%">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" alt="Power BI Badge">
  <img src="https://img.shields.io/badge/DAX-3776AB?style=for-the-badge&logo=data&logoColor=white" alt="DAX Badge">
  <img src="https://img.shields.io/badge/Data%20Modeling-FF6F00?style=for-the-badge&logo=databricks&logoColor=white" alt="Data Modeling Badge">
  <img src="https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white" alt="Excel Badge">
  <img src="https://img.shields.io/badge/Business%20Insights-0078D4?style=for-the-badge&logo=powerapps&logoColor=white" alt="Insights Badge">
</p>

---

## 📊 Project Overview

This project presents a **Power BI Sales Dashboard** for an **Ice Cream Company**, providing an end-to-end analytical view of business performance — from sales and profitability to regional and product-wise trends.  
The goal was to design a **one-page interactive dashboard** delivering actionable insights using **data modeling**, **DAX**, and **visual storytelling**.

---

## 🧠 Business Objectives

- Combine multiple yearly sales files into a single **Sales Fact Table**  
- Build a **robust data model** linking all dimensional tables  
- Perform **data transformation** to extract Country, City, and Date information  
- Implement **time intelligence** (Week, Month, Quarter) for trend analysis  
- Develop **DAX measures** to calculate key metrics:
  - Total Revenue  
  - Total Cost  
  - Gross Profit  
  - MoM & QoQ Growth %  
  - Average Daily Sales  

---

## ⚙️ Tech Stack

- **Power BI** – Data Modeling, DAX, Visualization  
- **Power Query** – Data Cleaning and ETL  
- **Excel & CSV** – Data Sources  
- **DAX (Data Analysis Expressions)** – Metrics & KPIs  

---

## 📁 Folder Structure

```
Ice-Cream Company Sales Analysis/
│
├── Dashboard/
│   ├── Ice_Cream_Sales_Analysis.pbix
│   └── dashboard.jpg
│
├── Datasets/
│   ├── Categories.xlsx
│   ├── Geography.xlsx
│   ├── Product.csv
│   ├── SalesRep.xlsx
│   ├── SubCategories.xlsx
│   └── Sales_by_Year/
│       ├── Sales_2021.xlsx
│       ├── Sales_2022.xlsx
│       └── Sales_2023.xlsx
│
├── Supporting Files/
│   ├── Data_Model_Screenshot.png
│   ├── DAX_Measures.txt
│   └── BRD_Document.pdf
│
└── Images/
    └── banner.png
```

---

## 📈 Dashboard Preview

<p align="center">
  <img src="https://github.com/Basavaraj0127/POWER-BI-DASHBOARD/blob/main/Ice-Cream%20Company%20Sales%20Analysis/Dashboard/dashboard.jpg?raw=true" alt="Ice Cream Sales Analysis Dashboard" width="90%">
</p>

---

## 💡 Key Insights

- **Revenue (CY):** 28.64M  
- **Profit (CY):** 19.75M  
- **Orders (CY):** 12.19K  
- **Growth Trends:**  
  - Revenue Growth: ↓ 3.58%  
  - Profit Growth: ↓ 3.59%  
  - Orders Growth: ↓ 2.45%  
- **Top Categories:** General & Special  
- **Top Performing Subcategories:** Extra, Super, Regular, Micro  
- **Seasonal Trend:** Highest revenue in Q2, dip in Q4  

---

## 🔗 Project Repository

[Click here to view project files on GitHub](https://github.com/Basavaraj0127/POWER-BI-DASHBOARD/tree/main/Ice-Cream%20Company%20Sales%20Analysis)

---

## 🧩 Key DAX Measures

```DAX
Total Revenue = SUMX(Sales, Sales[Units] * RELATED(Product[Retail Price]))
Total Cost = SUMX(Sales, Sales[Units] * RELATED(Product[Standard Cost]))
Gross Profit = [Total Revenue] - [Total Cost]
Gross Profit MoM % = DIVIDE(([Gross Profit] - [Prev Month Gross Profit]), [Prev Month Gross Profit])
Avg Sales per Day = AVERAGEX(VALUES(Sales[Date]), [Total Revenue])
QoQ Growth % = DIVIDE(([Total Revenue] - [Prev Quarter Revenue]), [Prev Quarter Revenue])
```

---

## 🏆 Key Takeaways for Business

- **Quarter-2 sales spike** suggests strong seasonal demand — marketing focus recommended during this period.  
- **Profit margins** remain steady despite slight revenue decline — indicating efficient cost control.  
- **Super** and **Extra** categories contribute most to total revenue.  
- Further **product mix optimization** can improve profit performance.  

---

## 👨‍💻 Author

**[Basavaraj Chakalabbi](https://github.com/Basavaraj0127)**  
[LinkedIn Profile](https://www.linkedin.com/in/basavaraj-chakalabbi)  
_Data Analyst | Power BI Developer | Business Insights Enthusiast_
