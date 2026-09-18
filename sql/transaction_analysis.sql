-- Financial Transaction Analytics
-- Synthetic portfolio dataset. SQL is written in broadly portable syntax.

-- 1. Overall transaction KPIs
SELECT
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN status = 'Completed' THEN 1 ELSE 0 END) AS completed_transactions,
    SUM(CASE WHEN status = 'Completed' THEN amount ELSE 0 END) AS completed_value,
    AVG(CASE WHEN status = 'Completed' THEN amount END) AS avg_completed_amount
FROM transactions;

-- 2. Monthly completed transaction trend
SELECT
    EXTRACT(YEAR FROM transaction_date) AS year,
    EXTRACT(MONTH FROM transaction_date) AS month,
    COUNT(*) AS transaction_count,
    SUM(amount) AS transaction_value
FROM transactions
WHERE status = 'Completed'
GROUP BY EXTRACT(YEAR FROM transaction_date), EXTRACT(MONTH FROM transaction_date)
ORDER BY year, month;

-- 3. Exceptions by status
SELECT status, COUNT(*) AS transaction_count, SUM(amount) AS total_amount
FROM transactions
GROUP BY status
ORDER BY transaction_count DESC;

-- 4. Channel performance
SELECT channel, COUNT(*) AS transaction_count, AVG(amount) AS avg_amount,
       SUM(CASE WHEN status = 'Declined' THEN 1 ELSE 0 END) AS declined_count
FROM transactions
GROUP BY channel
ORDER BY transaction_count DESC;

-- 5. High-value transactions for review
SELECT transaction_id, transaction_date, account_id, channel, amount, status
FROM transactions
WHERE amount > 2500
ORDER BY amount DESC;

-- 6. Account-level activity
SELECT account_id, COUNT(*) AS transaction_count, SUM(amount) AS total_value,
       AVG(amount) AS avg_transaction_amount
FROM transactions
GROUP BY account_id
ORDER BY total_value DESC;
