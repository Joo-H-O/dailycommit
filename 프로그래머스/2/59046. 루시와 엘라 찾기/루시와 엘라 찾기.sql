-- 코드를 입력하세요
SELECT ANIMAL_ID,
    NAME,
    SEX_UPON_INTAKE #RETURN COLUMN 조건
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
#NAME이 위 조건에 IN 일 시의 조건, 문자열 처리