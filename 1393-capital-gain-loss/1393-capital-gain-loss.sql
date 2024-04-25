# Write your MySQL query statement below
SELECT stock_name, 
    SUM(CASE WHEN operation = 'Buy' THEN -price WHEN operation = 'Sell' THEN price END) AS capital_gain_loss 
    #Return the total gain or loss after Buy or Sell
FROM Stocks
GROUP BY stock_name
