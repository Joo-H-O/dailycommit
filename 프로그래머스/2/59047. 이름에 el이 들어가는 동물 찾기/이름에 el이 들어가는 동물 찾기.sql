-- 코드를 입력하세요
SELECT ANIMAL_ID,
        NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Dog' AND #종류가 'Dog'인 조건
        NAME LIKE '%EL%' #이름에 'EL'이 들어가는 조건
ORDER BY 2 #ORDER BY 조건 - 이름 순 조회