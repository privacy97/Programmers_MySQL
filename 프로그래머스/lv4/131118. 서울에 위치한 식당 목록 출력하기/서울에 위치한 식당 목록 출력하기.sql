-- 코드를 입력하세요
SELECT    B.REST_ID,
          B.REST_NAME,
          B.FOOD_TYPE,
          B.FAVORITES,
          B.ADDRESS,
          ROUND(AVG(A.REVIEW_SCORE), 2)
FROM      REST_REVIEW A
LEFT JOIN REST_INFO B
ON        A.REST_ID = B.REST_ID
GROUP BY  A.REST_ID
HAVING B.ADDRESS LIKE '서울%'
ORDER BY  ROUND(AVG(A.REVIEW_SCORE), 2) DESC, B.FAVORITES DESC