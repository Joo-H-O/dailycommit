-- 코드를 입력하세요
SELECT USER_ID,
    NICKNAME,
    CONCAT(CITY,' ',STREET_ADDRESS1, ' ', STREET_ADDRESS2) AS '전체주소', #띄어쓰기 포함 주소 CONCAT
    CONCAT(SUBSTR(TLNO, 1, 3), '-', SUBSTR(TLNO, 4, 4), '-', SUBSTR(TLNO, 8, 4)) AS '전화번호' #전화번호 사이에 '-' 삽입
FROM USED_GOODS_USER
WHERE USER_ID IN (SELECT WRITER_ID
                  FROM USED_GOODS_BOARD
                  GROUP BY WRITER_ID
                  HAVING COUNT(*) >= 3) #SUBQUERY - 중고 거래 게시물을 3건 이상 등록한 사용자
ORDER BY USER_ID DESC #ORDER BY 조건