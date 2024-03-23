SELECT S_CAR.CAR_ID,
        S_CAR.CAR_TYPE,
        ROUND(
           CASE 
               WHEN S_CAR.CAR_TYPE = 'SUV' 
               THEN S_CAR.DAILY_FEE * 30 * (1 - 0.01*(
                   SELECT DISCOUNT_RATE 
                   FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN 
                   WHERE CAR_TYPE = 'SUV' AND DURATION_TYPE = '30일 이상')) #SUV일 때 할인금액 구하기
               WHEN S_CAR.CAR_TYPE = '세단' 
               THEN S_CAR.DAILY_FEE * 30 * (1 - 0.01*(
                   SELECT DISCOUNT_RATE 
                   FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN 
                   WHERE CAR_TYPE = '세단' AND DURATION_TYPE = '30일 이상')) #세단일 때 할인금액 구하기
           END
       ) AS FEE
FROM (SELECT *
      FROM CAR_RENTAL_COMPANY_CAR
      WHERE CAR_TYPE = 'SUV' OR CAR_TYPE = '세단'
      ) S_CAR #자동차 종류가 '세단' 또는 'SUV' 인 자동차 인라인뷰 생성
LEFT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY HIS ON HIS.CAR_ID = S_CAR.CAR_ID
GROUP BY S_CAR.CAR_ID
HAVING MAX(HIS.END_DATE) <= '2022-11-01' #2022년 11월 1일 대여가능
    AND FEE >= 500000 AND FEE <= 2000000 #30일간의 대여 금액이 50만원 이상 200만원 미만인 자동차
ORDER BY FEE DESC, S_CAR.CAR_TYPE, S_CAR.CAR_ID DESC