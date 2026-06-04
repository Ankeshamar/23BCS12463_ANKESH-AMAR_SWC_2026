Select Count(*) AS payment_count
FROM transactions t1
JOIN transactions t2
  ON t1.merchant_id = t2.merchant_id
 And t1.amount = t2.amount
 AND t2.transaction_timestamp > t1.transaction_timestamp
 AND t2.transaction_timestamp <= t1.transaction_timestamp + Interval '10 minutes';