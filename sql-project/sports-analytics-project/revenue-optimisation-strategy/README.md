# Revenue Optimisation Strategy (Sports)

## 📌 Context
This project designs and evaluates a revenue optimisation framework across ticketing, memberships, merchandising, sponsorships, and in-venue spend. The analysis follows a multi-step workflow to uncover revenue levers and optimise pricing, promotions, and inventory.

## 🛠️ Techniques Used
- Data wrangling: cleaning, filtering, aggregation, joins
- Pricing science: elasticity estimation, demand forecasting
- Optimisation: yield/inventory allocation, rule-based dynamic pricing
- Visual storytelling: step-by-step screenshots of the analysis workflow

## 📊 Process
1. Data Cleaning  
   - Deduplicate transactions and standardise product/channel categories  
   - Normalise time/event keys and customer identifiers

2. Filtering  
   - Focus on active sales windows and valid products  
   - Segment by channel, event, seat quality, and fan profile

3. Aggregation  
   - Compute revenue, units, AOV, and conversion metrics  
   - Build baselines by event, segment, and channel

---

## 📷 Visuals

### What each step's code does:

This analysis follows a 13-step workflow, each focusing on a specific aspect of the revenue optimisation analysis:

<table>
<tbody><tr>
<td>
<img src="./assets/of-part-1.png">
<em>Step 1: Initial data exploration</em>
</td>
<td>
<img src="./assets/of-part-2.png">
<em>Step 2: Data validation and quality checks</em>
</td>
<td>
<img src="./assets/of-part-3.png">
<em>Step 3: Product and channel mapping</em>
</td>
</tr>

<tr>
<td>
<img src="./assets/of-part-4.png">
<em>Step 4: Segment construction (fan, seat, channel)</em>
</td>
<td>
<img src="./assets/of-part-5.png">
<em>Step 5: Baseline demand estimation</em>
</td>
<td>
<img src="./assets/of-part-6.png">
<em>Step 6: Price elasticity estimation</em>
</td>
</tr>

<tr>
<td>
<img src="./assets/of-part-7.png">
<em>Step 7: Dynamic pricing rule design</em>
</td>
<td>
<img src="./assets/of-part-8.png">
<em>Step 8: Promotion uplift modelling</em>
</td>
<td>
<img src="./assets/of-part-9.png">
<em>Step 9: Event/seat-level demand forecasting</em>
</td>
</tr>

<tr>
<td>
<img src="./assets/of-part-10.png">
<em>Step 10: Yield &amp; inventory optimisation</em>
</td>
<td>
<img src="./assets/of-part-11.png">
<em>Step 11: Cross-sell &amp; upsell analysis</em>
</td>
<td>
<img src="./assets/of-part-12.png">
<em>Step 12: Final aggregation and insights</em>
</td>
</tr>

<tr>
<td>
<img src="./assets/of-part-13.png">
<em>Step 13: Summary metrics and conclusions</em>
</td>
</tr>
</tbody></table>

---

## 📈 Results
- Revenue lift estimates by segment and channel under alternative pricing rules  
- Elasticity-informed price bands and promotion efficacy  
- Optimal allocation across events and seat classes to maximise yield

---

---

## 🔗 Links
- Analysis Script: `revenue_optimisation_strategy.sql` or `revenue_optimisation_strategy.ipynb`

[Back to homepage](../README.md)
