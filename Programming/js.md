JavaScript
------------------------------------
1:					2017/04/11
2: 					2017/04/13
------------------------------------


Client						Server
------------------------------------------------
JS/ HTML/ CSS 			PHP/ ASP/ JSP





FEATURES:
------------------------------
	. case sensitive
	. no variable type
	. ";" is optional
	. comments are "//" or "/*      */"






HOW TO USE:
------------------------------
	inline script:
		<script type="text/javascript">
			function hi(){
				alert("Hello world");
			}
		</script>


	external script:
		<html>
			<head>
				<script type="text/javascript" src="example.js"> </srcript>
			</head>
			<body>
			</body>
		</html>


	to check if it is disabled or not?
		<noscript> </noscript>





IDENTIFIERS:
------------------------------
	#case_sensitive
	. The initial is a letter, underscore (_) or dollar ($)
	. The next characters are letters, digits, underscores or dollars
	. The word is not a reserved word

	. everthing is possible, except RESERVED keywords
	abstract 		delete 			function 			synchronized 		with
	boolean 		do 				goto 				switch 				while
	break 			double 			if 					super 				volatile
	byte 			else			implements 		static 				void
	case 			enum 			import 				short 				var
	catch 			export 			in
	char 			extends 		instanceof
	class 			false 			int
	const			final 			interface
	continue 		finally 			long
	debugger 		float 			native
	default 			for 				new
	null 			throw 			this
	package 		throws
	private 			transient
	protected 		true
	public 			try
	return			typeof
	
	
	
	
	
	
	

VARIABLE:
------------------------------
	. a variable can be identified by any identifier
	. a variable has no fixed type
		- a type is assigned at each assignment
		- type may change according to the context where the variable is referenced
	. a variable needs no declaration
	. a variable can be assigned by the assignment operator =

	-- A variable declared inside a function is "local"
	-- A variable used without declaration is "always global"

	-- A declared variable has value undefined until a value is assigned to it

	[js]
		var x=0, y , b1 = false, hi = 2.5;
		var msg = "Hello";

		//also can remove "var", not good
		msg = "Hello";
	[js]




CONSTANT:
-------------------------
	const 	constantName=/VALUE/;





BUILT IN DATATYPES:
------------------------------
	type = typeof (variable);

	number: 							// [-2^53 , 2^53]
		1, 1.2, -200, 0433, 0xAB4E, Infinity, NaN, 3.12e6
					  //oct   // hex	

		"Number.MAX_VALUE"							:: the greatest non-infinite number
		"Number.MIN_VALUE"							:: the smallest non-infinite number
		"Infinity" or "Number.POSITIVE_INFINITY" 	:: +∞
		"Number.NEGATIVE_INFINITY"				::  -∞
		"NaN" or "Number.NaN"						:: a result that is “not-a-number”
		

	string:
		'alex', "alex", 'two words', 'hello\nworld'
		// ' '  =  " " 

		\n 		new line				\\ 			\
		\t 		tab						\' 			'
		\b 		backspace				\"			"
		\r 		carriage return			\xnn		character code (Hex)
		\f 		form feed				\uNNNN	unicode character code


	boolean:
		true, false
		. automatically converted into 1 and 0 when necessary


	undefined:
		// unknown type
		var x;

	null:

	object:





CONVERTING TYPES:
------------------------------
								Number()
		---------------------------------------
		'332'			 		332
		null				 		0
		undefined		 		NaN
		""				 		0

		//it is assumed as Octadecimal number
		022	3					147	

		'0223'			 		223
		'0223a' 		 		NaN
		'0xdd'			 		0xff  or 255
		true 			 		1


						parsInt() 			parsFloat()
		-----------------------------------------------------
		'123'			123					123
		'123a'			123					123
		'12.3'			12					12.3
		'12.3a'			12					12.3
		'070'			70					70
		'0x70'			112					112
		'abc'			NaN				NaN
		''				NaN				NaN
		true			NaN 				NaN
		null	 			NaN				NaN



								object.toString(<base>)
		--------------------------------------------------------
		var num = 10

		num.toString()			"10"
		num.toString(2)		"1010"
		num.toString(8)		"12"
		num.toString(10)		"10"
		num.toString(16)		"a"



								Boolean()
		---------------------------------------
		0						false
		1						true
		NaN					false
		Infinity					true
		'a'						true
		''						false
		undefined				false
		null						false
		any "not_null" obj 	true





