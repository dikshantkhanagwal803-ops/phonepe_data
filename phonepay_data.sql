1. TOTAL TRANSACTIONS
----------------------
SELECT SUM(transaction_count) AS total_transactions
FROM phonepay_data

2. TOTAL TRANSACTION VALUE
---------------------------
SELECT SUM(transaction_amount) AS total_value
FROM phonepay_data

3.AVERAGE TRANSACTION VALUE
----------------------------
SELECT 
SUM(transaction_amount)/ SUM(transaction_count) AS avg_value
FROM phonepay_data

4.STATE-WISE TRANSACTION VALUE
------------------------------
SELECT state,
SUM(transaction_amount) AS total_value
FROM phonepay_data
GROUP BY state
ORDER BY total_value DESC;

5. TOP 10 STATES
-----------------------------
SELECT state,
SUM(transaction_amount) AS total_value
FROM phonepay_data
GROUP BY state
ORDER BY total_value DESC
LIMIT 10;

6. YEAR-WISE GROWTH
--------------------------
SELECT year,
SUM(transaction_amount) AS total_value
FROM phonepay_data
GROUP BY year
ORDER BY year;

7. QUARTER-WISE TREND
----------------------------
SELECT year, quarter,
SUM(transaction_amount) AS total_value
FROM phonepay_data
GROUP BY year, quarter
ORDER BY year, quarter;
 
 8. TRANSACTION TYPE ANALYSIS
 ----------------------------
 SELECT transaction_type,
SUM(transaction_amount) AS total_value
FROM phonepay_data
GROUP BY transaction_type
ORDER BY total_value DESC;

9. TOP STATE EACH YEAR
------------------------------
SELECT year, state,
SUM(transaction_amount) AS total_value
FROM phonepay_data
GROUP BY year, state
ORDER BY year, total_value DESC;

10. HIGH VALUE STATES
-------------------------------
SELECT 
    state,
    AVG(avg_transaction_value) AS avg_value
FROM phonepay_data
GROUP BY state
ORDER BY avg_value DESC;

 

