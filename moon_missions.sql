--
-- Uppgift 1
--
USE laboration1;
CREATE TABLE succesful_mission AS
    SELECT *
    FROM moon_mission
    WHERE moon_mission.outcome = 'Successful';
--
-- Uppgift 2
--
ALTER TABLE succesful_mission
MODIFY mission_id int PRIMARY KEY AUTO_INCREMENT;
--
-- Uppgift 3
--
UPDATE succesful_mission
SET operator = REPLACE(operator, ' ', '');
--
UPDATE moon_mission
SET operator = REPLACE(operator, ' ','');
--
-- Uppgift 4
--
DELETE FROM succesful_mission
WHERE YEAR(launch_date) >= 2010;
--
-- Uppgift 5
--
SELECT *, CONCAT(first_name ,' ', last_name) AS Name,
       IF(CAST(SUBSTRING(ssn, 10, 1) AS SIGNED) % 2 = 0, 'F', 'M') AS Gender
FROM account;
--
-- Uppgift 6
--
DELETE FROM account
    -- is Female
WHERE CAST(SUBSTRING(ssn, 10, 1) AS SIGNED) % 2 = 0
    -- is born before '70
    AND SUBSTRING(ssn,1,2) < 70;
--
-- Uppgift 7
--
SELECT  ROUND(AVG(IF( SUBSTR(ssn,1,2) > SUBSTR(CURDATE(),3,2), (YEAR(CURDATE()) - (1900 + SUBSTR(ssn,1,2))), (YEAR(CURDATE()) - 2000 + SUBSTR(ssn,1,2))))) AS average_age,
        IF(CAST(SUBSTRING(ssn, 10, 1) AS SIGNED) % 2 = 0, 'F', 'M') AS gender
FROM account
GROUP BY gender;
