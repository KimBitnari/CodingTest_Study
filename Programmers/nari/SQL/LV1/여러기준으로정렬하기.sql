-- https://school.programmers.co.kr/learn/courses/30/lessons/59404
-- title : 여러 기준으로 정렬하기

SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME, DATETIME DESC;
-- ORDER BY NAME ASC, DATETIME DESC;