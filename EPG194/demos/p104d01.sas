**************************************************;
*  Read a SAS table and create a subset as new   *;
*  SAS table                                     *; 
**************************************************;
*  Syntax and Example                            *;
*                                                *;
*    DATA output-table;                          *;
*        SET input-table;                        *;
*		 WHERE expression;                       *;
*    RUN;                                        *; 
**************************************************;

data myclass;
    set sashelp.class;
    where age >= 15;
run;

**************************************************;
*  Subset columns using the DROP or KEEP         *;
*  statements                                    *;
**************************************************;
*  Syntax and Example                            *;
*                                                *;
*    DATA output-table;                          *;
*        SET input-table;                        *;
*		 DROP variable-list;                     *;
*        /*OR*/                                  *;
*		 KEEP variable-list;                     *;
*    RUN;                                        *; 
**************************************************;

data myclass;
    set sashelp.class;
    keep name age height;
    *drop sex weight;
run;

**************************************************;
*  Apply permanent formats using the             *;
*  FORMAT statement                              *;
**************************************************;
*  Syntax and Example                            *;
*                                                *;
*    DATA output-table;                          *;
*        SET input-table;                        *;
*        FORMAT variable(s) format;              *;
*    RUN;                                        *; 
**************************************************;

data myclass;
    set sashelp.class;
    format height 4.1 weight 3.;
run;


