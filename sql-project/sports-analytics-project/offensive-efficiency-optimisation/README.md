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

This analysis follows an 11-step workflow, each focusing on a specific aspect of offensive optimisation:

<table>
<tr>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-1.png?raw=1" alt="Step 1" style="width: 100%;">
<em>Calculate offense efficiency</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-2.png?raw=1" alt="Step 2" style="width: 100%;">
<em></em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-3.png?raw=1" alt="Step 3" style="width: 100%;">
<em>Perimeter shooting analysis</em>
</td>
</tr>

<tr>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-4.png?raw=1" alt="Step 4" style="width: 100%;">
<em>Calculate effective field goal percentage</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-5.png?raw=1" alt="Step 5" style="width: 100%;">
<em>Calculate offensive impact score(pts + plus/minus)</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-6.png?raw=1" alt="Step 6" style="width: 100%;">
<em>Calculate offense creation score</em>
</td>
</tr>

<tr>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-7.png?raw=1" alt="Step 7" style="width: 100%;">
<em>Analyse team three point shooting patterns</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-8.png?raw=1" alt="Step 8" style="width: 100%;">
<em>Analyse team offensive efficiency</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-9.png?raw=1" alt="Step 9" style="width: 100%;">
<em>Identify the most effiecient scorers in the NBA</em>
</td>
</tr>

<tr>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-10.png?raw=1" alt="Step 10" style="width: 100%;">
<em>Compare teams offensive and defensive efficiency </em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-11.png?raw=1" alt="Step 11" style="width: 100%;">
<em>Analyse team offensive efficiency vs team success</em>
</td>
</tr>
</table>

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
- Analysis Script: [`offensive_efficiency_optimisation.sql`](offensive_efficiency_optimisation.sql) or [`offensive_efficiency_optimisation.ipynb`](offensive_efficiency_optimisation.ipynb)

<a href="../../../README.md">Back to homepage</a>.
