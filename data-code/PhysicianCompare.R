# Meta --------------------------------------------------------------------
## Title:         Read-in Physician Compare Data
## Author:        Ian McCarthy
## Date Created:  11/21/2019
## Date Edited:   8/27/2020



# 2013 Demographic Data ---------------------------------------------------
phycompare.2013.q2 <- read_csv(paste0(path.compare,"/Demographics/2013/2013_Q2.csv"), skip=1,
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "hosp_ccn6","hosp_name6","hosp_ccn7","hosp_name7",
                                             "hosp_ccn8","hosp_name8","hosp_ccn9","hosp_name9",
                                             "hosp_ccn10","hosp_name10",
                                             "medicare","erx","pqrs","ehr"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 hosp_ccn6=col_number(),
                                 hosp_name6=col_character(),
                                 hosp_ccn7=col_number(),
                                 hosp_name7=col_character(),
                                 hosp_ccn8=col_number(),
                                 hosp_name8=col_character(),
                                 hosp_ccn9=col_number(),
                                 hosp_name9=col_character(),
                                 hosp_ccn10=col_number(),
                                 hosp_name10=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character()
                               ), na=".")


phycompare.2013.q3 <- read_csv(paste0(path.compare,"/Demographics/2013/2013_Q3.csv"), skip=1,
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "medicare","erx","pqrs","ehr"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character()
                               ), na=".")


phycompare.2013.q4 <- read_csv(paste0(path.compare,"/Demographics/2013/2013_Q4.csv"), skip=1,
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "medicare","erx","pqrs","ehr"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character()
                               ), na=".")




# 2014 Demographic Data ---------------------------------------------------
phycompare.2014.q1 <- read_csv(paste0(path.compare,"/Demographics/2014/2014_Q1.csv"),
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "medicare","erx","pqrs","ehr"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character()
                               ), na=".")


phycompare.2014.q2 <- read_csv(paste0(path.compare,"/Demographics/2014/2014_Q2.csv"),
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "medicare","erx","pqrs","ehr"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character()
                               ), na=".")


phycompare.2014.q3 <- read_csv(paste0(path.compare,"/Demographics/2014/2014_Q3.csv"), skip=1,
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "medicare","erx","pqrs","ehr"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character()
                               ), na=".")


phycompare.2014.q4 <- read_csv(paste0(path.compare,"/Demographics/2014/2014_Q4.csv"), skip=1,
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name","org_dba",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "medicare","erx","pqrs","ehr","pqrs_incentive",
                                             "million_hearts"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 org_dba=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character(),
                                 pqrs_incentive=col_character(),
                                 million_hearts=col_character()
                               ), na=".")


# 2015 Demographic Data ---------------------------------------------------
phycompare.2015.q1 <- read_csv(paste0(path.compare,"/Demographics/2015/2015_Q1.csv"), skip=1,
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name","org_dba",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "medicare","erx","pqrs","ehr","pqrs_incentive",
                                             "million_hearts"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 org_dba=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character(),
                                 pqrs_incentive=col_character(),
                                 million_hearts=col_character()
                               ), na=".")


phycompare.2015.q2 <- read_csv(paste0(path.compare,"/Demographics/2015/2015_Q2.csv"), skip=1,
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name","org_dba",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "medicare","erx","pqrs","ehr","pqrs_incentive",
                                             "million_hearts"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 org_dba=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character(),
                                 pqrs_incentive=col_character(),
                                 million_hearts=col_character()
                               ), na=".")


phycompare.2015.q3 <- read_csv(paste0(path.compare,"/Demographics/2015/2015_Q3.csv"), skip=1,
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name","org_dba",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "medicare","erx","pqrs","ehr","pqrs_incentive",
                                             "million_hearts"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 org_dba=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character(),
                                 pqrs_incentive=col_character(),
                                 million_hearts=col_character()
                               ), na=".")


