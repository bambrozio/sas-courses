***********************************************************;
*  Using Expressions to Create New Columns                *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    DATA output-table;                                   *;
*        SET input-table;                                 *;
*        new-column = expression;                         *;
*    RUN;                                                 *;
***********************************************************;

data cars_new; 
	set sashelp.cars;
	where Origin ne "USA";
	Profit=MSRP-invoice;
	Source="Non-US Cars";
	format Profit dollar10.;
	keep Make Model MSRP Invoice Profit Source;
run;

***********************************************************;
*  Demo                                                   *;
*    1) Add an assignment statement to create a numeric   *;
*       column named MaxWindKM by multiplying MaxWindMPH  *;
*       by 1.60934.                                       *;
*    2) Add a FORMAT statement to round MaxWindKM to the  *;
*       nearest whole number.                             *;
*    3) Add an assignment statement to create a new       *;
*       character column named StormType that is equal to *;
*       Tropical Storm. Highlight the DATA step and run   *;
*       the selected code.                                *;
***********************************************************;

data tropical_storm;
	set pg1.storm_summary;
	drop Hem_EW Hem_NS Lat Lon;
	where Type="TS";
	*Add assignment and FORMAT statements;
run;
