data myclass;
	set PG1.CLASS_UPDATE; /*Creates a table unther server > libraries > work > myclass*/
run;

proc print data=myclass; /*Print the table to the results explorer*/
run;

/*----- Labs ------ (select and run only leection blocks)*/

data work.eu_occ;
	set PG1.EU_OCC;
	halfShortStay=ShortStay/2; /*Creates another column*/
run;

/*Runs the proc "means" in the EU_OCC table to extract the mean and sum of the column 
halfShortStay, groupled by the column Geo*/
proc means data=work.EU_OCC mean sum;
	var halfShortStay;
	class Geo;
run;

