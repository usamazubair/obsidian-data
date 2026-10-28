1. Market Share Dummy Value
2. Stockout -> stocked_out_percentage
	1. Detail -> monthly_comparison.current_shops - monthly_comparison.previous_shops => shops added in the last month
3. Productivity -> productivity_percentage
	1. monthly_comparison.productivity_change_pct is positive then increase with the percentage value if negative then decrease in percentage
4. Assortment -> assortment_percentage
	1. monthly_comparison.assortment_change_pct is positive then increase with the percentage value if negative then decrease in percentage

**Note: Its a Monthly Base not a Weekly Base**
