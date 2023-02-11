-- 코드를 입력하세요
SELECT    H.CAR_ID
FROM      CAR_RENTAL_COMPANY_RENTAL_HISTORY H
LEFT JOIN CAR_RENTAL_COMPANY_CAR C
ON        H.CAR_ID = C.CAR_ID
WHERE     1=1
AND       CAR_TYPE = '세단'
AND       MONTH(START_DATE) = '10'
GROUP BY  H.CAR_ID
ORDER BY  H.CAR_ID DESC