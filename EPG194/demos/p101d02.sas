***********************************************************;
*  Understanding SAS Program Syntax                       *;
***********************************************************;
*  Syntax                                                 *;
*    /*comment*/                                          *;
*    *comment;                                            *;
***********************************************************;
 
***********************************************************;
*  Demo                                                   *;
*    1) Run the program. Does it run successfully?        *;
*    2) Use the Format Code feature to improve the        *;
*       program spacing.                                  *;
*       * Enterprise Guide: Select Edit => Format Code.   *;
*         You can also right-click in the program         *;
*         and select Format Code or press Ctrl and I.     *;
*       * SAS Studio: Click Format Code. You can also     *;
*         right-click in the program and select Format    *;
*         Code.                                           *;
*    3) Add the following text as a comment before the    *;
*       DATA statement:                                   *;
*           Program created by <your-name>                *;
*    4) Comment out the first TITLE statement and the     *;
*       WHERE statement in PROC PRINT.                    *;
***********************************************************;

data mycars; set sashelp.cars;
	AvgMPG=mean(mpg_city, mpg_highway);
run;
title "Cars with Average MPG Over 35";
proc print data=mycars;
var make model type avgmpg;
where AvgMPG > 35; run;
title "Average MPG by Car Type";
proc means data=mycars 
mean min max maxdec=1; 
var avgmpg;class type;
RUN;TITLE;
