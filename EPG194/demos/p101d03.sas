***********************************************************;
*  Finding and Resolving Syntax Errors                    *;
***********************************************************;
 
***********************************************************;
*  Demo                                                   *;
*    1) Identify the three syntax errors but do not fix   *;
*       them. Run the program.                            *;
*    2) Carefully review the messages in the log.         *;
*    3) Fix the code and rerun the program.               *;
***********************************************************;

daat mycars;
	set sashelp.cars;
	AvgMPG=mean(mpg_city, mpg_highway);
run;

title "Cars with Average MPG Over 35";
proc print data=mycars
	var make model type avgmpg;
	where AvgMPG > 35;
run;

title "Average MPG by Car Type";
proc means data=mycars average min max maxdec=1;
	var avgmpg;
	class type;
run;

title;
