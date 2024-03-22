-- 코드를 입력하세요
SELECT I.NAME, I.DATETIME #이름과 보호 시작일을 조회
FROM ANIMAL_INS I
LEFT JOIN ANIMAL_OUTS O ON O.ANIMAL_ID = I.ANIMAL_ID
WHERE O.DATETIME IS NULL #입양을 못 간 동물 조회
ORDER BY I.DATETIME
LIMIT 3 #가장 오래 보호소에 있었던 동물 3마리