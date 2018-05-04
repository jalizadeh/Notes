// html comment remover and tags counter
// jflex lab2_2.jflex & javac lab2_2.java & java lab2_2 input.html

%%
%standalone
%class lab2_2
%caseless
%{
	public int total_tags = 0;
	public int total_table_tags = 0;
	public int total_h1 = 0;
	public int total_h2 = 0;
	public int total_h3 = 0;
	public int total_h4 = 0;
%}

%state insideH1

nl 		= \n\r|\r|n\
letter 	= [A-Za-z]
digit 	= [0-9]

			//use this in allregex.com (\<\w+\>)|(\<\/\w+\>)|(\<\w+ (\w+[\w.\/\d\=\" ]*)*\>)
all_tags = (\<{letter}+\s*({letter}+[A-Za-z\.\/0-9\=\"\s]*)*\>)|(\<{letter}+{digit}*\>)|(\<\/{letter}+{digit}*\>)

h1START		= "<h1>"
h1END 		= "</h1>"

h2START		= "<h2>"
h2END 		= "</h2>"

h3START		= "<h3>"
h3END 		= "</h3>"

h4START		= "<h4>"
h4END 		= "</h4>"

tableSTART	= ("<table"\s*({letter}+[A-Za-z.\/0-9\=\"\s]*)*">")
tableEND		= "</table>"

comment 		= "<!--".*({nl}*)?.*"-->"


%%

{comment}		{;}

{h1START}		{++total_h1;}
{h1END}			{++total_h1;}

{h2START}		{++total_h2;}
{h2END}			{++total_h2;}

{h3START}		{++total_h3;}
{h3END}			{++total_h3;}

{h4START}		{++total_h4;}
{h4END}			{++total_h4;}

{tableSTART}		{++total_table_tags;}
{tableEND}		{++total_table_tags;}

{all_tags}			{++total_tags;}

.					{;}

<<EOF>>			{
						System.out.println("\n-> Total Tags:\t"+
								(total_h1+total_h2+total_h3+total_h4+total_table_tags+total_tags));
						System.out.println("-> Total Table Tags:\t"+total_table_tags);
						System.out.println("-> Total H1:\t"+total_h1);
						System.out.println("-> Total H2:\t"+total_h2);
						System.out.println("-> Total H3:\t"+total_h3);
						System.out.println("-> Total H4:\t"+total_h4);
						System.out.println("-> Other Tags:\t"+total_tags);
						return YYEOF;
					}