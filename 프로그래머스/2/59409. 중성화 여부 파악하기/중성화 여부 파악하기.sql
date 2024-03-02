-- 코드를 입력하세요
SELECT ANIMAL_ID,
        NAME,
        CASE 
            WHEN SEX_UPON_INTAKE LIKE '%Neutered%' OR
                SEX_UPON_INTAKE LIKE '%Spayed%' THEN 'O' #중성화 여부 조건 - 'O'
            ELSE 'X' #중성화 아닌 조건 'X'
        END AS '중성화'
FROM ANIMAL_INS