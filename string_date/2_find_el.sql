SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME LIKE '%el%'
AND ANIMAL_TYPE LIKE 'Dog'
ORDER BY NAME ASC;

-- # %el%