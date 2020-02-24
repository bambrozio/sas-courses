***********************************************************;
*  Enhancing Reports                                      *; 
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    TITLEn "title-text";                                 *;
*    FOOTNOTEn "footnote-text";                           *;
*		                                                  *;
*    LABEL col-name="label-text"                          *;
*          col-name="label-text";                         *;
*                                                         *;
*    Grouped Reports (sort first):                        *;
*    PROC procedure-name;                                 *;
*        BY col-name;                                     *; 
*    RUN;                                                 *;
***********************************************************;

*Titles and Footnotes;
title1 "Class Report";
title2 "All Students";
footnote1 "Report Generated on 01SEP2018";

proc print data=pg1.class_birthdate;
run;

*Using macro variables;
%let age=13;

title1 "Class Report";
title2 "Age=&age";
footnote1 "Report Generated on %sysfunc(today(),date9.)";

proc print data=pg1.class_birthdate;
	where age=&age;
run;

*Labels;
proc means data=sashelp.cars;
	where type="Sedan";
	var MSRP MPG_Highway;
	label MSRP="Manufacturer Suggested Retail Price"
          MPG_Highway="Highway Miles per Gallon";
run;

*Grouped Report;
proc sort data=sashelp.cars out=cars_sort;
	by Origin;
run;

proc freq data=cars_sort;
	by Origin;
	tables Type;
run;

***********************************************************;
*  Demo                                                   *;
*    1) Add a PROC SORT step before PROC PRINT to sort    *;
*       PG1.STORM_FINAL by BasinName and descending       *;
*       MaxWindMPH. Create a temporary table named        *;
*       STORM_SORT. Filter the rows to include only       *;
*       MaxWindMPH>156.                                   *;
*    2) Modify the PROC PRINT step to read the STORM_SORT *;
*       table and group the report by BasinName.          *;
*    3) Add the following title: Category 5 Storms. Clear *;
*       the title for future results.                     *;
*    4) Add labels for the following columns and ensure   *;
*       that PROC PRINT displays the labels:              *;
*       MaxWindMPH => Max Wind (MPH)                      *;
*       MinPressure => Min Pressure                       *;
*       StartDate => Start Date                           *;
*       StormLength => Length of Storm (days)             *;
*    5) Add the NOOBS option in the PROC PRINT statement  *;
*       to suppress the OBS column. Highlight the demo    *;
*       program and run the selected code.                *;
***********************************************************;

proc print data=pg1.storm_final;
	var Season Name MaxWindMPH MinPressure StartDate StormLength;
run;
