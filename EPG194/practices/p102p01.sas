***********************************************************;
*  LESSON 2, PRACTICE 1                                   *;
*    a) Complete the PROC IMPORT step to read             *;
*       EU_SPORT_TRADE.XLSX. Create a SAS table named     *;
*       EU_SPORT_TRADE and replace the table              *;
*       if it exists.                                     *;
*    b) Modify the PROC CONTENTS code to display the      *;
*       descriptor portion of the EU_SPORT_TRADE table.   *;
*       Submit the program, and then view the output data *;
*       and the results.                                  *;
***********************************************************;

proc import ;
run;

proc contents data= ;
run;
