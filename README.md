AE Dataset Cleaning and Study Day Calculation (SAS Project)

This is a simple SAS project where I imported and cleaned an Adverse Events (AE) dataset using **SAS 9.4** and performed basic clinical trial data processing.

 Project Objectives

    Import AE data from a CSV file (`ae_raw.csv`)
  - Clean and format the date variables (`AESTDTC`, `AEENDTC`)
  - Calculate study day variables:
  - `AESTDY` – Study Day of Adverse Event Start
  - `AEENDY` – Study Day of Adverse Event End
  - Print a cleaned output dataset

 Files Included

  - `ae_cleaning.sas` – SAS program file containing:
  - Data import using `PROC IMPORT`
  - Study day calculations
  - Output using `PROC PRINT`

 Sample Code Snippet

sas
AESTDY = AESTDTC - AESTDTC + 1;
AEENDY = AEENDTC - AESTDTC + 1;

Tools Used
SAS 9.4
Microsoft Notepad (for writing code)
GitHub (for version control and showcasing)

Learnings
Hands-on practice with PROC IMPORT, DATA steps, date formats
Calculating derived variables like study days
Working with clinical trial AE data

Let's Connect
If you're a fellow SAS programmer, clinical data analyst, or recruiter, feel free to connect with me here or on LinkedIn: [ramadevi-thota](https://www.linkedin.com/in/ramadevi-thota-193231339/)