UNARY OPERATORS:
------------------------------
	. can be operated on non_numeric types 
		then, first it is converted to Number, then operated

		a++	/ 	a--
		++a 	/ 	--a 

		b = (a++) * 2 			--> 		b = a * 2; a = a + 1;
		b = (++a) * 2			--> 		b = a + 1; b = a * 2;		





BITWISE OPERATORS:
------------------------------
	. in JS, all numbers are 64bit and Signed
	. BITWISE calculations are done only on first 32bits

	not: (~)
		. negative numbers are stored as 2`s Complement

			[js]
				var num1 = 25;		//0000...11001
				var num2 = ~num1;	//1111...00110
				alert(num2);			// -26

				// for showing -25, add "+1"
				alert(num2 +1);			// -25			
			[js]


	and: (&)

	or: ( | )

	xor: ( ^ )

	shl: ( << )
		[js]
			var oldValue = 2;
			var newValue = oldValue<<5;
		[end]


	shr: ( >> )
		signed = keeps the sign of number
		if "msb" is "0", inserts "0"
		if "msb" is "1", inserts "1"


	shr: ( >>> )
		unsigned = doesn`t keeps the sign of number
		if "msb" is "0" or "1", it inserts "0"



BOOLEAN OPERATORS:
------------------------------
	not: < ! >
		<!>false 		-> 		true
		<!>"blue"		-> 		false

	and: (&&)

	or: (||)




ARITHMETICAL OPERATORS:
--------------------------------------
	< + - * / %> 
	. both must be "Number" or they will be converted
	. if one is "NaN", result is "NaN"
	. division by 0 			= "Infinity"
	. 0 divided by 0 		= "NaN"
	. 0 multiply "Infinity" 	= "NaN"




RELATIONAL OPERATORS:
--------------------------------------
	---------------------------------------------------------
	<    >    <=   >=    ==    !=   !==    ===   in   instanceof
	---------------------------------------------------------
	. if both are String, they will be compared as Strings
	. else, all converted to numbers and compared
	[js]
		> 				x > y 				// greater than
		>= 			x >= y 				// greater than or equal to
		< 				x < y 				// less than
		<= 			x <= y 				// less than or equal to
		== 			x == y 				// is equal to (after data type conversions)
		!= 				x != y 				// is not equal to (after data type conversions)
		=== 			x === y 			// is equal both value and same type
		!== 			x !== y 			// is not equal both value and same type
		in 				a in x 				// is a property of object
		instanceof 		y instanceof x 		// is an instance of prototype
	[end]


	5 		> 	3					true
	"Brick" 	< 	"alphabet"			true
	"brick" 	< 	"alphabet"			false
	"23" 	< 	"3"					true
	"23" 	< 	3					false
	"a" 		< 	3					false
	NaN	< 	3					false		// always
	NaN 	>= 3					false		// always







Operator Precedence Classes:
---------------------------------------

	1. 		() [ ] . 								// parenthesis, call member
	2. 		++ -- 								// increment/decrement
	3. 		+ - ~ ! ! 							// unary only one "!"
	4. 		* / % 								// multiplicative
	5. 		+ - 								// additive
	6. 		<< >> >>> 						// shift
	7. 		& 									// bitwise and
	8. 		| 									// bitwise or
	9. 		^ 									// bitwise exor
	10. 	< > >= >= 						// relational
	11. 	==   ===   !=    !== 			// equality
	12. 	&& 								// logical and
	13. 	| 									// logical or
	14. 	? : 									// ternary cond.
	15. 	= += -= 	*= /= 	%= 			// assignment
			<<= 	>>= 	>>>= 
			&= 	^= |= 						
	16. 	, 									// sequential evaluation





