/*We can go to the WPS Server Explorer tab, expand the Local server
and right click > properties in the table. Or run the command below to print it 
as an HTML results

TODO: The course suggests something like below in a table still not loaded would work for SAS:

proc contents data="FILEPATH/storm_summary.sas7bdat";
run;

But it's not working here, in the WPS... I have to investigate.
*/
proc contents data=pg1.storm_summary;
run;