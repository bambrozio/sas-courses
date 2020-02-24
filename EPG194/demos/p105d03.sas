***********************************************************;
*  Creating Two-Way Frequency Reports                     *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    PROC FREQ DATA=input-table;                          *;
*        TABLES col-name*col-name </ options>;            *;
*    RUN;                                                 *;
*                                                         *;
*    PROC FREQ statement options:                         *;
*        NOPRINT                                          *;
*    TABLES statement options:                            *;
*        NOROW, NOCOL, NOPERCENT                          *;
*        CROSSLIST, LIST                                  *;
*        OUT=output-table                                 *;
***********************************************************;

title "Blood Pressure by Cholesterol Status";
proc freq data=sashelp.heart;
	tables BP_Status*Chol_Status;
run; 
title; 

***********************************************************;
*  Demo (Highlight the PROC FREQ step and run             *;
*        the selected code after each step.)              *;
*    1) Highlight the PROC FREQ step, run the selected    *;
*       code, and examine the default results.            *;
*    2) Add the NOPERCENT, NOROW, and NOCOL options in    *;
*       the TABLES statement.                             *;
*    3) Delete the options in the TABLES statement and    *;
*       add the CROSSLIST option.                         *;
*    4) Change the CROSSLIST option to the LIST option in *;
*       the TABLES statement.                             *;
*    5) Delete the previous options and add               *;
*       OUT=STORMCOUNTS. Add NOPRINT to the PROC FREQ     *;
*       statement to suppress the report.                 *;
***********************************************************;


proc freq data=pg1.storm_final;
	tables BasinName*StartDate;
	format StartDate monname.;
	label BasinName="Basin"
		  StartDate="Storm Month";
run;




