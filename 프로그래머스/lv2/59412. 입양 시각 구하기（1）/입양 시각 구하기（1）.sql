-- 코드를 입력하세요
SELECT  CAST(DATE_FORMAT(DATETIME, '%H') AS UNSIGNED) AS HOUR,
        COUNT(*) AS COUNT
FROM    ANIMAL_OUTS
WHERE   CAST(DATE_FORMAT(DATETIME, '%H') AS UNSIGNED) > 8
AND     CAST(DATE_FORMAT(DATETIME, '%H') AS UNSIGNED) < 20
GROUP BY    CAST(DATE_FORMAT(DATETIME, '%H') AS UNSIGNED)
ORDER BY    CAST(DATE_FORMAT(DATETIME, '%H') AS UNSIGNED)