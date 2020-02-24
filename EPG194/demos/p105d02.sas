***********************************************************;
*  Creating Frequency Reports and Graphs                  *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    ODS GRAPHICS ON;                                     *;
*    PROC FREQ DATA=input-table <proc-options>;           *;
*        TABLES col-name(s) / options;                    *;
*    RUN;                                                 *;
*                                                         *;
*    PROC FREQ statement options:                         *;
*        ORDER=FREQ|FORMATTED|DATA                        *;
*        NLEVELS                                          *;
*    TABLES statement options:                            *;
*        NOCUM                                            *;
*        NOPERCENT                                        *;
*        PLOTS=FREQPLOT                                   *;
*           (must turn on ODS Graphics)                   *;
*        OUT=output-table                                 *;
***********************************************************;

ods graphics on;

proc freq data=sashelp.heart order=freq nlevels;
	tables Chol_Status / nocum plots=freqplot(orient=horizontal scale=freq);
run;   

***********************************************************;
*  Demo                                                   *;
*    1) Highlight the PROC FREQ step and run the selected *;
*       code. Examine the default results.                *;
*    2) In the PROC FREQ statement, add the ORDER=FREQ    *;
*       option to sort results by descending frequency.   *;
*       Add the NLEVELS option to include a table with    *;
*       the number of distinct values.                    *;
*    3) Add the NOCUM option in the TABLES statement to   *;
*       suppress the cumulative columns.                  *;
*    4) Change Season to StartDate in the TABLES          *;
*       statement. Add a FORMAT statement to display      *;
*       StartDate as the month name (MONNAME.).           *;
*    5) Add the ODS GRAPHICS ON statement before PROC     *;
*       FREQ. Use the PLOTS=FREQPLOT option in the TABLES *;
*       statement to create a bar chart. Add the chart    *;
*       options ORIENT=HORIZONTAL and SCALE=PERCENT.      *;
*    6) Add the title Frequency Report for Basin and      *;
*       Storm Month. Turn off the procedure title with    *;
*       the ODS NOPROCTITLE statement. Add a LABEL        *;
*       statement to display BasinName as Basin and       *;
*       StartDate as Storm Month. Clear the titles and    *;
*       turn the procedure titles back on.                *;
***********************************************************;

proc freq data=pg1.storm_final;
	tables BasinName Season;
run;



