-- 코드를 입력하세요
SELECT    A.APNT_NO,
          B.PT_NAME,
          B.PT_NO,
          A.MCDP_CD,
          C.DR_NAME,
          A.APNT_YMD
FROM      APPOINTMENT A
LEFT JOIN PATIENT B
ON        A.PT_NO = B.PT_NO
LEFT JOIN DOCTOR C
ON        A.MDDR_ID = C.DR_ID
WHERE     1=1
AND       DATE_FORMAT(A.APNT_YMD, '%Y%m%d') = '20220413'
AND       A.APNT_CNCL_YN = 'N'
ORDER BY  APNT_YMD