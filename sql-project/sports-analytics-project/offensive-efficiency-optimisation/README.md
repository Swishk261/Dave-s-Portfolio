# Offensive Efficiency Optimisation (Sports)

## 📌 Context
This project develops models and decision-support tools to improve offensive efficiency—shot quality, possession value, and play selection—using event-level and tracking data. The analysis follows a structured, step-based workflow for transparency and reproducibility.

## 🛠️ Techniques Used
- Data wrangling: cleaning, filtering, aggregation, joins
- Modelling: expected possession value (xEV), shot quality (xFG/xG), lineup synergy
- Policy evaluation: counterfactual estimators, dynamic programming/MDP
- Visual storytelling: step-by-step screenshots of the analysis workflow

## 📊 Process
1. Data Cleaning  
   - Standardise play-by-play, tracking, and lineup feeds  
   - Harmonise timestamps, players, and possessions

2. Filtering  
   - Retain valid possessions and on-court segments  
   - Segment by opponent, lineup, location, and clock context

3. Aggregation  
   - Compute per-possession features and outcome metrics  
   - Build baselines by lineup, context, and opponent profile

---

## 📷 Visuals

### What each step's code does:

This analysis follows a 13-step workflow, each focusing on a specific aspect of offensive optimisation:

<table>
<tbody><tr>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-1.png?raw=1">
<em>Step 1: Initial data ingestion and cleaning</em>
</td>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-2.png?raw=1">
<em>Step 2: Play taxonomy mapping</em>
</td>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-3.png?raw=1">
<em>Step 3: Possession-level feature engineering</em>
</td>
</tr>

<tr>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-4.png?raw=1">
<em>Step 4: Shot quality modelling (xFG/xG/xPS)</em>
</td>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-5.png?raw=1">
<em>Step 5: Lineup synergy &amp; spacing metrics</em>
</td>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-6.png?raw=1">
<em>Step 6: Expected possession value (xEV) modelling</em>
</td>
</tr>

<tr>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-7.png?raw=1">
<em>Step 7: Context-aware policy evaluation (IPS/DR)</em>
</td>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-8.png?raw=1">
<em>Step 8: Opponent tendency profiling</em>
</td>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-9.png?raw=1">
<em>Step 9: Decision rule optimisation</em>
</td>
</tr>

<tr>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-10.png?raw=1">
<em>Step 10: Simulation &amp; scenario testing</em>
</td>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-11.png?raw=1">
<em>Step 11: Validation &amp; backtesting</em>
</td>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-12.png?raw=1">
<em>Step 12: Final aggregation and insights</em>
</td>
</tr>

<tr>
<td>
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/oeo-part-13.png?raw=1">
<em>Step 13: Summary metrics and recommendations</em>
</td>
</tr>
</tbody></table>

---

## 📈 Results
- Quantified expected value per possession, lineup, and context  
- Recommended play/shot selection policies that raise offensive rating  
- Visual dashboards for shot maps, spacing, and policy impacts

---

## 🎯 Teaching Takeaway
This case study shows how multi-step analysis combining event/tracking features, modelling, and policy evaluation can improve offensive decision-making and efficiency.

---

## 🔗 Links
- Analysis Script: <a>`offensive_efficiency_optimisation.sql`</a> or <a>`offensive_efficiency_optimisation.ipynb`</a>

<a>Back to homepage</a>