ARRAY:
------------------------
	Array objects are unbounded collections of elements, even of different types, indexed by an integer index. When creating an array no size nor type are necessary.

	methods:
	----------
		. concat(<arrays>): 		// concatenates one array with one or more other arrays.
		
		. join(): 					// returns a string with the elements of the array separated by the comma default separator
		
		. pop():  					// returns and removes the last element of the array
		
		. reverse():					// reverses the elements of the array
		
		. push(<values>): 			// appends new element(s) after the last element and returns the new size of the array
		
		. shift(): 					// returns and removes element 0, and shifts the other elements back by one position
		
		. unshift(<values>):		// appends element(s) at the head of the array
		
		. slice(<start>,<end>): 	// creates a new array containing the elements from element <start> up to but not including element <end>
		
		. splice(<start>, <len>, <val0>,…,<valn>):  			// The <len> elements starting at index <start> are replaced by the next arguments <val0>,…,<valn>. If there are no enough arguments, the remaining elements are eliminated (become undefined)

		. sort(): 					// Sorts the array (as an optional argument it is possible to pass the comparator function to be used for sorting)

	[js]
		// if elements are not definded, they will remain "undefined"
		var arr1 = new Array();						// new empty array
		var arr2 = Array(100); 						// new 100-length array
		var arr3 = [/*<value1>, <value2>, ...*/]; 	// direct value declaration
		
		lenght = arr1.length;				// lenght of array, if it is "x", the array starts from 0 to x-1


		// one dimension array
		var a = [‘x’,’xyz’,’awl’];

		// multi dimensions array
		b = [
				[‘x’,’y’,’z’],
				[‘a’,’b’,’c’],
				[‘d’,’e’,’f’]
			];

		fst = [‘x’,’y’,’z’];
		snd = [‘a’,’b’,’c’];
		trd = [‘d’,’e’,’f’];
		arr = [fst, snd, trd];		// = array b

		// concat
		num1=[1,2,3]; num2=[4,5,6];	num3=[7,8,9];
		nums=num1.concat(num2,num3);				// nums is [1,2,3,4,5,6,7,8,9]

		// join
		nums.join();					 // returns the string “1,2,3,4,5,6,7,8,9”

		// unshift
		nums.unshift(10,11,12);		// result is [10,11,12,1,2,3,4,5,6,7,8,9]
	[end]





	Associative Array (List = Dictionary):
	--------------------------------------------
		Associative arrays have elements referenced by name rather than by numeric offset

		{ <key1> : <el1> , … , <keyN> : <elN> }

		[js]
			dictionary = { 	"Javad" : 1234,
							"Alex": 5678};

			for (/* var */ name in dictionary){
					document.write(name + " : " + dictionary[name] + "<br>");
			}
		[end]





String:
-----------------------------
	"String Objects" are string containers with string methods.
	. Constant strings are automatically converted to string objects when necessary. Differences between string constants and objects:

		[js]
			s1 = "2 + 2";
			s2 = new String("2 + 2"); 				// creates String object
			eval(s1); 								// returns 4
			eval(s2); 								// returns "2 + 2" (a string)

			lenght = s2.lenght;						// give the lenght of s2 = 5
		[end]







Math:
-------------------
	Container for mathematical functions and constants
		. Properties: mathematical constants
		. Methods: mathematical functions
		
		Differently from other core objects, Math cannot be used as a constructor




Boolean:
--------------------
	The constructor can be used to create boolean objects  from other objects
		
		# var bool = new Boolean(val);
			. If val = false, 0, null, ""
				--> then bool = "false"
				--> else  bool = "true"





Regular Expressions:
-------------------------------
	https://regexper.com
-------------------------------
	A RegExp object represents a regular expression that are typically used for string matching
		--> /<reg_expr>/

	. can be used in methods "match", "search", "replace" and "split" of String

	.char 		// any single char
	^char		// in the beginning
	$char 		// end of the string
	char* 		// char 0 or more times
	char+ 		// char 1 or more times
	char? 		// char 0 or 1 time
	[chars] 		// 1 char of those in brackets
	[^chars] 	// 1 char of those not in brackets
	left|right 	// either left or right
	l-r 			// range of chars from l to r
	"xyz"		// excatly as written inside "xyz", it is case-sensitive
	{n} 		// excatly n occurrance
	{n,}
	\string 		// any special string
	\d 			// single digit
	\n 			// newline
	\s 			// whitespace character
	\S 			// non-whitespace character
	\t 			// tab character
	\w 			// word character [a-zA-Z0-9_]
	\W 			// non-word character

	. modifiers:
		/.../g		// search for all occurrance, if not used, only the first match will be returned
		/.../i 		// do case-sensitive matching
		/.../m 		// multi line matching



	[js]
		re = /(\w+)\s(\w+)/;
		str = "First Second";
		str.replace(re, "$2, $1");			// ”Second First”

		// in "str" there is only one "S"
		str.replace(/S+/g, "J"); 			// "Jecond First"

		str = "abcccdxxxdxxjxxdxx";
		str.match(/x+/g);					// ["xxx", "xx", "xx", "xx"]
		str.split(/x+/g); 					// ["abcccd", "d", "j", "d", ""]
		str.search(/x+/); 					// gives ONLY the location of first item = 6
	[end]









