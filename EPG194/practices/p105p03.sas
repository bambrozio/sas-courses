***********************************************************;
*  LESSON 5, PRACTICE 3                                   *;
*    a) Highlight the first TITLE statement and PROC FREQ *;
*       step, run the selected code, and examine the      *;
*       generated plot. The program subsets the           *;
*       PG1.NP_CODELOOKUP table for three park types:     *;
*       National Historic Site, National Monument, and    *;
*       National Park. The plot uses a stacked layout     *;
*       with a horizontal orientation.                    *;
*    b) To create a more customized frequency bar chart,  *;
*       the SGPLOT procedure can be used with the         *;
*       pg1.np_codelookup table. Examine the PROC SGPLOT  *;
*       step in the demo program.                         *;
*       1) The HBAR statement creates a horizontal bar    *;
*          chart with separate bars for each Region. The  *;
*          GROUP= option segments each bar by the         *;
*          distinct values of Type.                       *;
*       2) The KEYLEGEND statement customizes the         *;
*          appearance and position of the legend.         *;
*       3) The XAXIS statement adds reference lines on    *;
*          the horizontal axis.                           *;
*    c) Use SAS Help or autocomplete prompts to look for  *;
*       additional options in the HBAR statement to       *;
*       customize the appearance of the chart.            *;
*       1) Display labels on each segment of the bars.    *;
*       2) Change the fill attributes for each bar to     *;
*          make the color 50% transparent.                *;
*       3) Apply different values for the DATASKIN option *;
*          to change the color effect on the bars.        *;
***********************************************************;

title1 'Counts of Selected Park Types by Park Region';
ods graphics on;
proc freq data=pg1.np_codelookup order=freq;
	tables Type*Region / crosslist plots=freqplot(twoway=stacked orient=horizontal);
	where type in ('National Historic Site', 'National Monument', 'National Park');
run;

/*part b*/
title1 'Counts of Selected Park Types by Park Region';
proc sgplot data=pg1.np_codelookup;
    where Type in ('National Historic Site', 'National Monument', 'National Park');
    hbar region / group=type;
    keylegend / opaque across=1 position=bottomright location=inside;
    xaxis grid;
run;

