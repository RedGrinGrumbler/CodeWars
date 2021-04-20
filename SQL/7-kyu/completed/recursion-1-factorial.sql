-- create recursively the table with n up to and including 16

WITH RECURSIVE t(n, fact) AS (
      VALUES (0, 1::bigint)
    UNION ALL
      SELECT 
        t.n+1,
        (t.n+1)*t.fact
      FROM t WHERE t.n < 16
  )
SELECT * FROM t;