Date:
--------------------------
	. Constructors:
		Date();
		Date(milliseconds); 
		Date(string);
		Date(Y,M,D,H,M,s,ms);
				//M from 1 to 12
				//D from 1 to 31
				//H from 0 to 23
				//M from 0 to 59
				//s from 0 to 59
				//ms from 0 to 999

	. Methods:
		getDate()				setDate()
		getYear()				setYear()
		getFullYear()			setFullYear() (4 digits)
		getHours()				setHours()
		getMilliseconds()		setMilliseconds()
		getMinutes()			setMinutes()
		getMonth()				setMonth()
		getSeconds()			setSeconds()





OBJECT:
-----------------------
	. A property that is a function is called a method

	# objectName.properyName();

	. The global object can be referenced by "this"
		- Note that inside a function "this" has a different meaning!


	Call Object:
	---------------
		The local variables of a function are properties of a special object called "call object"
			. A call object is created when a function execution starts
			. A call object exists only for the duration of the corresponding function execution




JavaScript Objects:
-----------------------
	Objects exist independently of classes
		. Each object has its own properties and methods
		. Each new object has a fresh copy of properties and methods
	
	Classes of objects sharing some properties can be created using
		. constructor functions
		. the object prototype (a special built-in property available in every object)



		[js]
			// create a new object
			var 3D_point = {x:2, y:8.32, z:-2.45}; 		// All properties (x, y, z) are public
			
			// use it
			i = 3D_point.x;
			j = 3D_point.y;
			k = 3D_point.z;

			// add a property
			3D_point.t=30.4 				// new property t added

			// delete a property
			delete 3D_point.x 				// the other properties remain unaffected

			// adding method
			// "this" Gives access to the properties of the object on which the function is called
			// The new method can be invoked only on the object it has been added to
			3D_point.dist=function(){
								Math.sqrt(	this.x*this.x
											+this.y*this.y
											+this.z* this.z)
							};
		[end]




	Object Creation Using Constructors
	--------------------------------------------
		. A constructor is a way to specify properties once for all objects of a particular type
		. A constructor can be invoked by the new operator and creates a new object with the properties specified by the constructor


		[js]
			function modulus(){
				return Math.sqrt(this.re*this.re+this.im*this.im)
			};

			function phase(){
				return Math.atan(this.im/this.re)
			};

			// constructor
			function complex(x,y) {
				this.re = x;
				this.im = y;
				this.modulus = modulus;

				// or even i can define anonymous functions directly here
				this.phase = function() {
									return Math.atan(this.im/this.re)
								};
			}

			// cerate a new complex object named as "num"
			var num= new complex(-2.1,3.7);
			i = num.modulus();
			j = num.phase();
		[end]




	Empty Object:
	------------------
		Properties can be added to an empty object as already shown

		# var x = new Object();




	Accessibility :: Making Private
	-------------------------------------
		Even if properties are all public, private properties can be simulated by variables declared inside functions. we use "setX" and "getX"  as an agreement for setting and accessing any variables inside a function.

		[js]
			function calc_radius(){
				var radius;
				this.setRadius = function(x){radius = x}; 		// only through this "radius" can be set , from outside of this function
				this.getRadius = function(){return radius}; 	// only through this "radius" can be accessed, from outside of this function
				this.area = function(){return radius*radius*Math.PI };
			}
		[end]




	Accessibility :: Access Properties by Expression
	-----------------------------------------------------------
		The name used to reference a property can be an expression 

		[js]
			var a = {x:-0.33; y:3.14 ;z:6.54};
			i = "z";
			height = a[i]; 				//access to a.z
		[end]



	Prototype:
	--------------------------
		The definition of a constructor is similar to a class definition but all the properties defined in a constructor (including methods) are like instance variables. each object created with new gets a "fresh copy of each method" and of each other property which may waste memory.
		
		"Prototype property" that holds properties that must not be replicated when creating new objects using the function as a constructor
			-- a method defined in the prototype is not replicated


		[js]
			function complex(x,y) {
				this.re = x;
				this.im = y;
			}

			// "name, modulus, phase" are shared by all objects created by this function
			complex.prototype.name = "complex number";
			complex.prototype.modulus = function() {
											return Math.sqrt(
												this.re*this.re+this.im*this.im)};
			complex.prototype.phase = function() {
											return Math.atan(this.im/this.re)};


			//usage
			var num= new complex(-2.1,3.7);
			i=num.modulus();
			j=num.phase();
		[end]



	Inheritance:
	-----------------------

		[js]
			//						employee
			//			---------------------------------------
			//			|								|
			//		manager 						executive
			//									-------------------------
			//									|					|	
			//								seller 				developer

			function employee(){
				this.name = "";
				this.dep = "general";
			}

			
			function manager(){
				this.reports = [];
			}
			manager.prototype = new employee();

			
			function executive(){
				this.projects=[];
			}
			executive.prototype = new employee();


			function seller(){
				this.dep="sales";
				this.quote=234;
			}
			seller.prototype = new executive();


			function developer(){
				this.machines=[];
				this.dep="technical";
			}
			developer.prototype = new executive();

			var x = new employee();			// x.name is ""
												// x.dep is "general"
		
			var y = new manager();			// y.name is ""
												// y.dep is "general"
												// y.reports is []
		
			var z = new executive();			// z.name is ""
												// z.dep is "general"
												// z.projects is []
			var w = new seller();				// w.name is ""
												// w.dep is “sales"
												// w.projects is []
												// w.quote is 234
				
			var m = new developer();			// m.name is ""
												// m.dep is “technical"
												// m.projects is []
												// m.machines is []

		[end]






