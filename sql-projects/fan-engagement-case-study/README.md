# Fan Engagement Case Study

Short description: Analyze fan engagement metrics across channels to support marketing and content strategy.

Tools: SQL

Dataset(s): engagement logs, campaign metadata, user profiles

How to open:
- SQL: run scripts in /sql-projects/fan-engagement-case-study/scripts as listed.

Files in this folder:
- data/
- scripts/
- assets/fan-engagement-case-study-hero.png

Key steps performed:
- Data cleaning: deduplicate events, normalize timestamps
- Joins/aggregations: link engagement events to campaigns and user cohorts
- Calculations: engagement rate, retention cohort metrics

Key SQL snippets / pseudo-code:
```
-- Example: cohort retention calculation
SELECT cohort_week, week_number,
       COUNT(DISTINCT user_id) AS active_users
FROM engagement
GROUP BY cohort_week, week_number;
```

Key visuals:
- Image: assets/fan-engagement-case-study-hero.png — cohort and engagement trend visuals

Takeaways:
- Recommend content cadence for high-retention cohorts
- Identify channels with highest acquisition-to-retention ratios
- Suggest A/B test ideas for content optimization

Tableau Public link (if published): https://public.tableau.com/views/<your-viz-slug>

Note: placeholder assets have been committed to assets/. I will optimize and add code snippet images once you confirm upload; for now this README and the SVG placeholders provide structure and preview visibility.

License: MIT
