-- 코드를 입력하세요
SELECT B.FLAVOR
FROM   (SELECT SHIPMENT_ID,
               FLAVOR,
               TOTAL_ORDER
        FROM   FIRST_HALF
        UNION ALL
        SELECT SHIPMENT_ID,
               FLAVOR,
               TOTAL_ORDER
        FROM   JULY
) B
GROUP BY B.FLAVOR
ORDER BY SUM(B.TOTAL_ORDER) DESC LIMIT 3