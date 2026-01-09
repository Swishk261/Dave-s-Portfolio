# Offensive Efficiency Optimisation (Sports)

## 📌 Context
This project is a basketball analytics case study on NBA data analyzing offensive efficiency optimization. It develops models and decision-support tools to improve offensive efficiency—shot quality, possession value, and play selection—using event-level and tracking data. The analysis follows a structured, step-based workflow for transparency and reproducibility.

## 🛠️ Techniques Used
- SQL aggregation
- SQL filtering
- SQL time and date functions

## 📊 Process
1. Filtering  
   - Retain valid possessions and on-court segments  
   - Segment by opponent, lineup, location, and clock context

2. Aggregation  
   - Compute per-possession features and outcome metrics  
   - Build baselines by lineup, context, and opponent profile

---

## 📷 Visuals

### What each metric calculates:

This analysis illustrates nine offensive efficiency metric calculations:

<table>
<tr>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-1.png?raw=1" alt="1" style="width: 100%;">
<em>Calculate offense efficiency</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-3.png?raw=1" alt="3" style="width: 100%;">
<em>Perimeter shooting analysis</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-4.png?raw=1" alt="4" style="width: 100%;">
<em>Calculate effective field goal percentage</em>
</td>
</tr>

<tr>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-5.png?raw=1" alt="5" style="width: 100%;">
<em>Calculate offensive impact score (pts + plus/minus)</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-6.png?raw=1" alt="6" style="width: 100%;">
<em>Calculate offense creation score</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-9.png?raw=1" alt="9" style="width: 100%;">
<em>Identify the most efficient scorers in the NBA</em>
</td>
</tr>

<tr>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-7.png?raw=1" alt="7" style="width: 100%;">
<em>Analyse team three point shooting patterns</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-8.png?raw=1" alt="8" style="width: 100%;">
<em>Analyse team offensive efficiency</em>
</td>
<td width="33%">
<img src="https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/of-part-10.png?raw=1" alt="10" style="width: 100%;">
<em>Compare teams offensive and defensive efficiency</em>
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