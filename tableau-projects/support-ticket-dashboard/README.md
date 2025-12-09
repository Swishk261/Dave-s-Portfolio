# Support Ticket Dashboard

Short description: Interactive Tableau dashboard for exploring ticket volumes, agent performance, and SLA compliance.

Tools: Tableau

Dataset(s): support ticket logs, agent metadata

How to open:
- Tableau: open the workbook in tableau-projects/support-ticket-dashboard/ (TWBX/TWB) or view the published viz on Tableau Public.

Files in this folder:
- workbook.twbx / workbook.twb
- exports/ (PNG/GIF previews)
- assets/support-ticket-dashboard-hero.png

Key steps performed:
- Data cleaning: normalize categories and timestamps
- Joins/aggregations: link tickets to agents and teams, compute rolling KPIs
- Calculations: SLA breach flags, resolution time percentiles, backlog counts

Key SQL snippets / pseudo-code:
```
-- Example: SLA breach rate by team
SELECT team_id,
       SUM(CASE WHEN resolution_time > sla_threshold THEN 1 ELSE 0 END) / COUNT(*) AS sla_breach_rate
FROM tickets
JOIN agents USING(agent_id)
GROUP BY team_id;
```

Key visuals:
- Image: assets/support-ticket-dashboard-hero.png — hero image showing dashboard overview

Takeaways:
- Monitor SLA compliance and escalate teams with rising breach rates
- Surface recurring issues for knowledge base updates
- Use agent-level metrics for targeted coaching

Tableau Public link (if published): https://public.tableau.com/views/<your-viz-slug>

Note: placeholder assets have been committed to assets/. I will optimize and add code snippet images once you confirm upload; for now this README and the SVG placeholders provide structure and preview visibility.

License: MIT
