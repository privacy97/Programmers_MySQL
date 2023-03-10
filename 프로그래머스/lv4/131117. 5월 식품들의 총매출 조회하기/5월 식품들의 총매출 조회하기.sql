-- 코드를 입력하세요
SELECT     P.PRODUCT_ID,
           P.PRODUCT_NAME,
           P.PRICE * B.AMOUNT
FROM       FOOD_PRODUCT P
INNER JOIN (SELECT   PRODUCT_ID, SUM(AMOUNT) AS AMOUNT
            FROM     FOOD_ORDER
            WHERE    MONTH(PRODUCE_DATE) = '5'
            GROUP BY PRODUCT_ID
           ) B
ON         P.PRODUCT_ID = B.PRODUCT_ID
ORDER BY   P.PRICE * B.AMOUNT DESC, P.PRODUCT_ID