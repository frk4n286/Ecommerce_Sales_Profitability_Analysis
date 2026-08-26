# E-Commerce Sales & Profitability Analysis

## Project Overview

This project analyses **2,000 global e-commerce transactions from 2023 to 2025** to evaluate sales performance, profitability, customer behaviour, product performance and the impact of discounting.

I used **Excel, SQL and Tableau** to complete an end-to-end analytical workflow, progressing from data preparation and exploratory analysis to SQL investigation, interactive visualisation and business recommendations.

---

## Tableau Dashboard

The final interactive dashboard provides an overview of sales and profitability performance and allows users to explore results by **Year, Region and Product Category**.

![E-Commerce Sales & Profitability Dashboard](images/Tableau_Dashboard.png)

### Dashboard KPIs

| KPI | Result |
|---|---:|
| Total Sales | **484,559.34** |
| Total Profit | **158,872.32** |
| Profit Margin | **32.79%** |
| Orders Analysed | **2,000** |

### Dashboard Features

- Monthly Sales Trend
- Category Performance
- Discount % vs Profit Margin
- Top 5 Products by Profit
- Customer Segment Performance
- Interactive Year filter
- Interactive Region filter
- Interactive Product Category filter

### [View Interactive Tableau Dashboard](https://public.tableau.com/views/GlobalE-CommerceSalesProfitabilityAnalysis/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

---

## Business Questions

The analysis focused on answering the following questions:

- What are the overall sales, profit and profit margin?
- Which product categories generate the strongest performance?
- Which individual products generate the highest profit?
- Which customer segments contribute the most sales and profit?
- How does discounting relate to profitability?
- How many transactions are loss-making?
- Where are loss-making transactions concentrated?
- Which countries generate the highest profit?

---

## Tools & Workflow

| Tool | Purpose |
|---|---|
| **Excel** | Data preparation, validation, calculated metrics and exploratory analysis |
| **SQL (SQLite)** | Filtering, aggregation and investigation of profitability, products, customers, discounts and losses |
| **Tableau** | Interactive dashboard development, KPI reporting and visual analysis |

**Workflow:**

`Dataset → Excel Analysis → SQL Investigation → Tableau Dashboard → Business Insights → Recommendations`

---

## Dataset

The analysis uses **2,000 global e-commerce transactions** covering **2023–2025**.

Key fields used during the analysis include:

- Order Date
- Country
- Region
- Product Category
- Product Name
- Customer Segment
- Quantity
- Unit Price
- Discount Percent
- Total Sales
- Profit

The CSV dataset is available in the `data` folder, while the Excel workbook used during the exploratory analysis is available in the `excel` folder.

---

# Excel Analysis

Excel was used as the first stage of the analysis to understand the structure and performance of the dataset before progressing to SQL.

I used **PivotTables, calculated profitability metrics, filtering, sorting and aggregation** to investigate:

- Overall sales and profit
- Profit margins
- Product category performance
- Customer segment performance
- Product-level performance
- Discount levels
- Sales trends over time

The Excel analysis established the initial trends and provided a foundation for the more targeted SQL investigation.

---

# SQL Analysis

The cleaned dataset was imported into SQLite for further analysis.

SQL techniques used included:

`SELECT` • `WHERE` • `COUNT` • `SUM` • `ROUND` • `GROUP BY` • `ORDER BY` • `LIMIT`

The complete queries are available in:

`sql/Ecommerce_Sales_SQL_Analysis.sql`

---

## 1. Loss-Making Transactions

SQL identified:

- **272 loss-making transactions**
- **4,606.77** in sales associated with these transactions
- **953.39** combined loss

![Loss Making Orders](images/SQL_Loss_Making_Orders.png)

Although the business remained profitable overall, this analysis identified a specific group of transactions requiring further investigation.

---

## 2. Losses by Product Category

The losses were heavily concentrated within **Office Supplies**.

Office Supplies accounted for:

- **224 of 272 loss-making transactions**
- Approximately **82% of all loss-making transactions**
- **827.99 of the 953.39 total loss**
- Approximately **87% of identified monetary losses**

![Category Losses](images/SQL_Category_Losses.png)

This suggests that profitability problems were not evenly distributed across the product portfolio and that Office Supplies represents a priority area for investigation.

---

## 3. Discount Performance

SQL was used to compare order volume, sales and profit across different discount levels.

![Discount Performance](images/SQL_Discount_Performance.png)

The analysis showed that profitability weakened as discount levels increased.

The Tableau analysis further demonstrated the relationship between discounting and profit margin, with margin declining from approximately **38.72% at 0% discount to 13.42% at 30% discount**.

This suggests that higher discounts should be evaluated carefully against the additional sales volume they generate.

---

## 4. Product Performance

Products were ranked by total profit using SQL to identify the strongest individual contributors to profitability.

![Top Products](images/SQL_Top5_Products.png)

