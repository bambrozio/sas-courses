
/**********************************************/
/* You must run SETUP.SAS before you run      */
/* this code to create your data for EPG194   */
/*                                            */
/* DO NOT EDIT THE CODE BELOW                 */
/**********************************************/

%include "&path/_1create_class.sas";
%include "&path/_2create_natpark.sas";
%include "&path/_3create_storm.sas";

proc contents data=pg1._all_ nods;
run;
