**************************************************;
*     Exploring Data with Procedures             *;
**************************************************;
*  Syntax                                        *;
*                                                *;
*    PROC PRINT DATA=input-table(OBS=n);         *;
*        VAR col-name(s);                        *;
*    RUN;                                        *;
*                                                *;
*    PROC MEANS DATA=input-table;                *;
*        VAR col-name(s);                        *;
*    RUN;                                        *;
*                                                *;
*    PROC UNIVARIATE DATA=input-table;           *;
*        VAR col-name(s);                        *;
*    RUN;                                        *;
*                                                *;
*    PROC FREQ DATA=input-table;                 *;
*        TABLES col-name(s);                     *;
*    RUN;                                        *;
**************************************************;

proc print data=sashelp.cars(obs=10);
	var Make Model Type MSRP;
run;

proc means data=sashelp.cars;
	var EngineSize Horsepower MPG_City MPG_Highway;
run;

proc univariate data=sashelp.cars;
	var MPG_Highway;
run;

proc freq data=sashelp.cars;
	tables Origin Type DriveTrain;
run;

***************************************************************;
*  Demo                                                       *;
*    1) Complete the PROC PRINT statement to list the data in *;
*       PG1.STORM_SUMMARY. Print the first 10 observations.   *;
*       Highlight the step and run the selected code.         *;
*    2) Add a VAR statement to include only the following     *;
*       columns: Season, Name, Basin, MaxWindMPH, MinPressure,*;
*       StartDate, and EndDate. Add "list first 10 rows" as a *;
*       comment before the PROC PRINT statement. Run the step.*;
*    3) Copy the PROC PRINT step and paste it at the end of   *;
*       the program. Change PRINT to MEANS. Remove the OBS=   *;
*       data set option to analyze all observations. Modify   *;
*       the VAR statement to calculate summary statistics for *;
*       MaxWindMPH and MinPressure. Add "calculate summary    *;
*       statistics" as a comment before the PROC MEANS        *;
*       statement. Highlight the step and run the selected    *;
*       code.                                                 *;
*    4) Copy the PROC MEANS step and paste it at the end of   *;
*       the program. Change MEANS to UNIVARIATE. Add "examine *;
*       extreme values" as a comment before the PROC          *;
*       UNIVARIATE statement. Highlight the step and run the  *;
*       selected code.                                        *;
*    5) Copy the PROC UNIVARIATE step and paste it at the end *:
*       of the program. Change UNIVARIATE to FREQ. Change the *;
*       VAR statement to a TABLES statement to produce        *;
*       frequency tables for Basin, Type, and Season. Add     *;
*       "list unique values and frequencies" as a comment     *;
*       before the PROC FREQ statement. Highlight the step    *;
*       and run the selected code.                            *;
***************************************************************;

proc print ;
run;


