# Beauty Industry Sales Analysis

Short description: Tableau dashboard visualizing sales trends, channel performance, and product-level insights in the beauty industry.

Tools: Tableau

Dataset(s): sales transactions, channel metadata, product catalog

How to open:
- Tableau: open the workbook in tableau-projects/beauty-industry-sales-analysis/ (TWBX/TWB) or view on Tableau Public if published.

Files in this folder:
- workbook.twbx / workbook.twb
- exports/ (PNG/GIF previews)
- assets/beauty-industry-sales-analysis-hero.png

Key steps performed:
- Data cleaning: harmonize SKUs and product categories
- Joins/aggregations: combine sales with channel metadata and promotions
- Calculations: category share, promotional lift, channel conversion

Key SQL snippets / pseudo-code:
```
-- Example: promotional lift calculation
SELECT promo_id, (promo_sales - baseline_sales) / baseline_sales AS lift
FROM promo_summary;
```

Key visuals:
- Image: assets/beauty-industry-sales-analysis-hero.png — hero image showing sales trend and channel breakdown

Takeaways:
- Optimize channel allocation based on conversion and margin
- Identify high-lift promotions for replication
- Use product-level insights to guide assortment decisions

Tableau Public link (if published): https://public.tableau.com/views/<your-viz-slug>

Note: placeholder assets have been committed to assets/. I will optimize and add code snippet images once you confirm upload; for now this README and the SVG placeholders provide structure and preview visibility.

License: MIT
