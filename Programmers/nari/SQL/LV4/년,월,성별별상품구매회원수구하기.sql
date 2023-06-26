-- https://school.programmers.co.kr/learn/courses/30/lessons/131532
-- title : 년, 월, 성별 별 상품 구매 회원 수 구하기

SELECT YEAR(O.SALES_DATE) AS YEAR, MONTH(O.SALES_DATE) AS MONTH, I.GENDER, COUNT(DISTINCT O.USER_ID) AS USERS
FROM USER_INFO AS I INNER JOIN ONLINE_SALE AS O ON I.USER_ID = O.USER_ID
WHERE I.GENDER IS NOT NULL
GROUP BY YEAR, MONTH, I.GENDER
ORDER BY YEAR, MONTH, I.GENDER;