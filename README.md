# Physician Shared Patient Data
This describes all of the code files and raw data sources needed to form data on physician networks and referral patterns. Project-specific uses of these data are treated as their own repositories and will be cited here over time. This is a living document and changes regularly.

## Build Data File
Each of the relevant data sources are available individually and discussed in more detail below. Just scroll down to the [Raw Data Sources](#raw-data). All of the code files are called as part of the master "build data" script, [_BuildFinalData.R](data-code/_BuildFinalData.R). I name these files so that they appear (by default) in folders in a way that makes sense to me. So the main script begins with an underscore, and the individual files are numbered where needed. This is just personal preference but helps me to keep things in order.

The [_BuildFinalData.R](data-code/_BuildFinalData.R) code file creates two final datasets: an "edge list" and a "node list". The edge list consists of the physician pairs from the shared patient data, as well as measures of the magnitude of each edge (measured simply by the count of shared patients). The node list is a data set with characteristics for each physician, such as specialty, school attended, and location of the practice.

While the focus of this repo is the shared patient data, I'll briefly use the edge and node lists to look into the network structure of physician referrals. The code for this analysis is in [_Analysis.R](data-code/_Analysis.R).

## Raw Data
This repository uses two main datsets. All of the raw data are publicly available from the Centers for Medicare and Medicaid Services (CMS) website, with some caveats discussed below.

1. Shared Patients

These data were made available by a freedom of information act request and consist of all pairwise physician combinations (based on Medicare patients) from 2009 to 2015. The link to the data can be found here: [CMS Shared Patient Data](https://www.cms.gov/Regulations-and-Guidance/Legislation/FOIA/Referral-Data-FAQs). These data are also available from the National Bureau of Economic Research, [NBER Shared Patient Data](https://www.nber.org/data/physician-shared-patient-patterns-data.html).

A physician pair in these data reflects an instance in which a patient visited physician A and subsequently visited physician B within the designated time period (data are available for 30, 60, 90, and 180 day increments). I say "physician" even though the data are NPIs, meaning that lots of different providers are captured in the data. Also, I say "visit", but my understanding is that this is really just an instance in which a service was billed for a given NPI. So a patient need not "visit" the physician (e.g., a lab sent out from a physician's office or an anesthesiologist billing as part of a surgery). Indeed, the billing physician and the physician actually visited may not be the same. My impression is pairs with very small counts of shared patients may be suspect, but large numbers of shared patients likely capture some true underlying relationship between the two NPIs. 

2. Physician Compare

The physician compare database can be downloaded here: [CMS Physician Compare Data](https://data.medicare.gov/data/physician-compare). These data are intended to provide information on physician quality; however, they also include important physician characteristics such as office location, specialty, and medical school. For the purposes of this repo, I'm only using this type of demographic information, which is available in the "Physician Compare National Downloadable File". Note that the earliest these data are currently available on the CMS archive is March 2014. You can download 2013 data using the [Wayback Machine](https://archive.org/web/).

If you choose to use these data for quality information as well, note that the timeline for demographic data and quality information differ. For example, on the [archives page](https://data.medicare.gov/data/archives/physician-compare), the 2018 files include demograhpic information in 2018 but the quality information is from 2016. 

3. NPPES and Taxonomy Data

The shared patient data go back to 2010, but the physician compare data are only available as of 2013. I therefore supplement the physician compare data with data from the National Plan and Provide Enumeration System (NPPES). These data are available in two ways. First, you can download the [NPPES Data Dissemination Monthly File](https://download.cms.gov/nppes/NPI_Files.html) from CMS. This is a rolling file that is supposed to provide the most up-to-date information for a given NPI, along with some information on changes for that NPI over time. 

One problem with the NPPES download file is that the physician specialty information is embedded as part of the taxonomy code. The code defines the healthcare service provider type, classification, and area of specialization, but you need some type of crosswalk file to make that connection. The crosswalk files are available as CSV files from the  National Uniform Claim Committee (NUCC) [here](https://nucc.org/index.php/code-sets-mainmenu-41/provider-taxonomy-mainmenu-40/csv-mainmenu-57).

The NPPES information is also available in a lookup form [here](https://npiregistry.cms.hhs.gov/). Searching for a given NPI through the lookup provides the taxonomy code along with a description of the taxonomy. A very savvy grad student at Emory, [Diego Rojas](https://dieguer.github.io/), scraped this information as part of another project, which I'm repurposing here. These data are referenced as *npi_wdata.csv* in the [shared patient data](data-code/SharedPatientData.R) code file. You could acheive the same goal by merging the NPI from the NPPES download file with the crosswalk file from NUCC.

## Code Files

1. [Shared Patient Data](data-code/SharedPatientData.R). This creates the edge list consisting of all PCP/specialist physician pairs and the counts of shared patients between each pair. I denote a PCP as any physician with a taxonomy code beginning with 207R, 207Q, or 208D. But users can adjust this easily for their own purposes. Since I focus on PCPs and specialists, this will be a directed network. 

2. [Physician Compare Data](data-code/PhysicianCompare.R). This creates a quarterly dataset of physician NPIs with information on practice location, specialty, and hospital affiliation. For these data, hospital affiliation is based on Medicare claims, so it simply reflects that a physician billed for services at that hospital (nothing about hospital ownership of the practice). This information forms the node list.
