***********************************************************;
*  Reading and Filtering Data with SQL                    *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    PROC SQL;                                            *;
*        SELECT col-name, col-name FORMAT=fmt             *;
*        FROM input-table                                 *;
*        WHERE expression                                 *;
*        ORDER BY col-name <DESC>;                        *;
*    QUIT;                                                *;
*                                                         *;
*    New column in SELECT list:                           *;
*    expression AS col-name                               *;
***********************************************************;

proc sql;
select Name, Age, Height*2.54 as HeightCM format 5.1,
       Birthdate format=date9.
    from pg1.class_birthdate
    where age > 14
    order by Height desc;
quit; 
 
***********************************************************;
*  Demo                                                   *;
*    1) Add a SELECT statement to retrieve all columns    *;
*       from PG1.STORM_FINAL. Highlight the step and run  *;
*       the selected code. Examine the log and results.   *;
*    2) Modify the query to retrieve only the Season,     *;
*       Name, StartDate, and MaxWindMPH columns. Format   *;
*       StartDate with MMDDYY10. Highlight the step and   *;
*       run the selected code.                            *;
*    3) Modify Name in the SELECT clause to convert the   *;
*       values to proper case.                            *;
*    4) Add a WHERE clause to include storms during or    *;
*       after the 2000 season with MaxWindMPH greater     *;
*       than 156.                                         *;
*    5) Add an ORDER BY clause to arrange rows by         *;
*       descending MaxWindMPH, and then by Name.          *;
*    6) Add TITLE statements to describe the report.      *;
*       Highlight the step and run the selected code.     *;
***********************************************************;

proc sql;
*Add SELECT statement;

quit;
