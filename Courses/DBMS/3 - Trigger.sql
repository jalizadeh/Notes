d__PL/SQL Programming_____________________________


__TRIGGER______________________________________



Types:
	DML Triggers
	DDL Triggers
	System / Database Event Triggers
	Instead Of Triggers
	Compound Triggers


Schema:

	-- this line is mandatory
	CREATE OR REPLACE TRIGGER "Trigger_name"	-- no quotations

	-- when should the trigger jump
	{BEFORE|AFTER} 	/* Triggering_event */			ON table_name
				UPDATE [OF   column_name]
				DELETE
				INSERT



	-- for each row or whole table
	[FOR EACH ROW]

	[FOLLOWS another_trigger_name]

	[ENABLE/DISABLE]

	[WHEN condition]

	-- PL/SQL Code to do something
	-- read  PL-SQL.sql  for instructions
	DECLARE
		declaration statements;

	BEGIN
		executable statements;

		EXCEPTION
		 exception-handling statements;
	END;




Example: This trigger jumps when INSERT / DELETE / UPDATE happens
------------------------------------------------------------------------------------------
	CREATE OR REPLACE TRIGGER tr_superheroes
	BEFORE INSERT OR DELETE OR UPDATE ON superheroes
	FOR EACH ROW
	ENABLE
	When (NEW.cx > ....)		-- there is no     :     here

	DECLARE
	 v_user VARCHAR2(15);
	BEGIN
		-- it gets the current user from table DUAL
		SELECT user INTO v_user FROM DUAL;

		IF INSERTING THEN
		 DBMS_OUTPUT.PUT_LINE('one line inserted by '||v_user);
		ELSIF DELETING THEN
		 DBMS_OUTPUT.PUT_LINE('one line Deleted by '||v_user);
		ELSIF UPDATING THEN
		 DBMS_OUTPUT.PUT_LINE('one line Updated by '||v_user);
		END IF;
	END;
	/





	MUST------------------------------------
	READ PDFs for more details about
		OLD / NEW
		:OLD / :NEW
		OLD_TABLE / NEW_TABLE