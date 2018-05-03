Select * from Table_name;

select column_name, ..., ... (x*30), ... from Table_name;

select 'my name '||first_name||' ... '||last_name from Table_name;

select DISTINCT col from Table_name;
select DISTINCT col1, col2, col3, ... from Table_name;

Create Table TName(
		col_name type number,
		col_name type varchar2(10),		
		col_name type number,	
		)

__/*notice PRIMARY KEY here________________________________*/
Insert into TName (c1, c2, ... [each needed])
	   values(as above, 'for strings'||i [<- adding var]);


__/*Insert into from another table = Copy Tables_________________*/
__/*notice PRIMARY KEY here________________________________*/
Insert into TName2 (c1, c2, ... [none or any u like])
	Select cX1, cX2, ... [none or any u like ~ above]
	From TName1;



Update TName 
	SET c1=XXX, c2=XXX, .... 
	where cX = XX 
	[if you dont write 'where', all rows will be affected]


DELETE FROM TName 
	where cX = XX;
	[if you dont write 'where', all rows will be affected]


Truncate Table TName;
	[no 'where' can be used]



__/* Full description about the table__________*/
DESC TName;



__/*Natural Join_[there wont be any NULL result]_________________*/
Select cX1, cX2, ..., cY1, cY2, ... 
	from TName1 
	NATURAL JOIN TName2;

... both are the same...

Select cX1, cX2, ..., cY1, cY2, ... 
	from TName1
	JOIN TName2
	ON (TName1.cX1 = TName2.cY1 AND
		 TName1.cX2 = TName2.cY2 ... ) ;

... another type ...

Select cX1, cX2, ..., cY1, cY2, ... 
	from TName1 
	JOIN 
	USING (cXX);


__/*Right Outer Join_[there will be NULL result]___________________
__[TName1 is source table which means that all data are coming from there
__and TName2 is the target table, which means it has to satisfy the condition
__or the result will be NULL]_____________________________________*/
Select cX1, cX2, ..., cY1, cY2, ... 
	from TName2 
	RIGHT OUTER JOIN TName1 [<- src table]
	ON (TName1.cXX = TName2.cYY ...); [notice: cXX = cYY]
						[it means they are foreign keys]
						[the same size and type]


Select cX1, cX2, ..., cY1, cY2, ... 
	from TName2 
	RIGHT OUTER JOIN TName1
	USING (cXX);				[notice: cXX = cYY]
						[it means they are foreign keys]
						[the same size and type]

						


__/*Left Outer Join_[there will be NULL result]___________________
__[TName2 is source table which means that all data are coming from there
__and TName1 is the target table, which means it has to satisfy the condition
__or the result will be NULL]_____________________________________*/
Select cX1, cX2, ..., cY1, cY2, ... 
	from TName2 [<- src table] 
	LEFT OUTER JOIN TName1 
	ON (TName1.cXX = TName2.cYY ...); [notice: cXX = cYY]
						[it means they are foreign keys]
						[the same size and type]
						

Select cX1, cX2, ..., cY1, cY2, ... 
	from TName2 
	LEFT OUTER JOIN TName1
	USING (cXX);				[notice: cXX = cYY]
						[it means they are foreign keys]
						[the same size and type]						

__/*Full Outer Join_[there will be NULL result]______________________
__[Both tables must satisfy the condition]________________________*/
Select cX1, cX2, ..., cY1, cY2, ... 
	from TName2 
	FULL OUTER JOIN TName1 
	ON (TName1.cXX = TName2.cYY ...); [notice: cXX = cYY]
						[it means they are foreign keys]
						[the same size and type]
						

Select cX1, cX2, ..., cY1, cY2, ... 
	from TName2 
	FULL OUTER JOIN TName1
	USING (cXX);				[notice: cXX = cYY]
						[it means they are foreign keys]
						[the same size and type]						


__/*Inner Join_[there wont be NULL result]___________________*/
Select cX1, cX2 , .... , cY1, cY2
	From TName1
	Inner Join TName2
	ON (TName1.cXX = TName2.cYY)		[notice: cXX = cYY]



__/*Cross Join_[there will be NULL result]___________________
__ Cartesian Product of two tables. 
__ The result is number of rows of two tables. X * X ________*/
Select cX1, cX2 , .... , cY1, cY2
	From TName1
	Cross Join TName2;

... both are the same...


Select cX1, cX2 , .... , cY1, cY2
	From TName1 , TName2;




select * from ....
	...
group by cube(...); 			--< it shows all different combination of results