***********************************************************;
*  Activity 5.01                                          *;
*    1) In the program, notice that there is a TITLE      *;
*       statement followed by two procedures. Run the     *;
*       program. Where does the title appear in the       *;
*       output?                                           *;
*    2) Add a TITLE2 statement above PROC MEANS to print  *;
*       a second line: Summary Statistics for MaxWind and *;
*       MinPressure                                       *;
*    3) Add another TITLE2 statement above PROC FREQ with *;
*       this title: Frequency Report for Basin            *;
*    4) Run the program. Which titles appear above each   *;
*       report?                                           *;
***********************************************************;

title "Storm Analysis";
proc means data=pg1.storm_final;
	var MaxWindMPH MinPressure;
run;

proc freq data=pg1.storm_final;
	tables BasinName;
run;
