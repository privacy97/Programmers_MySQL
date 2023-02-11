-- 코드를 입력하세요
WITH RECURSIVE CTE AS(
    SELECT 0 AS H
    UNION ALL
    SELECT H+1 FROM CTE WHERE H < 23
)


SELECT    A.H,
          COUNT(B.ANIMAL_ID)
FROM      CTE A
LEFT JOIN ANIMAL_OUTS B
ON        A.H = HOUR(B.DATETIME)
GROUP BY  A.H
ORDER BY  A.H