phycompare.2015.q4 <- read_csv(paste0(path.compare,"/Demographics/2015/2015_Q4.csv"), skip=1,
                               col_names = c("npi","pac_id","enroll_id","last_name","first_name",
                                             "middle_name","suffix","gender","credential",
                                             "medical_school","graduation","specialty_primary",
                                             "specialty_sec1","specialty_sec2","specialty_sec3",
                                             "specialty_sec4","specialty_sec_all","org_name","org_dba",
                                             "group_practice_id","group_practice_members",
                                             "street_address1","street_address2","street_address2_supress",
                                             "city","state","zipcode","hosp_ccn1","hosp_name1",
                                             "hosp_ccn2","hosp_name2","hosp_ccn3","hosp_name3",
                                             "hosp_ccn4","hosp_name4","hosp_ccn5","hosp_name5",
                                             "medicare","erx","pqrs","ehr","pqrs_incentive",
                                             "million_hearts"),
                               col_types = cols(
                                 npi=col_number(),
                                 pac_id=col_number(),
                                 enroll_id=col_number(),
                                 last_name=col_character(),
                                 first_name=col_character(),
                                 middle_name=col_character(),
                                 suffix=col_character(),
                                 gender=col_character(),
                                 credential=col_character(),
                                 medical_school=col_character(),
                                 graduation=col_integer(),
                                 specialty_primary=col_character(),
                                 specialty_sec1=col_character(),
                                 specialty_sec2=col_character(),
                                 specialty_sec3=col_character(),
                                 specialty_sec4=col_character(),
                                 specialty_sec_all=col_character(),
                                 org_name=col_character(),
                                 org_dba=col_character(),
                                 group_practice_id=col_character(),
                                 group_practice_members=col_integer(),
                                 street_address1=col_character(),
                                 street_address2=col_character(),
                                 street_address2_supress=col_character(),
                                 city=col_character(),
                                 state=col_character(),
                                 zipcode=col_character(),
                                 hosp_ccn1=col_number(),
                                 hosp_name1=col_character(),
                                 hosp_ccn2=col_number(),
                                 hosp_name2=col_character(),
                                 hosp_ccn3=col_number(),
                                 hosp_name3=col_character(),
                                 hosp_ccn4=col_number(),
                                 hosp_name4=col_character(),
                                 hosp_ccn5=col_number(),
                                 hosp_name5=col_character(),
                                 medicare=col_character(),
                                 erx=col_character(),
                                 pqrs=col_character(),
                                 ehr=col_character(),
                                 pqrs_incentive=col_character(),
                                 million_hearts=col_character()
                               ), na=".")



# Clean Data --------------------------------------------------------------

## use 2013 q2 for 2010-2013 (earliest data available from physician compare)
phycompare.2013 <- phycompare.2013.q2 %>%
  mutate(zip = str_sub(zipcode, start=1, end=5)) %>%
  select(npi, pac_id, enroll_id, last_name, first_name, suffix, gender, credential, 
         medical_school, graduation, starts_with("specialty"),
         org_name, prac_id=group_practice_id, prac_size=group_practice_members,
         street_address1, city, state, zip, starts_with("hosp"),
         medicare, erx, pqrs, ehr)

phycompare.2013 <- distinct(phycompare.2013)

nodes.2013 <- phycompare.2013 %>%
  distinct(npi)

office.2013 <- phycompare.2013 %>%
  distinct(npi, street_address1) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=street_address1,
              names_prefix="street_")

city.2013 <- phycompare.2013 %>%
  distinct(npi, city, state) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=c(city, state)) %>%
  select(npi, city_1:city_5, state_1:state_5)

practice.2013 <- phycompare.2013 %>%
  distinct(npi, prac_id, prac_size) %>%
  arrange(npi, prac_size) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=c(prac_id, prac_size)) %>%
  select(npi, prac_id_1:prac_id_3, prac_size_1:prac_size_3)

demo.2013 <- phycompare.2013 %>%
  distinct(npi, gender, credential, medical_school, graduation) %>%
  group_by(npi) %>%
  mutate(count_gender=n_distinct(gender),
            count_cred=n_distinct(credential),
            count_med=n_distinct(medical_school),
            count_grad=n_distinct(graduation)) %>%
  arrange(npi, count_gender, count_cred, count_grad) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=c(gender, credential, medical_school, graduation)) %>%
  select(-c(starts_with("count_")))

