SELECT UB.TITLE, 
    UB.BOARD_ID, 
    UR.REPLY_ID, #REPLY
    UR.WRITER_ID, #REPLY
    UR.CONTENTS, #REPLY
    DATE_FORMAT(UR.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE #REPLY DATE
FROM USED_GOODS_BOARD UB
JOIN USED_GOODS_REPLY UR ON UB.BOARD_ID = UR.BOARD_ID #JOIN ON BOARD_ID
WHERE UB.CREATED_DATE LIKE '2022-10%' #BOARD DATE IS 2022-10
ORDER BY CREATED_DATE, TITLE