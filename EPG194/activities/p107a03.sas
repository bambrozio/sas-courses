***********************************************************;
*  Activity 7.03                                          *;
*    1) Modify the query to create a temporary table      *;
*       named TOP_DAMAGE.                                 *;
*    2) Add an additional query in the same PROC SQL step *;
*       to generate a report that lists all the columns   *;
*       for the first 10 storms in the top_damage table.  *;
*    3) Add a TITLE statement before the second query to  *;
*       display the following text: Top 10 Storms by      *;
*       Damage Cost.                                      *;
*    4) How many of the top 10 storms occurred in 2005?   *;
***********************************************************;

proc sql;
*Modify the query to create a table;
select Event, Date format=monyy7., Cost format=dollar16.
    from pg1.storm_damage
    order by Cost desc;
    *Add a title and query to create a top 10 report;
quit;
