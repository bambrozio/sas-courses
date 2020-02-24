***********************************************************;
*  Filtering Rows Using Macro Variables                   *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    %LET macrovar=value;                                 *; 
*                                                         *;
*    Usage:                                               *;
*    WHERE numvar=&macrovar;                              *;
*    WHERE charvar="&macrovar";                           *;
*    WHERE datevar="&macrovar"d;                          *;
***********************************************************;

%let CarType=Wagon;

proc print data=sashelp.cars;
	where Type="&CarType";
	var Type Make Model MSRP;
run;

proc means data=sashelp.cars;
	where Type="&CarType";
	var MSRP MPG_Highway;
run;

proc freq data=sashelp.cars;
    where Type="&CarType";
	tables Origin Make;	
run;

***********************************************************;
*  Demo                                                   *;
*    1) Highlight the demo program and run the selected   *;
*       code.                                             *;
*    2) Write three %LET statements to create macro       *;
*       variables named WindSpeed, BasinCode, and Date.   *;
*       Set the initial values of the variables to match  *;
*       the WHERE statement.                              *;
*    3) Modify the WHERE statement to reference the macro *;
*       variables. Highlight the demo program and run the *;
*       selected code. Verify that the same results are   *;
*       produced.                                         *;
*    4) Change the values of the macro variables to       *;
*       values that you select. Possible values for Basin *;
*       include NA, WP, SP, WP, NI, and SI. Highlight the *;
*       demo program and run the selected code.           *;
***********************************************************;

proc print data=pg1.storm_summary;
	where MaxWindMPH>=156 and Basin="NA" and StartDate>="01JAN2000"d;
	var Basin Name StartDate EndDate MaxWindMPH;
run;

proc means data=pg1.storm_summary;
	where MaxWindMPH>=156 and Basin="NA" and StartDate>="01JAN2000"d;
	var MaxWindMPH MinPressure;
run; 