The SQL analysis investigated the **Top 10 products by profit**, while the Tableau dashboard displays the **Top 5** to provide a more concise visual comparison.

The strongest performers included products such as:

- Ergonomic Office Chair
- Standing Desk Converter
- Corner L-Shaped Desk
- Mesh Back Task Chair
- Wireless Bluetooth Headphones

---

## 5. Customer Segment Performance

SQL analysis showed clear differences between customer segments.

| Customer Segment | Orders | Sales | Profit |
|---|---:|---:|---:|
| **Consumer** | **1,006** | **256,287.74** | **87,300.36** |
| Corporate | 623 | 146,050.39 | 44,463.44 |
| Home Office | 371 | 82,221.21 | 27,108.52 |

The **Consumer segment** generated the highest order volume, sales and total profit, accounting for just over half of all analysed orders.

---

## 6. Geographic Performance

Country-level SQL analysis identified the strongest markets by total profit.

| Country | Orders | Sales | Profit |
|---|---:|---:|---:|
| **Mexico** | 203 | 47,217.30 | **15,949.44** |
| Canada | 179 | 45,326.55 | 15,320.95 |
| United States | 196 | 41,332.53 | 13,979.70 |
| United Kingdom | 106 | 30,185.46 | 10,185.32 |
| Japan | 124 | 30,950.19 | 9,826.31 |

Mexico generated the highest total profit among the countries returned by this analysis.

---

# Key Findings

### 1. Overall Profitability Was Strong

The dataset generated **484,559.34 in total sales** and **158,872.32 in total profit**, producing an overall **32.79% profit margin**.

### 2. Discounting Was Associated With Lower Margins

Profit margin declined from approximately **38.72% at 0% discount to 13.42% at 30% discount**.

This indicates a clear relationship between increasing discounts and reduced profitability within the dataset.

### 3. Consumer Was the Dominant Customer Segment

The Consumer segment generated:

- **1,006 orders**
- **256,287.74 sales**
- **87,300.36 profit**

It therefore represented the largest customer segment by order volume, sales and profit.

### 4. Loss-Making Transactions Were Highly Concentrated

There were **272 loss-making transactions**, but Office Supplies alone accounted for approximately **82% of these transactions and 87% of the associated losses**.

This provides a much more targeted area for investigation than treating losses as a business-wide issue.

### 5. Product Profitability Was Concentrated Among Several Strong Performers

Products including **Ergonomic Office Chair, Standing Desk Converter and Corner L-Shaped Desk** ranked among the strongest individual profit contributors.

### 6. Geographic Profitability Varied

Mexico generated the highest profit in the country-level SQL analysis, followed by Canada and the United States.

---

# Business Recommendations

### Review Discount Strategy

Evaluate whether higher discount levels generate enough additional order volume to compensate for their substantially lower profit margins. Particular attention should be given to the highest discount bands.

### Investigate Office Supplies

Conduct product-level analysis within Office Supplies to determine why the category accounts for the majority of identified loss-making transactions. Areas to investigate include pricing, discounts, shipping costs and individual product profitability.

### Prioritise High-Profit Products

Maintain availability and investigate further growth opportunities for the strongest profit-generating products, while comparing their performance across customer segments and geographic markets.

### Develop Customer Segment Strategy

The Consumer segment currently provides the largest contribution to sales and profit. The business could focus on retaining these customers while investigating opportunities to increase Corporate and Home Office performance.

### Monitor Profitability Alongside Revenue

Sales alone should not be used to assess performance. Profit and profit margin should be monitored alongside revenue to identify products or transactions generating sales without sufficient profitability.

---

# Skills Demonstrated

**Excel** • **SQL** • **Tableau** • **Data Cleaning** • **Exploratory Data Analysis** • **PivotTables** • **KPI Development** • **Profitability Analysis** • **Data Visualisation** • **Business Insights**

---

# Repository Structure

```text
Ecommerce_Sales_Profitability_Analysis/
│
├── data/
│   └── Ecommerce_Sales_Data.csv
│
├── excel/
│   └── Ecommerce_Sales_Data.xlsx
│
├── sql/
│   └── Ecommerce_Sales_SQL_Analysis.sql
│
├── images/
│   ├── SQL_Category_Losses.png
│   ├── SQL_Discount_Performance.png
│   ├── SQL_Loss_Making_Orders.png
│   ├── SQL_Top5_Products.png
│   └── Tableau_Dashboard.png
│
└── README.md
```

---

# Conclusion

This project demonstrates an **end-to-end data analytics workflow** using Excel, SQL and Tableau to transform transactional e-commerce data into actionable business insights.

The analysis identified strong overall profitability while highlighting specific risks around **discounting and loss-making Office Supplies transactions**. The final Tableau dashboard provides an interactive way to explore performance across time periods, regions, product categories, products and customer segments.

### [View the Interactive Tableau Dashboard](https://public.tableau.com/views/GlobalE-CommerceSalesProfitabilityAnalysis/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
