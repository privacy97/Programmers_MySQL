SELECT C.YEAR,
       C.MONTH,
       COUNT(*) AS PUCHASED_USERS,
       ROUND(COUNT(*) / (SELECT COUNT(*)
                           FROM USER_INFO
                          WHERE YEAR(JOINED) = '2021')
             , 1) AS PUCHASED_RATIO
FROM  (SELECT DISTINCT b.USER_ID,
                   YEAR(b.SALES_DATE) AS YEAR,
                   MONTH(b.SALES_DATE) AS MONTH
       FROM        ONLINE_SALE b
       LEFT JOIN   USER_INFO a
              ON   b.USER_ID = a.USER_ID
       WHERE       YEAR(a.JOINED) = '2021'
       GROUP BY    b.USER_ID,
                   YEAR(b.SALES_DATE),
                   MONTH(b.SALES_DATE)
      ) AS C
GROUP BY    C.YEAR,
            C.MONTH
ORDER BY    C.YEAR,
            C.MONTH