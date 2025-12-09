# Motorcycle Sales Analysis

Short description: Calculate net revenue and profitability metrics across motorcycle models and dealer locations.

Tools: SQL

Dataset(s): orders, products, discounts, returns

How to open:
- SQL: run scripts in /sql-projects/motorcycle-sales-analysis/scripts in order.

Files in this folder:
- data/
- scripts/
- assets/motorcycle-sales-analysis-hero.png

Key steps performed:
- Data cleaning: reconcile returns and refunds, standardize product codes
- Joins/aggregations: join orders to products and discounts
- Calculations: net revenue, margin per unit, dealer performance

Key SQL snippets / pseudo-code:
```
-- Example: net revenue calculation
SELECT order_id, SUM(price * quantity - COALESCE(discount,0) - COALESCE(refund,0)) AS net_revenue
FROM orders
LEFT JOIN refunds USING(order_id)
GROUP BY order_id;
```

Key visuals:
- Image: assets/motorcycle-sales-analysis-hero.png — revenue and margin by model and dealer

Takeaways:
- Surface most and least profitable models
- Recommend pricing or incentive changes for low-margin inventory
- Monitor returns impact on net revenue

Tableau Public link (if published): https://public.tableau.com/views/<your-viz-slug>

Note: placeholder assets have been committed to assets/. I will optimize and add code snippet images once you confirm upload; for now this README and the SVG placeholders provide structure and preview visibility.

License: MIT
