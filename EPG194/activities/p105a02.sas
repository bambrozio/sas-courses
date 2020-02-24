***********************************************************;
*  Activity 5.02                                          *;
*       Notice that there are no TITLE statements in the  *;
*       code. Run the program. Does the report have       *;
*       titles?                                           *;
***********************************************************;

proc means data=sashelp.heart;
	var height weight;
run;
