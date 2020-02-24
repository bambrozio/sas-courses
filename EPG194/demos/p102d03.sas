***********************************************************;
*  Importing a Comma-Delimited (CSV) File                 *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    PROC IMPORT DATAFILE="path/filename.csv" DBMS=CSV    *;
*  				  OUT=output-table <REPLACE>;             *;
*        <GUESSINGROWS=n|MAX>;                            *;
*    RUN;                                                 *;
***********************************************************;

proc import datafile="s:/workshop/data/class_birthdate.csv" 
			dbms=csv out=work.class_birthdate_import
			replace;
run;

***********************************************************;
*  Demo                                                   *;
*  1) Complete the PROC IMPORT step to read               *;
*     STORM_DAMAGE.CSV and create a temporary SAS table   *;
*     named STORM_DAMAGE_IMPORT. Replace the table if it  *;
*     exists.                                             *;
*  2) Complete the PROC CONTENTS step to examine the      *;
*     properties of STORM_DAMAGE_IMPORT.                  *;
*  3) Highlight the demo program and submit the selected  *;
*     code.                                               *;
***********************************************************;

*Complete the PROC IMPORT step;
proc import ;
run;

*Complete the PROC CONTENTS step;
proc contents data= ;
run;
