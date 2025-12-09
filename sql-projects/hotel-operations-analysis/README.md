# Hotel Operations Analysis

Short description: Analyze operational metrics (occupancy, average daily rate, cancellations) to surface operational opportunities.

Tools: SQL

Dataset(s): reservations, room inventory, rates, cancellations logs

How to open:
- SQL: run scripts in /sql-projects/hotel-operations-analysis/scripts in the order listed.

Files in this folder:
- data/ (if present)
- scripts/
- assets/hotel-operations-analysis-hero.png

Key steps performed:
- Data cleaning: normalize booking timestamps, align timezone differences, clean rate values
- Joins/aggregations: join reservations to room inventory and aggregate metrics by property/date
- Calculations: occupancy rate, ADR, RevPAR, cancellation rate

Key SQL snippets / pseudo-code:
```
-- Example: occupancy rate by property and date
SELECT property_id, date,
       SUM(CASE WHEN status='booked' THEN 1 ELSE 0 END) / CAST(total_rooms AS FLOAT) AS occupancy_rate
FROM reservations
JOIN properties USING(property_id)
GROUP BY property_id, date, total_rooms;
```

Key visuals:
- Image: assets/hotel-operations-analysis-hero.png — heatmap of occupancy and ADR trends

Takeaways:
- Understand seasonal occupancy patterns and rate opportunities
- Identify properties with frequent cancellations for targeted interventions
- Monitor ADR vs occupancy trade-offs in pricing strategy

Tableau Public link (if published): https://public.tableau.com/views/<your-viz-slug>

Note: placeholder assets have been committed to assets/. I will optimize and add code snippet images once you confirm upload; for now this README and the SVG placeholders provide structure and preview visibility.

License: MIT
