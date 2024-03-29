-- # SELECT ANIMAL_INS.ANIMAL_ID, ANIMAL_OUTS.ANIMAL_ID
-- # FROM ANIMAL_INS
-- # CROSS JOIN ANIMAL_OUTS;

-- # SELECT *
-- # FROM ANIMAL_INS
-- # JOIN ANIMAL_OUTS
-- # ON ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID;

-- # SELECT *
-- # FROM ANIMAL_OUTS
-- # JOIN ANIMAL_INS
-- # ON ANIMAL_OUTS.ANIMAL_ID = ANIMAL_INS.ANIMAL_ID;

-- # 일단 이걸로 유실 데이터는 뽑아냈는데,
-- # 여기서 또 원하는 데이터를 뽑아내야 할 거 아냐.
-- # SELECT * FROM ANIMAL_OUTS
-- # LEFT JOIN ANIMAL_INS
-- # ON ANIMAL_OUTS.ANIMAL_ID = ANIMAL_INS.ANIMAL_ID
-- # WHERE ANIMAL_INS.ANIMAL_ID IS NULL;


-- # SELECT ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME FROM ANIMAL_OUTS
-- # LEFT JOIN ANIMAL_INS
-- # ON ANIMAL_OUTS.ANIMAL_ID = ANIMAL_INS.ANIMAL_ID
-- # WHERE ANIMAL_INS.ANIMAL_ID IS NULL;


SELECT ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME FROM ANIMAL_OUTS
LEFT JOIN ANIMAL_INS
ON ANIMAL_OUTS.ANIMAL_ID = ANIMAL_INS.ANIMAL_ID
WHERE ANIMAL_INS.ANIMAL_ID IS NULL
ORDER BY ANIMAL_ID ASC;