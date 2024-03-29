-- # SELECT DATE(DATETIME) AS 'HOUR', COUNT(*) AS 'COUNT' FROM ANIMAL_OUTS

-- # 시간이랑 1개 뽑아냈고, 여기서 COUNT 합계만 해주면 됨.
-- # SELECT HOUR(DATETIME) AS 'HOUR', COUNT(*) AS 'COUNT' FROM ANIMAL_OUTS
-- # GROUP BY DATETIME
-- # ORDER BY HOUR(DATETIME) ASC;


-- # WITH ONE AS 
-- # (SELECT HOUR(DATETIME) AS 'HOUR', COUNT(*) FROM ANIMAL_OUTS
-- # GROUP BY DATETIME
-- # ORDER BY HOUR(DATETIME) ASC)

-- # SELECT DISTINCT HOUR FROM ONE;

-- # 9부터 19 뽑아낼 수 있음.
-- # SELECT DISTINCT HOUR(DATETIME) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) BETWEEN 9 AND 19 ORDER BY HOUR(DATETIME) ASC;

-- # SELECT COUNT(*), NAME FROM ANIMAL_OUTS GROUP BY NAME ORDER BY NAME;


-- # SELECT DISTINCT HOUR(DATETIME), COUNT(*) 
-- # FROM ANIMAL_OUTS 
-- # WHERE HOUR(DATETIME)
-- # GROUP BY HOUR(DATETIME) 
-- # ORDER BY HOUR(DATETIME) ASC;

SELECT DISTINCT HOUR(DATETIME), COUNT(*) 
FROM ANIMAL_OUTS 
WHERE HOUR(DATETIME) BETWEEN 9 AND 19 
GROUP BY HOUR(DATETIME) 
ORDER BY HOUR(DATETIME) ASC;