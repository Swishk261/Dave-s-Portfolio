# IPL Fan Survey Analysis

Short description: Small R project analyzing an IPL fan survey with ggplot2 visualizations and summary statistics.

Tools: R (tidyverse, ggplot2)

Dataset(s): survey responses (demographics, preferences, engagement)

How to open:
- R: open the R project or run the provided R scripts / RMarkdown files. Visualizations use ggplot2 and are exported to the assets/ folder.

Files in this folder:
- scripts/
- reports/ (HTML or RMD outputs)
- assets/ipl-fan-survey-analysis-hero.png

Key steps performed:
- Data cleaning: unify response coding, handle missing demographics
- Analysis: compute summary statistics and group comparisons
- Visualizations: ggplot2 charts for sentiment and preference breakdowns

Key code snippets / pseudo-code:
```
# Example: ggplot2 bar chart of preference by group
library(ggplot2)
ggplot(df, aes(x=preference, fill=group)) +
  geom_bar(position='dodge')
```

Key visuals:
- Image: assets/ipl-fan-survey-analysis-hero.png — exported ggplot2 visual summarising survey results

Takeaways:
- Summarise top preferences and key demographic differences
- Suggest further survey questions to deepen insights
- Provide reproducible RMarkdown outputs for reviewers

Tableau Public link (if published): https://public.tableau.com/views/<your-viz-slug>

Note: placeholder assets have been committed to assets/. I will optimize and add code snippet images once you confirm upload; for now this README and the SVG placeholders provide structure and preview visibility.

License: MIT
