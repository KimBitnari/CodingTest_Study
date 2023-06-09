-- https://school.programmers.co.kr/learn/courses/30/lessons/131113
-- title : 조건별로 분류하여 주문상태 출력하기
-- created by haerin on 2023-06-06
SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE,'%Y-%m-%d') AS OUT_DATE, 
CASE WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
       WHEN OUT_DATE > '2022-05-01' THEN '출고대기'
       ELSE '출고미정' END '출고여부'
FROM FOOD_ORDER
ORDER BY ORDER_ID;