String Operators:
---------------------
	"x:"+3 			--> 	"x:3"
	1+2+" times" 	--> 	"3 times" 		// if first is numbers, they will be added
	"x: "+1+2		-->		"x: 12" 			// neither commutative, nor associative
	
	name = "Charles"
	name += " Dickens"		--> "Charles Dickens"




Operator:
----------------------------

	typeof:
	--------------------------------------------------
	typeof 17.54 				--> "number"
	typeof ("Hello") 			--> "string"
	typeof true 				--> "boolean"
	typeof null 					--> "object"
	typeof parseInt 			--> "function"

	[js]
		if(typeof(x)=="string")
			document.write("x is a string variable: "+x);
	[end]





	void:
	-----------------------------------
	Prefix operator applied to an expression in order to evaluate the expression without using the result
	. Always returns "undefined" (but any side effect of expression evaluation will be observable)

	[html]
		<script type="text/javascript">
			function void myfun(){
				alert("myfun runs");
			}
		</script>

		<a href="javascript:void(myfun())">click me to run myfun</a>
	[end]




	conditional:
	-------------------------------------------
	If condition is true the result is expr1
	else the result is expr2

	(<condition>)? <expr1_TRUE> : <expr2_FALSE>



	comma:
	----------------------------------------------
	1. The left operand is evaluated first
	2. Then the right operand is evaluated
	3. The result of the expression is the result of the evaluation of the right operand

	i=28,k=“hello",n=3.24;
	// The result is 3.24 (and the assignments are executed as a side effect)



	miscellaneous:
	---------------------------------------------
	new: Makes a new instance of an object

	delete: deletes the property of an object




Explicit Casting (conversion):
------------------------------------
	In JavaScript there is no cast operator but there are conversion functions

	A string can be converted to a number by the functions:
		integer: 	parseInt(str)
		real: 		parseFloat(str)
		. If the string is not a number, the result is "NaN"

	A string can be converted to a boolean by the function:
		Boolean(str)

	Any data can be converted to a string by the function
		String()





CONDITION:
-----------------------------
	if (<predicate>){
		<statement1>;
	} else if {
		<statement2>;
	} else {
		<statement3>;
	}



