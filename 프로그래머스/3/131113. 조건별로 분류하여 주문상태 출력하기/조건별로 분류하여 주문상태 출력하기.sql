-- 코드를 입력하세요
SELECT ORDER_ID,
        PRODUCT_ID,
        DATE_FORMAT(OUT_DATE, '%Y-%m-%d') AS OUT_DATE, #OUT_DATE 형식
        CASE 
            WHEN OUT_DATE <= '2022-05-01'  THEN '출고완료' #5/1까지 출고건 - 출고완료
            WHEN OUT_DATE > '2022-05-01' THEN '출고대기' #5/1이후 출고건 - 출고대기
            ELSE '출고미정' #기타 - 출고미정
        END AS '출고여부' #'출고여부' 컬럼
FROM FOOD_ORDER
ORDER BY ORDER_ID #ORDER BY 조건