***********************************************************;
*  Activity 4.01                                          *;
*    1) Complete the DATA step to create a temporary      *;
*       table named STORM_NEW and read PG1.STORM_SUMMARY. *;
*       Run the program and read the log.                 *;
*    2) Define a library named out pointing to the output *;
*       folder in the main course files folder.           *;
*    3) Change the program to save a permanent version of *;
*       STORM_NEW in the out library. Run the modified    *;
*       program.                                          *;
***********************************************************;

data ;
	set ;
run;

***********************************************************;
*  Activity 4.03                                          *;
*    1) Change the name of the output table to            *;
*       STORM_CAT5.                                       *;
*    2) Include only Category 5 storms (MaxWindMPH        *;
*       greater than or equal to 156) with StartDate on   *;
*       or after 01JAN2000.                               *;
*    3) Add a statement to include the following columns  *;
*       in the output data: Season, Basin, Name, Type,    *;
*       and MaxWindMPH. How many Category 5 storms        *;
*       occurred since January 1, 2000?                   *;
***********************************************************;