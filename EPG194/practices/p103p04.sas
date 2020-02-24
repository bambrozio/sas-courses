***********************************************************;
*  LESSON 3, PRACTICE 4                                   *;
*  a) Add a WHERE statement to print only the rows where  *;
*     ParkName includes Preserve.                         *;
*  b) Submit the program and verify the generated output. *;
*     Which codes are used for Preserves?                 *;
***********************************************************;

proc print data=pg1.np_summary;
	var Type ParkName;
	*Add a WHERE statement;
run;