------------------------------------------------
-- 30 Day Shared Patients
------------------------------------------------

-- 2009
DROP TABLE IF EXISTS shared_30days_2009;
CREATE TABLE shared_30days_2009 (
	npi1 VARCHAR(50),
	npi2 VARCHAR(50),
	paircount REAL,
	benecount REAL,
	samedayvisits REAL);
	
COPY shared_30days_2009
FROM '/home/imccart/Professional/Research Data/Physician Shared Patient Data/Physician Shared Patients 30-days/PSPD 2009.txt'
WITH DELIMITER ',';


-- 2010
DROP TABLE IF EXISTS shared_30days_2010;
CREATE TABLE shared_30days_2010 (
	npi1 VARCHAR(50),
	npi2 VARCHAR(50),
	paircount REAL,
	benecount REAL,
	samedayvisits REAL);
	
COPY shared_30days_2010
FROM '/home/imccart/Professional/Research Data/Physician Shared Patient Data/Physician Shared Patients 30-days/PSPD 2010.txt'
WITH DELIMITER ',';

-- 2011
DROP TABLE IF EXISTS shared_30days_2011;
CREATE TABLE shared_30days_2011 (
	npi1 VARCHAR(50),
	npi2 VARCHAR(50),
	paircount REAL,
	benecount REAL,
	samedayvisits REAL);
	
COPY shared_30days_2011
FROM '/home/imccart/Professional/Research Data/Physician Shared Patient Data/Physician Shared Patients 30-days/PSPD 2011.txt'
WITH DELIMITER ',';


-- 2012
DROP TABLE IF EXISTS shared_30days_2012;
CREATE TABLE shared_30days_2012 (
	npi1 VARCHAR(50),
	npi2 VARCHAR(50),
	paircount REAL,
	benecount REAL,
	samedayvisits REAL);
	
COPY shared_30days_2012
FROM '/home/imccart/Professional/Research Data/Physician Shared Patient Data/Physician Shared Patients 30-days/PSPD 2012.txt'
WITH DELIMITER ',';

-- 2013
DROP TABLE IF EXISTS shared_30days_2013;
CREATE TABLE shared_30days_2013 (
	npi1 VARCHAR(50),
	npi2 VARCHAR(50),
	paircount REAL,
	benecount REAL,
	samedayvisits REAL);
	
COPY shared_30days_2013
FROM '/home/imccart/Professional/Research Data/Physician Shared Patient Data/Physician Shared Patients 30-days/PSPD 2013.txt'
WITH DELIMITER ',';


-- 2014
DROP TABLE IF EXISTS shared_30days_2014;
CREATE TABLE shared_30days_2014 (
	npi1 VARCHAR(50),
	npi2 VARCHAR(50),
	paircount REAL,
	benecount REAL,
	samedayvisits REAL);
	
COPY shared_30days_2014
FROM '/home/imccart/Professional/Research Data/Physician Shared Patient Data/Physician Shared Patients 30-days/PSPD 2014.txt'
WITH DELIMITER ',';


-- 2015
DROP TABLE IF EXISTS shared_30days_2015;
CREATE TABLE shared_30days_2015 (
	npi1 VARCHAR(50),
	npi2 VARCHAR(50),
	paircount REAL,
	benecount REAL,
	samedayvisits REAL);
	
COPY shared_30days_2015
FROM '/home/imccart/Professional/Research Data/Physician Shared Patient Data/Physician Shared Patients 30-days/PSPD 2015.txt'
WITH DELIMITER ',';
