***********************************************************;
*  Exporting Data to an Excel Workbook                    *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    LIBNAME libref XLSX "path/file.xlsx";                *;
*      <use libref for output table(s)>                   *;
*    LIBNAME libref CLEAR;                                *;
***********************************************************;

libname myxl xlsx "&outpath/cars.xlsx";

data myxl.asiacars;
    set sashelp.cars;
    where origin='Asia';
run;

libname myxl clear;

***********************************************************;
*  Demo                                                   *;
*    1) Examine the DATA and PROC MEANS steps and         *;
*       identify the temporary SAS tables that will be    *;
*       created. Highlight the demo program and run the   *;
*       selected code.                                    *;
*    2) Add a LIBNAME statement to create a library named *;
*       xlout that points to an Excel file named          *;
*       SOUTHPACIFIC.XLSX in the OUTPUT folder of the     *;
*       course data.                                      *;
*    3) Modify the DATA and PROC steps to write output    *;
*       tables to the xlout library.                      *;
*    4) Add a LIBNAME statement to clear the xlout        *;
*       libref. Highlight the demo program and run the    *;
*       selected code.                                    *;
*    5) Open Excel if it is available. Open the           *;
*       SOUTHPACIFIC.XLSX workbook and confirm that the   *;
*       data is contained in the worksheets that are      *;
*       named South_Pacific and Season_Stats.             *;
***********************************************************;

data South_Pacific;
	set pg1.storm_final;
	where Basin="SP";
run;

proc means data=pg1.storm_final noprint maxdec=1;
	where Basin="SP";
	var MaxWindKM;
	class Season;
	ways 1;
	output out=Season_Stats n=Count mean=AvgMaxWindKM max=StrongestWindKM;
run;
