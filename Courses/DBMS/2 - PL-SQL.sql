__PL/SQL Programming_____________________________


 SET ServerOutput ON;				-- to see the results
 							-- one time only


__/* Optional Block: for defining new vars */___________
DECLARE

	-- These are User Variables, that works only here
	Var_first_name VARCHAR2(30);
	Var_last_name VARCHAR2(30);
	Var_X		NUMBER := 10;
	Var_Y		...(any type)... := '&enter_a_character';
						--^^^^ insert message
						--	pops up to enter data.

	Var_X		Boolean := True;

	
	-- or instead, we can use the Refernece Data Type
	-- it automatically configure itself, always.
	Var_first_name EMPLOYEES.first_name%TYPE;
	Var_last_name EMPLOYEES.last_name%TYPE;
	------------------------------------------------------------
	

	-- ALL CONSTANTs must be initialized NOW
	-- initialize with := 
	Con_flag CONSTANT NUMBER := 0; 
	Con_flag CONSTANT NUMBER Default 0; 
	C_Pi	  CONSTANT NUMBER (7, 6) Not NULL Default 3.141592;
	----------------------------------------------------------------------------


__/* Main Block: The procedure goes inside */__________
BEGIN
	SELECT first_name, last_name 		-- grab data from
	INTO var_first_name, var_last_name 		-- put data into vars
	FROM EMPLOYEES 				-- from Table
	WHERE employee_id =100; 			-- grab condition, must be used
							-- 	because at each time,
							--	only one item is 
							--	grabbed.

	DBMS_OUTPUT.PUT_LINE(‘Employee Name ’||	-- display data
					var_first_name||
					’ ‘||var_last_name);

__/* Optional Block */______________________________
EXCEPTION
  WHEN NO_DATA_FOUND THEN
  DBMS_OUTPUT.PUT_LINE (‘No Employee Found with ’||employee_id);


END; 
/				--> it means that the previous Block is finished.
				--	and now you can write the next block



__Bind variables a.k.a Host variables______________________________
Unlike 'User Variables' which can only be declared inside the declaration section of PL/SQL block you can declare 'Bind Variables' anywhere in the host environment and that is the reason why we also refer 'Bind Variables' as 'Host Variables'. 

 	-- Write it anywhere you want
	VARIABLE  v_bind1 	VARCHAR2 (10); 
				NVARCHAR2(10);
				....
	--^^^^^ this must come first to create a Bind Variable

	
	-- How to set values? 2 ways
	--to see the results, first do it:
	SET AUTOPRINT ON; 


	-- Set value #1
	EXEC   :v_bind1 := 'what ever u like';
	--^^^^ These are important

	--Set value #2
	BEGIN
		:v_bind1 := 'what ever u like';
	END

	-- to see the results:
	Print :v_bind1;
	---------------------------------------------



__If condition___________________________________

--TYPE 1 ------------------------------------------------------
If (con1 AND cond2 OR cond3 ....) THEN	
	...... ;
	...... ;
END If;



-- TYPE 2 ------------------------------------------------------
If (con1 AND cond2 OR cond3 ....) THEN	
	........;
	........;
else
	.......;
	.......;
END If;


--Type 3 ------------------------------------------------------
If (con1 AND cond2 OR cond3 ....) THEN	
	........;
	........;
elsif 						-- note it is "elsif"
	.......;
	.......;
elsif
	.......;
	.......;
	.
	.
	.
else 						-- the last one is only "eles"
	.......;
	.......;		
END If;







__LOOP___________________________________

Loop 
	....
	....
	....

	------Exit Condition #1
	If ....... THEN
		EXIT;
	END if;

	------Exit Condition #2
	EXIT When ........;

END Loop;




__WHILE___________________________________

While ................ Loop
	....;
	....;
END Loop;





__For Loop_________________________________________

for variable IN 1..100 Loop
	....;
	....;

END Loop;