SWITCH:
-------------------------------
	switch(<expression>){
		case <label1>: 
			<statement_1>;
			break;							// interrupts the innermost loop or switch

		case <label2>: 
			<statement_2>;
			break;

		default: 
			<statement_n>;
	}



ITERATION:
--------------------------------
	// two usages , check the examples
	for(<initialization> ; <condition> ; <update> ){
		<statement>
	}




	for (<variable> in <object>){
		<statement>
	}



	while(<condition>){
		<statement>
	}


	do{
		<statement> 
	} while(<condition>)




	[js]
		// type 1
		for (s=0,x=5,y=1 ; x>0 ; x--,y+=2){
			s+=x*y;
		}

		// type 2, if array[i] goes to (length + 1), it returns "undefined", so the condition is "false" and it breaks.
		for (var i=0, value; value = array[i]; i++){
			document.write(value);
		}



		for (prop in my_object) {
			name= "Property Name: " + prop;
			val = "Value: " + my_object[prop];
			document.write(name+"-"+val+"<br>");
		}


		while (x>1){
			y*=x; x--;
		}

		

		do {
			y*=x; 
			x--;
		} while (x>1);
	[end]






STATEMENTS:
--------------------------------
	break: interrupts the innermost loop or switch

	continue: causes the control flow to proceed to the next iteration
		. A label can be used to identify a particular program point

		[js]
			var i=j=0;
			checkiandj :
				while (i<4) {
					document.write(i + "<BR>");
					i+=1;
					checkj :
					while (j>4) {
						document.write(j + "<BR>");
						j-=1;

						if ((j%2)==0)
							continue checkiandj;

						document.write(j + " is odd.<BR>");
					}
					document.write("i = " + i + "<br>");
					document.write("j = " + j + "<br>");
				}
		[end]



		with: Lets the programmer refer implicitly to a given prefix

		with(<object>)
			<statement>

		[js]
			with(Math){
				x=sin(i*PI/4);
				y=cos(j*PI/4);
			}
		[end]



FUNCTION:
-------------------------
	
	function functionName(<arguments>) {
		//any code
		return param; 		//if needed
	}


	"Function arguments" are always "passed by value" but if an object is passed as argument, the object property values can be modified

	Actual argument lists may have variable length. Arguments passed in excess can be accessed by the built-in array "arguments[i]". The actual number of arguments passed in a call can be accessed by the built-in property "arguments.length"


		[js]
			function myConcat(separator) {
			var result="";
			for(var i=1; i<arguments.length; i++) {
				result+=arguments[i]+separator;
			}
			return result;
			}


			myConcat(", ",1,2.32,"3",4)			// Output: 1, 2.32, 3, 4,
		[end]




	Nested Function:
	---------------------

		[js]
			function addSquares (a,b) {
				function square(x) {
				return x*x;
				}
			return square(a) + square(b);
			}
			
			a=addSquares(2,3); 		// a is 13
			b=addSquares(3,4); 		// b is 25
			c=addSquares(4,5); 		// c is 41
		[end]




		Variable Scope:
		--------------------
			A function definition opens a new scope with accessibility to 
				. Variables declared within a JavaScript function, become LOCAL to the function.
				. whatever is accessible in the outer scope 
				. variables, arguments and functions defined in the function block (these are visible only in the new scope and its sub-scopes, except variables used without the var keyword, which are global)


			[js]
				var x = 10;
				function testScope(y) { return y + x; }

				alert(testScope(7)); 						// displays 17
				
				function testEnv() {
					var x = -1;
					return testScope(7); 					// displays 17, "testScope" uses the first "x"
				}
			[end]




		Functions as Objects:
		--------------------------
			! it has different way !
			They can be passed as arguments, returned as return values and assigned to variables

			[js]
				function external(x) {
					function internal(y) {
						return x-y;
					}

					return internal; 	// Returns function internal with x set as a constant
				}

				result = external(3)(5) // result is -2
			[end]




		Function Expressions:
		-----------------------------
			= Literal Functions
			= Single_Use Functions

			. Scope is limited to the place where the function is defined
			. Name can be omitted

			[js]
				var f = function(x){return x*x};					// Stored in variable
				var i = 3.24;
				i=f(i);
				obj.prop(function(x){return x*x}); 				// passed as an argument
				var hundred = (function(x){return x*x})(10);	// Directly called
			[end]




		Constructor:
		----------------
			Can be used to define a function “on the fly” (i.e at runtime)

			new Function( <argument list> ,	<function body> );
							//List of Strings 	// String
			
			[js]
				var square = new Function("x", "return x*x");
				var i=3.22;
				i=square(i);
			[end]



		Arguments:
		---------------------
			"arguments.caller" 				name of calling function
			"arguments.callee" 				name of called function
			"arguments.callee.length" 			number of arguments (in the definition)

			The use of arguments as a property of Function is deprecated, only the variable arguments should be used

			[js]
				function check( param ) {
					var actual = arguments.length;
					var expected = arguments.callee.length;
					if (actual != expected)
						return false;
					else
						return true;
				}
			[end]



		Global Functions:
		--------------------------
			escape(str)					// Encodes str using hexadecimal escape sequences for non-ASCII characters so that it can be ported on any platform

			unescape(str)				// The inverse of escape(str)

			isFinite(val)				// Returns true if val is (a number) different from NaN, Number.POSITIVE_INFINITY, Number.NEGATIVE_INFINITY

			isNaN(val)					// Returns true if val is not a number ( NaN ).

			eval(str) 					// Interprets str as a string containing JavaScript code and executes this code.