nodes.2013 <- nodes.2013 %>%
  left_join(city.2013, by="npi") %>%
  left_join(practice.2013, by="npi") %>%
  left_join(demo.2013, by="npi")
  
nodes.2012 <- nodes.2013
nodes.2011 <- nodes.2013
nodes.2010 <- nodes.2013


## use 2014 q1 for 2014
phycompare.2014 <- phycompare.2014.q1 %>%
  mutate(zip = str_sub(zipcode, start=1, end=5)) %>%
  select(npi, pac_id, enroll_id, last_name, first_name, suffix, gender, credential, 
         medical_school, graduation, starts_with("specialty"),
         org_name, prac_id=group_practice_id, prac_size=group_practice_members,
         street_address1, city, state, zip, starts_with("hosp"),
         medicare, erx, pqrs, ehr)

phycompare.2014 <- distinct(phycompare.2014)

nodes.2014 <- phycompare.2014 %>%
  distinct(npi)

office.2014 <- phycompare.2014 %>%
  distinct(npi, street_address1) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=street_address1,
              names_prefix="street_")

city.2014 <- phycompare.2014 %>%
  distinct(npi, city, state) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=c(city, state)) %>%
  select(npi, city_1:city_5, state_1:state_5)

practice.2014 <- phycompare.2014 %>%
  distinct(npi, prac_id, prac_size) %>%
  arrange(npi, prac_size) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=c(prac_id, prac_size)) %>%
  select(npi, prac_id_1:prac_id_3, prac_size_1:prac_size_3)

demo.2014 <- phycompare.2014 %>%
  distinct(npi, gender, credential, medical_school, graduation) %>%
  group_by(npi) %>%
  mutate(count_gender=n_distinct(gender),
         count_cred=n_distinct(credential),
         count_med=n_distinct(medical_school),
         count_grad=n_distinct(graduation)) %>%
  arrange(npi, count_gender, count_cred, count_grad) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=c(gender, credential, medical_school, graduation)) %>%
  select(-c(starts_with("count_")))

nodes.2014 <- nodes.2014 %>%
  left_join(city.2014, by="npi") %>%
  left_join(practice.2014, by="npi") %>%
  left_join(demo.2014, by="npi")


## use 2015 q1 for 2015
phycompare.2015 <- phycompare.2015.q1 %>%
  mutate(zip = str_sub(zipcode, start=1, end=5)) %>%
  select(npi, pac_id, enroll_id, last_name, first_name, suffix, gender, credential, 
         medical_school, graduation, starts_with("specialty"),
         org_name, prac_id=group_practice_id, prac_size=group_practice_members,
         street_address1, city, state, zip, starts_with("hosp"),
         medicare, erx, pqrs, ehr)

phycompare.2015 <- distinct(phycompare.2015)

nodes.2015 <- phycompare.2015 %>%
  distinct(npi)

office.2015 <- phycompare.2015 %>%
  distinct(npi, street_address1) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=street_address1,
              names_prefix="street_")

city.2015 <- phycompare.2015 %>%
  distinct(npi, city, state) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=c(city, state)) %>%
  select(npi, city_1:city_5, state_1:state_5)

practice.2015 <- phycompare.2015 %>%
  distinct(npi, prac_id, prac_size) %>%
  arrange(npi, prac_size) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=c(prac_id, prac_size)) %>%
  select(npi, prac_id_1:prac_id_3, prac_size_1:prac_size_3)

demo.2015 <- phycompare.2015 %>%
  distinct(npi, gender, credential, medical_school, graduation) %>%
  group_by(npi) %>%
  mutate(count_gender=n_distinct(gender),
         count_cred=n_distinct(credential),
         count_med=n_distinct(medical_school),
         count_grad=n_distinct(graduation)) %>%
  arrange(npi, count_gender, count_cred, count_grad) %>%
  group_by(npi) %>% mutate(npi_count=seq(n())) %>% ungroup() %>%
  pivot_wider(names_from=npi_count, 
              values_from=c(gender, credential, medical_school, graduation)) %>%
  select(-c(starts_with("count_")))

nodes.2015 <- nodes.2015 %>%
  left_join(city.2015, by="npi") %>%
  left_join(practice.2015, by="npi") %>%
  left_join(demo.2015, by="npi")


