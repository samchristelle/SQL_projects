## Zara Sales Performance Analysis Report
### Project Overview 
This project aims to analyze the sales performance of the clothing store Zara. The dataset was collected from [Kaggle](https://www.kaggle.com/datasets/xontoloyo/data-penjualan-zara), containing key product-level information such as:
- Product ID
- Product Position
- Promotion & Seasonal Status
- Product Category
- Price
- Sales Volume
- Gender Section
- and more

The dataset was imported into PostgreSQL using CREATE TABLE and INSERT INTO statements. During import, some column names were renamed for easier querying:
- Product Category → Category
- Product Position → Position
- Terms → Product_Type

Some data values were also cleaned during the import process using the UPDATE function. A total of 252 rows were imported.

### Analysis Objective
The goal of this analysis is to:
- Understand the structure and trends within the dataset
- Generate business insights
- Explore key metrics through descriptive and diagnostic analysis

### Key Questions Explored
1. What is the average price, total sales volume, and total revenue by Product Type?
2. What is the average price, total sales volume, and total revenue by Gender Section?
3. What is the average price, total sales volume, and total revenue by Promotion Status?
4. What is the average price, total sales volume, and total revenue by Seasonal Status?
5. What is the average sales volume for products placed in different store positions? Which positions yield higher sales?
6. What is the total revenue (Sales Volume × Price) by Product Name?
7. Are cheaper products selling more than expensive products?
8. Do promotional products by Product Type sell at lower prices?

### Key Findings & Insights
#### 1. Revenue by Product Type
- **Jackets** generated the highest revenue among all product types.
- Total Sales Volume: 269,946 units
- Total Revenue: **$26,581,815.87 USD**

#### 2. Sales by Gender Section
The dataset primarily includes clothing from the men's department, which has 218 listed products while the women's department has 34 listed products.

**Men’s Clothing:**
 - Sales Volume: 396,199 units
 - Revenue: $35,712,663.03 USD
   
**Women’s Clothing:**
 - Sales Volume: 63,374 units
 - Revenue: $3,275,813.45 USD

#### 3. Promotion Impact
- *Promotional items are priced higher on average* than non-promotional items.
- Revenue from *Promoted Items:* **$19,994,386.90 USD**
- Revenue from *Non-Promoted Items:* **$18,994,089.58 USD**
- However, the dataset lacks detail on promotion types. For example, “Buy 1 Take 1” promotions may have higher pricing but offer better value.

#### 4. Seasonal Performance
- Seasonal items have **minimal difference in pricing** compared to non-seasonal items.
- However, *seasonal products outperform* in both revenue and sales volume.

#### 5. Effect of Store Position
Store position influences sales performance:
- **Front of Store:** 1,873 units sold
- **Aisle:** 1,828 units sold
- **End-Cap:** 1,778 units sold
  
Products placed at the **front** generally sell more than others.

#### 6. Best and Worst Selling Products
**Top Seller:** *Contrasting Patches Bomber Jacket*
- Revenue: **$889,308.00 USD**
  
**Lowest Seller:** *High Collar Knit Sweater*
- Revenue: **$4,330.58 USD**

#### 7. Price vs. Sales Volume
**Cheaper products tend to sell more units:**
- *Basic 100% Wool Sweater* ($7.99) → 2,743 units
- *Cropped Leather Jacket* ($439) → 729 units
  
However, expensive items still generate more revenue due to their price point.
- One of the lowest priced items, *High Collar Knit Sweater* ($7.99) sold the least out of all products (542 units), indicating price alone doesn't guarantee higher sales.

#### 8. Promotion vs. Price by Product Type
- There’s **no consistent relationship** between promotion status and price across product types.
- In some cases (e.g., jackets and shoes), **promoted items were priced higher** than non-promoted ones.
- Further analysis is needed on promotion mechanics (e.g., discount, bundle, coupon) to understand pricing behavior.

### Conclusion
This analysis highlights product types, positioning, pricing strategies, and promotional effects that influence sales and revenue at Zara. The insights can be used to:
- Optimize store layout
- Target effective promotions
- Reassess pricing strategies
- Focus inventory on high-performing items
  
Further data on **promotion types, customer behavior, and online performance** could enhance this analysis. Additionally, data on customer demographics and peak store hours or seasons could provide additional insights for targeted marketing.

### Tableau Visualization
View the interactive storyboard [here](https://public.tableau.com/views/zara_sales_17532494745300/Story1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link) to gain more insights.
