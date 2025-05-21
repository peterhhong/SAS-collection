*Here also using the same data created previously as an example;

/* Create a sample dataset */
data mydata;
	input Region$ Quarter$ Sales;
	/*note: when $ is added, the variable before 
	the sign is now categorical, noted as character in SAS*/
	datalines;
	East Q1 100
	East Q2 150
	West Q1 200
	West Q2 250
	; /* note that this ';' has to be in a separate line */
run;

*first thing to look at the type of variables in a datafile;
proc contents data = mydata varnum; 
*varnum to show variables in sequence;
*otherwise by default it display variables in alphabetical order;
run;

*Add a new variable;
data mydata;
	set mydata;
	costs = sales; *here creating a new variable that is the same as sales;
run;

*Arithmatic calculation;
data mydata;
	set mydata;
	costs_sales_total = costs + sales;
	profit = sales - costs;
	sales_double = sales * 2;
	sales_square = sales ** 2;
run;

*convert variables from numeric to character and vice versa;
*numeric to text;
data mydata; set mydata;
	sales_char = put(sales, 8.);
run;
*text to numeric;
*note, ONLY numbers can be converted, letters would not!;
data mydata; set mydata;
	region_num = input(region, 8.);
	sales_num = input(sales_char, 8.);
run;

	 
