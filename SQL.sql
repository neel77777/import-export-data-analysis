SELECT
trade_type,
commodity_category,
COUNT(*) AS total_shipments,
SUM(fob_value_usd) AS total_trade_value,
AVG(fob_value_usd) AS avg_trade_value,
SUM(customs_duty_paid) AS total_customs_duty
FROM trade_data
GROUP BY trade_type, commodity_category
ORDER BY total_trade_value DESC;