# Support Ticket Analysis

Short description: Case study exploring support ticket volumes, resolution times, and root causes to improve support operations.

Tools: SQL / Tableau

Dataset(s): Internal support ticket logs (timestamp, category, priority, status, resolution_time, agent_id)

How to open:
- SQL: run scripts in /sql-projects/support-ticket-analysis/scripts in the order indicated in the folder.
- Tableau: open the workbook in tableau-projects/support-ticket-dashboard (TWBX/TWB) or view on Tableau Public if published.

Files in this folder:
- data/ (sample or extracts)
- scripts/ (SQL scripts for cleaning and aggregation)
- assets/support-ticket-analysis-hero.png

Key steps performed:
- Data cleaning: normalize timestamps, standardize category labels, handle missing resolution times
- Joins/aggregations: join ticket logs to agent metadata and aggregate by day/week and category
- Calculations: compute median/95th percentile resolution time and SLA breach flags

Key SQL snippets / pseudo-code:
```
-- Example: compute median resolution time by category
SELECT category,
       PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY resolution_time) AS median_resolution
FROM tickets
GROUP BY category;
```

Key visuals:
- Image: assets/support-ticket-analysis-hero.png — hero image showing dashboard overview and key KPIs

Takeaways:
- Identify high-volume categories with long resolution times
- Recommend routing or automation for repetitive issues
- Track SLA compliance with weekly summaries

Tableau Public link (if published): https://public.tableau.com/views/<your-viz-slug>

How to reproduce / notes for reviewers:
- Sample queries and notes are included in the scripts/ folder. Replace sample data with production extracts when reproducing.

Note: placeholder assets have been committed to assets/. I will optimize and add code snippet images once you confirm upload; for now this README and the SVG placeholders provide structure and preview visibility.

License: MIT
