# Customer Churn Analysis

Short description: Storytelling dashboard showing churn drivers, risk segmentation, and recommended interventions.

Tools: Tableau

Dataset(s): customer transactions, subscription logs, engagement metrics

How to open:
- Tableau: open workbook in tableau-projects/customer-churn-analysis/ (TWBX/TWB). The workbook is designed to work in Tableau Desktop; published versions may be available on Tableau Public.

Files in this folder:
- workbook.twbx / workbook.twb
- exports/ (PNG/GIF previews)
- assets/customer-churn-analysis-hero.png

Key steps performed:
- Data cleaning: align subscription events and compute tenure
- Joins/aggregations: combine usage and billing events to create churn label
- Calculations: churn rate, risk scoring, driver decomposition

Key SQL snippets / pseudo-code:
```
-- Example: churn rate by cohort
SELECT cohort_month,
       SUM(CASE WHEN churned THEN 1 ELSE 0 END) / COUNT(*) AS churn_rate
FROM customers
GROUP BY cohort_month;
```

Key visuals:
- Image: assets/customer-churn-analysis-hero.png — dashboard highlighting churn drivers and segmentation

Takeaways:
- Target high-risk cohorts with retention offers
- Track leading indicators (engagement, billing failures) as early warning
- Use segmented interventions by customer lifetime value

Tableau Public link (if published): https://public.tableau.com/views/<your-viz-slug>

Note: placeholder assets have been committed to assets/. I will optimize and add code snippet images once you confirm upload; for now this README and the SVG placeholders provide structure and preview visibility.

License: MIT
