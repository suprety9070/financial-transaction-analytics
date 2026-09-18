# Financial Transaction Analytics

A hands-on analytics portfolio project using a **synthetic financial transaction dataset** to demonstrate SQL, Python/pandas, data validation, KPI analysis, anomaly detection, and business-facing communication.

## Business problem
A business analyst needs a repeatable way to review transaction activity, monitor operational exceptions, identify unusual high-value transactions, and summarize trends for stakeholders.

## Tools
- SQL — extraction, joins/aggregations, KPI and exception queries
- Python / pandas — data cleaning, validation, exploratory analysis, and anomaly flags
- Excel / BI-ready outputs — KPI summary files for reporting
- Jupyter Notebook — documented analytical workflow

## Analysis performed
1. Validate required fields, duplicates, amounts, and transaction statuses.
2. Calculate transaction volume, completed value, average amount, declines, and pending items.
3. Analyze monthly, channel, regional, and transaction-type trends.
4. Flag unusually high transaction amounts using an IQR-based analytical rule.
5. Translate findings into business questions and follow-up actions.

## Repository structure
- `data/transactions.csv` — synthetic sample data
- `sql/transaction_analysis.sql` — SQL analysis queries
- `notebooks/financial_transaction_analysis.ipynb` — Python analysis
- `outputs/kpi_summary.csv` — KPI output

## Important note
The dataset is **fully synthetic and created for portfolio/learning purposes**. It contains no JPMorgan Chase, employer, customer, or confidential data.

## Business analyst perspective
The project is designed not only to show code, but also how an analyst turns a business question into data requirements, validation checks, analytical outputs, exceptions, and stakeholder-ready findings.

## Next enhancements
- Add a Power BI or Tableau dashboard
- Add additional data-quality rules
- Add account-level risk segmentation
- Expand SQL with window functions and reconciliation queries