Error Handling:
-----------------------------
	
	Try...Catch Statement:
	---------------------------
		How to Inspect the Error Object:
			If error is the variable bound to an Error object:
				# error.name 		--> error class
				# error.message 	--> error description


		Standard Error Classes
			. EvalError:					error in executing eval()
			. RangeError:				a numeric value exceeded its allowable range
			. ReferenceError: 			an invalid reference value (e.g. undefined variable or function) has been detected
			. SyntaxError: 
			. TypeError: 				the type of an operand is different than the expected type
			. URIError: 					error when using a URI


		[js]
			x = 0;

			try{
				x = A_VALUE;
			} catch (error){
				document.write("Error happened..."+
									"<br>Error type: "+error.name+
									"<br>Error message: "+ error.message);
			}
		[end]



	Throw:
	-------------
		Errors can be generated by the application using the  "throw" <statement>









The Client Environment (I/O):
--------------------------------------

	Environment Objects: 						interface for reading browser information and for controlling the browser (e.g. window)

	Document Object Model (DOM): 			API for manipulating (read/write) the HTML document that is being displayed in a browser window

	Event Programming: 						mechanisms for programming reaction to events (e.g. mouse click, mouse double click, mouse pointer entering a certain area, …)



	window:
	-----------
		. Any variable defined in the script also becomes a property of "window"
		. When referencing the "window" object, the name "window" can be omitted (is implied)
		. Each <FRAME> in the document generates a new "window" object
		. Initially the referenced "window" object is the one associated with the <FRAME> where the script is located
		. There are methods for changing the "window" object being referenced
		. The <FRAMESET> that includes the current frame is referenced by the parent property

		Main properties of "window":
			. name 					// the name of this window (assigned by open())
			. self, parent, top	
			. frames[ ] 					// all the frames in the window
			. location 					// the current URL
			. history 					// the history of visited pages
			. document 				// the document displayed in the window
			. status 					// the text in the status bar of the browser
			. opener 					// the name of the window that opened this window

		Main methods of "window":
			. alert(), prompt(), confirm()
			. open() 					// open new window (or tab)
			. close() 					// close this window
			. moveBy(dx,dy) 			// move this window
			. moveTo(x,y) 				// move this window
			. resizeBy(dx,dy) 			// resize this window
			. resizeTo(x,y) 				// resize this window
			. focus() 					// give focus to this window
			. blur() 						// take focus out of this window
			. print() 					// open the printer window


		[js]
			// window.open ( <URL>,<windowName>,<windowFeatures>);
			window.open("http://www.polito.it","mywindow","status=1,toolbar=1");

			window.open("http://www.javascriptcoder.com", "mywindow","menubar=1,resizable=1,width=350, height=250");
			mywindow.moveTo(0,0); 				// move new win to top left
		[end]

		! some important examples in pages 137-9!




	navigator:
	-------------
		. Gives access to browser features
		
		Main properties of "navigator":
			appCodeName 		// Browser code name
			appName 			// Browser application name
			appVersion 		// Browser application version
			cookieEnabled 		// "true" if cookies are enabled
			platform 			// The platform where the browser runs
			userAgent 			// The user agent string the browser sends in the HTTP header
			javaEnabled() 		// "true" if java is enabled




	screen:
	---------
		Gives access to the features of the screen
		
		Main properties of "screen":
			availHeight 		// height in pixels (excluding application bar)
			height total 		// height
			availWidth 			// width in pixels (excluding application bar)
			width total 			// width
			colorDepth 			// color depth in bits per pixel




	location:
	-----------
		. Indicates the URL displayed in a window or frame (in this case the URL attribute is generally preferred)

		. The various parts of the URL (hostname, port, protocol,…) can be accessed separately as sub-properties
		. The access is in read/write mode
		
		. Writing a new value starts loading the new URL
		
		Main properties:
			href 			// complete URL
			host 			// hostname and port number
			protocol://hostname:port/pathname?search#hash

				--> http://www.abc.com:555/catalog/search.php?query=JS&match=2#result
					protocol = "http: "
					hostname = "www.abc.com"
					port = "555"
					host = "www.abc.com:555"
					pathname = "/catalog/search.php"
					search = "?query=JS&match=2"
					hash = "#result"



	DOM:
	--------
	Standard cross-platform language-independent API for accessing the elements (and attributes) of a document (HTML, XML,…)



		The HTML-specific Document ( "document" Object ):
		------------------------------------------------------------------
			Main properties of "document":
				title 				// the title of the document
				forms[ ] 			// the form elements in the document
				anchors[ ] 			// the <a> elements in the document
				links[ ] 				// the <link> elements in the document
				images[ ] 			// the image elements in the document
				body 				// the document body element	


			Main methods:
				write() 			// writes to the current document position (where rendering has arrived)
				writeln() 		// like write but adds a newline at the end	



			! Access to elements can be simplified by giving id or name attributes to the elements !

			[html]
				<html>
				<head>
				<script type="text/javascript">
					i=1;
					function change (){
						if (i==0) {
							document.images["banner"].src="questions.jpg"; 
							i=1
						} else {
							document.images["banner"].src="caravaggio.jpg";
							 i=0
						}
					}
				</script>
				</head>
				<body>
					<img src="questions.jpg" name="banner" height=200 width=200>
					<input type="button" value="Change Pic" onclick="change()">


					<!-- edit form -->
					<script type="text/javascript">
						document.forms["myform"].elements["text"].value = "new text";
						document.getelementbyid("text“).value = “new text";
					</script>

					<form name="myform">
						<input type="text" name="text">
						<input type="text" id="text">
					</form>
				</body>
			[end]






		Event Handler:
		-------------------
			. Abort				. MouseDown
			. Blur				. MouseMove
			. Change			. MouseOut
			. Click				. MouseOver
			. DblClick			. MouseUp
			. Error				. Move
			. Focus				. Reset
			. KeyDown			. Resize
			. KeyPress			. Select
			. KeyUp			. Submit
			. Load				. Unload


			[js]
				function hello() { alert("you entered the image"); }
				function bye() { alert("you left the image"); }

				// inside HTML
				<img src="questions.jpg" border="0" 
						onmouseover="hello()" 
						onmouseout="bye()">
			[end]




		Error Handler:
		------------------
			! Not supported by all browsers
			The event handler "window.onerror" is an alternative to try-catch for error handling
			
			The handler function receives 3 parameters from the browser
				. Error type (string)
				. The document where the error occurred (url)
				. The line number where the error occurred

			[js]
				window.onerror = handleError;
				function handleError(error, url, line) {
					var msg = ""
					msg = "Error type: " + error + "\n";
					msg = msg + "Document: " + url + "\n";
					msg = msg + "Line: " + line;
					alert(msg);
				}
			[end]



	




















Sample Codes:

```javascript
	// get item value, like text box`s
	var value = document.getElementById('textbox_id').value;

	// set item value, like text box`s
	document.getElementById('gadget_url').value = '';


	//get date -  Sunday is 0, Monday is 1, and so on... ( 0 - 6)
	var givendate = '2014-05-20';
	var date = new Date(givendate);
	console.log(date.getDay());
```