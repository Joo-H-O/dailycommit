-- 코드를 작성해주세요
SELECT I.ID,
        N.FISH_NAME,
        I.LENGTH #가장 큰 물고기의 ID, 물고기 이름, 길이를 출력하는 SQL 문
FROM FISH_INFO I
JOIN FISH_NAME_INFO N ON N.FISH_TYPE = I.FISH_TYPE
WHERE (I.FISH_TYPE, I.LENGTH) IN (
        SELECT FISH_TYPE, MAX(LENGTH)
        FROM FISH_INFO
        GROUP BY FISH_TYPE
    ) #가장 큰 물고기
ORDER BY I.ID #물고기의 ID에 대해 오름차순 정렬