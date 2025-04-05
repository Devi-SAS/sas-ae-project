
/* Step 1: Import the AE CSV */
proc import datafile="C:\Users\user\Desktop\ae_raw.csv"
    out=ae_raw
    dbms=csv
    replace;
    getnames=yes;
run;

/* Step 2: Clean and calculate study days */
data ae_cleaned;
    set ae_raw;

    /* No need for input() – already numeric */
    AESTDY = AESTDTC - AESTDTC + 1; /* Day 1 */
    AEENDY = AEENDTC - AESTDTC + 1;
run;

/* Step 3: View cleaned data */
proc print data=ae_cleaned;
    title "Cleaned AE Dataset with Study Days";
run;
