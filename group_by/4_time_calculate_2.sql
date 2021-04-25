SELECT DISTINCT HOUR(DATETIME) AS 'HOUR', COUNT(*) AS 'COUNT'
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME)
GROUP BY HOUR(DATETIME)
ORDER BY HOUR(DATETIME) ASC;