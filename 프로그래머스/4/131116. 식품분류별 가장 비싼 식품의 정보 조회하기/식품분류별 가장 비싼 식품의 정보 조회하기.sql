-- 코드를 입력하세요
SELECT CATEGORY,
    PRICE AS MAX_PRICE,
    PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE (CATEGORY, PRICE) in (
    SELECT CATEGORY, MAX(PRICE) #제일 비싼 식품 조회
    FROM FOOD_PRODUCT 
    WHERE CATEGORY IN ('과자', '국', '김치', '식용유') #식품분류가 '과자', '국', '김치', '식용유'인 경우만 출력
    GROUP BY CATEGORY
)
ORDER BY PRICE DESC #식품 가격을 기준으로 내림차순 정렬