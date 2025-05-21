/* This files talks about how to import different types of files into SAS */

/* 1. Using proc import, mainly for xlsx and csv */
proc import out = dat_csv
    datafile = ""
    dbms = csv replace;
run;

proc import out = dat_xlsx
    datafile = ""
    dbms = xlsx replace;
    sheet = "";
    getnames = yes; 
    *getnames is to include the first row of data as column names;
    *if specified no, then the columns in Excel will be used as variable names;
run;

/* Can run proc contents prior with and without to examine the differences */

/* 2. Using libname, calling a SAS file directly */
*only used for example here, change the libname accordingly for your local files;
libname aaa ""; *aaa is the name of the library assigned.;

data df; set aaa. ;
run;

/* Another way of calling a sas file (sas7bdat) is to use the file directory directly */