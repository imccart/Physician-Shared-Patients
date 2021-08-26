DROP TABLE shared_30days_2009;
CREATE TABLE shared_30days_2009 (
	npi1 VARCHAR(50),
	npi2 VARCHAR(50),
	paircount REAL,
	benecount REAL,
	samedayvisits REAL);
	
COPY shared_30days_2009
FROM '/home/immccar/SynologyDrive/Professional/Research Data/Physician Shared Patient Data/Physician Shared Patients 30-days/PSPD 2009.txt'
WITH DELIMITER ',';