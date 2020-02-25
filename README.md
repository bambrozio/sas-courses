# SAS & WPS
Content generated from the course SAS programming courses. https://support.sas.com/training/us/paths/prg.html, but implemented and tested with WPS.

# WPS - Installation & Hello World
> (For MAC, but should be easily adapted for any other platform)

1. Access https://www.worldprogramming.com/
1. In the bottom, click in the link "Community Edtion" of the area "Try or Buy".
1. Click at "Get WPS Community".
1. Reigstry yourself.
1. Navigate to "My Account". You should see a record with the approved licesnse for the WPS Analytics. e.g.: L17545. Click at it.
1. Click at "Download Software For This License" and then at "Download (.dmg).
1. Get back to "My Account" and once again click at the licence number link.
1. At the bottom, click at the licence number under "License keys" to download the lincece file.
1. Navigate to the directory where you download the .dmg, right click in it and "open". (the process will open a screen with a README_en.txt and the WPS icons. Don't execute it!)
1. Open a Finder screen, navigate to "Applications", and drag-and-dropp the WPS icon inside it.
1. Open a command line instance and type:
```
sudo ln -sf /Applications/WPS.app/Contents/MacOS/wps /usr/local/bin
```
1. Then, the following to activate the licence: (assuming you download it to `~/Downloads` directory)
```
sudo wps -setinit ~/Downloads/Licence\ Key\ K31172.wpskey
```
> Note: Mac OS probably will tell you it cannot be executed, due security reasons. In this case, go to "System Prefferences" > "Security & Privacy" and under the tab "General" you will see that "WPS" is blocked. Just click in "Open Anyway" to fix it. You will need to run the step above to add the licence again. (If WPS opens, you should close it in order to run the command to add the licence again first.)
1. You can double-check if the licence were successfuly added by checking if the file exist:
```
/Library/Preferences/worldprogramming/WPS/4/setinit.dat
```
1. Open up the WPS as any other app.

# Hello World
1. Navigate to File > New > Project. Select WPS, add a name to your project and click finish.
1. File > New > Program, and paste the content bellow (comments help to understand what it is doing):
```
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
```
1. Right click in the file, and "Run".

---

# SAS on Jupyter Notebooks
> Assume you have miniconda installed. If not, [do it](https://docs.conda.io/en/latest/miniconda.html).
1. Create a virtual environment to accomodate your Data Science tools:
```
$ conda create -n ds_env r-essentials r-base python=3.6 -y
$ conda activate ds_env
(ds_env)$ pip install sas_kernel notebook pandas
```
1. 
```
cp /Users/bambrozi/miniconda3/envs/ds_env/lib/python3.6/site-packages/saspy/sascfg.py /Users/bambrozi/miniconda3/envs/ds_env/lib/python3.6/site-packages/saspy/sascfg_personal.py
```

1. Start the Jupyter notebook server:
```
(ds_env)$ jupyter notebook
```
1. You should be able to run SAS in it. (See in the right upper corner the button "new" with the option "sas").