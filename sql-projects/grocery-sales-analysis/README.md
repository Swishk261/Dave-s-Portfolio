# Grocery Sales Analysis

Short description: Clean and aggregate grocery sales to analyze category trends, promotions impact, and store performance.

Tools: SQL

Dataset(s): sales transactions, product catalog, promotions table

How to open:
- SQL: run scripts in /sql-projects/grocery-sales-analysis/scripts in the specified order.

Files in this folder:
- data/
- scripts/
- assets/grocery-sales-analysis-hero.png

Key steps performed:
- Data cleaning: standardize SKUs and product categories, fill missing prices from catalog
- Joins/aggregations: join transactions to product catalog and promotions table
- Calculations: compute net revenue, promotional lift, category share

Key SQL snippets / pseudo-code:
```
-- Example: net revenue by product
SELECT product_id, SUM(price * quantity - discount) AS net_revenue
FROM sales
GROUP BY product_id;
```

Key visuals:
- Image: assets/grocery-sales-analysis-hero.png — trends by category and promotional impact

Takeaways:
- Highlight best/worst performing categories during promo periods
- Recommend assortment or promo changes based on lift metrics
- Use net revenue measures to prioritize high-margin SKUs

Tableau Public link (if published): https://public.tableau.com/views/<your-viz-slug>

Note: placeholder assets have been committed to assets/. I will optimize and add code snippet images once you confirm upload; for now this README and the SVG placeholders provide structure and preview visibility.

License: MIT
