***********************************************************;
*  Conditional Processing with IF-THEN                    *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    IF expression THEN statement;                        *;
***********************************************************;

data cars2;
    set sashelp.cars;
    if MSRP<30000 then Cost_Group=1;
    if MSRP>=30000 then Cost_Group=2;
	keep Make Model Type MSRP Cost_Group;
run;

***********************************************************;
*  Demo                                                   *;
*    1) Create a column named PressureGroup that is based *;
*       on the following assignments:                     *;
*       MinPressure<=920 => 1                             *;
*       MinPressure>920 => 0                              *;
*    2) Highlight the DATA step, run the selected code,   *;
*       and examine the data. What value is assigned      *;
*       to PressureGroup when MinPressure is missing?     *;
*    3) Add a new IF-THEN statement before the existing   *;
*       IF-THEN statements to assign PressureGroup=. if   *;
*       MinPressure is missing.                           *;
*    4) Highlight the DATA step and run the selected      *;
*       code. What value is assigned to PressureGroup?    *;
***********************************************************;

data storm_new;
	set pg1.storm_summary;
	keep Season Name Basin MinPressure PressureGroup;
	*Add IF-THEN statements;
run;
