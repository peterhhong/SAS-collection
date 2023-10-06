/* Create a sample dataset */
data mydata;
	input Region $ Quarter $ Sales;
	/*note: when $ is added, the variable before 
	the sign is now categorical, noted as character in SAS*/
	datalines;
	East Q1 100
	East Q2 150
	West Q1 200
	West Q2 250
	;
run;

/*The data called `mydata` is now viewable 
in explorer libraries-work-mydata*/

/*or to print out the data using the following statment*/
proc print data = mydata; 
run;

/*use var statement to print out selected variables*/
proc print data = mydata; 
	var sales; 
run;

/*only printing out Q1 data*/
proc print data = mydata; 
	where quarter = "Q1";
	/*note: the charater variable has to match exactly*/
run;

/*or to use sql*/
proc sql; 
	select * /*change to variable names separated by , if not selecting all*/
	from mydata; 
quit; 
