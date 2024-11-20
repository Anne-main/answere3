--question 1.1
INSERT INTO Patients (first_name, last_name, date_of_birth, gender, language)
VALUES ('John', 'Doe', '1980-11-15', 'Male', 'English');

-- question 2.1
UPDATE Patients
SET language = 'Spanish'
WHERE first_name = 'John' AND last_name = 'Doe';

--question 3.1
DELETE FROM Patients
WHERE patient_id = 10;


--questions 4.1
SELECT 
    first_name, 
    last_name, 
    IFNULL(email, 'N/A') AS email
FROM Providers;


--question 4.2
SELECT 
    first_name, 
    last_name, 
    IFNULL(phone, 'Missing details') AS phone,
    IFNULL(email, 'Missing details') AS email
FROM Providers;

--BONUS question
SELECT 
    first_name, 
    last_name, 
    specialty, 
    phone, 
    email
FROM Providers
WHERE specialty = 'Pediatrics' 
  AND (phone IS NULL OR phone = '' OR email IS NULL OR email = '');
