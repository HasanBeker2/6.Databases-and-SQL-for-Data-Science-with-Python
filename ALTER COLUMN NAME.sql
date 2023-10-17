-- Rename the column PET to ANIMAL in the PETSALE table
EXEC sp_rename 'PETSALE.PET', 'ANIMAL', 'COLUMN';

-- Show the altered table
SELECT *
FROM PETSALE;
