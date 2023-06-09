SELECT 
  SYMBOL,
  SUM(SUPPLIED_USD/1e9) AS LIQUIDITY_PROVIDED
FROM ethereum.aave.ez_deposits
WHERE AAVE_VERSION = 'Aave V2'
GROUP BY 1
ORDER BY 2 DESC