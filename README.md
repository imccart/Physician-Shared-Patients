# Physician Shared Patient Data
This describes all of the code files and raw data sources needed to form data on physician networks and referral patterns. Project-specific uses of these data are treated as their own repositories and will be cited here over time. This is a living document and changes regularly.

## Master Do File
Each of the relevant data sources are available individually and discussed in more detail below. Just scroll down to the [Raw Data Sources](https://github.com/imccart/Physician-Shared-Patients#raw-data-sources). All of the code files are called as part of the master "build data" file, [_BuildFinalData.r](https://github.com/imccart/Physician-Shared_Patients/blob/master/data-code/_BuildFinalData.R). I name these files so that they appear (by default) in Windows folders in a way that makes sense to me. So the master do file begins with an underscore, and the individual do files are numbered. This is just personal preference but helps me to keep things in order.

## Raw Data
All of the raw data are publicly available from the Centers for Medicare and Medicaid Services (CMS) website. The data were made available by a freedom of information act request and consist of all pairwise physician combinations (based on Medicare patients) from 2009 to 2015. The link to the data can be found here: [CMS Shared Patient Data](https://www.cms.gov/Regulations-and-Guidance/Legislation/FOIA/Referral-Data-FAQs). These data are also available from the National Bureau of Economic Research, [NBER Shared Patient Data](https://www.nber.org/data/physician-shared-patient-patterns-data.html).

A physician pair in these data reflects an instance in which a patient visited physician A and subsequently visited physician B within the designated time period (data are available for 30, 60, 90, and 180 day increments). I say "physician" even though the data are NPIs, meaning that lots of different providers are captured in the data. Also, I say "visit", but my understanding is that this is really just an instance in which a service was billed for a given NPI. So a patient need not "visit" the physician (e.g., a lab sent out from a physician's office or an anesthesiologist billing as part of a surgery). 

## Code Files
1. [Shared Patien tData](https://github.com/imccart/Physician-Shared_Patients/blob/master/data-code/SharedPatientData.R)
2. [Physician Compare Data](https://github.com/imccart/Physician-Shared_Patients/blob/master/data-code/PhysicianCompare.R)
