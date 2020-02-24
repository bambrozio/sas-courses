***********************************************************;
*  LESSON 6, PRACTICE 3                                   *;
*    a) Run the program and examine the output. The       *;
*       program produces a table and map for North        *;
*       Atlantic region storms in the 2016 season.        *;
*    b) Modify the program to produce a PDF file named    *;
*       StormSummary.pdf in the output folder in the      *;
*       course files. Set the output style to Journal.    *;
*    c) Use SAS Help to find a SAS system option that     *;
*       changes the page layout to landscape.             *;
*    d) Use SAS Help to learn about the ODS LAYOUT        *;
*       GRIDDED statement as a way that you can control   *;
*       the layout of multiple result objects. Force the  *;
*       results to be arranged in one row and two         *;
*       columns.                                          *;
*    e) Reset the system option at the end of the program *;
*       so that future results have a portrait layout.    *;
*    f) Run the program and open the StormSummary.pdf     *;
*       file to confirm the results.                      *;
***********************************************************;

title1 "2016 Northern Atlantic Storms";

proc sgmap plotdata=pg1.storm_final;
    *openstreetmap;
    esrimap url='http://services.arcgisonline.com/arcgis/rest/services/World_Physical_Map';
    bubble x=lon y=lat size=maxwindmph / datalabel=name datalabelattrs=(color=red size=8);
    where Basin='NA' and Season=2016;
    keylegend 'wind';
run;

proc print data=pg1.storm_final noobs;
	var name StartDate MaxWindMPH StormLength;
	where Basin="NA" and Season=2016;
	format StartDate monyy7.;
run;
