-- 코드를 입력하세요
SELECT  a.NAME
FROM    ANIMAL_INS a
WHERE   a.DATETIME = (SELECT    MIN(b.DATETIME)
                      FROM      ANIMAL_INS b)