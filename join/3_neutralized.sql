-- # INS랑 OUTS 2개 붙이기 성공~
-- # SELECT *
-- # FROM ANIMAL_INS
-- # LEFT JOIN ANIMAL_OUTS
-- # ON ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
-- # WHERE ANIMAL_OUTS.ANIMAL_ID IS NOT NULL;


SELECT ANIMAL_INS.ANIMAL_ID, ANIMAL_INS.ANIMAL_TYPE, ANIMAL_INS.NAME
FROM ANIMAL_INS
LEFT JOIN ANIMAL_OUTS
ON ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
WHERE 
ANIMAL_INS.SEX_UPON_INTAKE LIKE 'Intact%'
AND ANIMAL_OUTS.SEX_UPON_OUTCOME LIKE '%ed%'
ORDER BY ANIMAL_INS.ANIMAL_ID ASC;

-- # AND (ANIMAL_OUTS.SEX_UPON_OUTCOME = 'Spayed Male' OR 'Spayed Female' OR 'Neutered Male' OR 'Neutered Female');