-- 코드를 입력하세요
SELECT   A.ID, A.NAME, A.HOST_ID
FROM     PLACES A
WHERE    A.HOST_ID IN (SELECT   HOST_ID
                       FROM     PLACES
                       GROUP BY HOST_ID
                       HAVING   COUNT(*) >= 2)
ORDER BY A.ID