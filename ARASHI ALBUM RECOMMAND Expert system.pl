year("2000"). year("2001"). year("2002"). year("2003"). year("2004"). 
year("2005"). year("2006"). year("2007"). year("2008"). year("2009"). 
year("2010"). year("2011"). year("2012"). year("2013"). year("2014"). 
year("2015"). year("2016"). year("2017"). year("2018"). year("2019").
year("2020").

feeling("Future"). feeling("Machine"). feeling("Robot"). feeling("Star").
feeling("Fallen_leaves"). feeling("Love"). feeling("Spring"). feeling("Farewall").
feeling("Popcorn"). feeling("Happiness"). feeling("Rhythmical"). feeling("Energy").
feeling("Band"). feeling("Drum"). feeling("Strong"). feeling("Fighting").
feeling("Rap"). feeling("Street"). feeling("Fast"). feeling("Response").

seller("best").
seller("minor").

type("compliation").
type("original").

release(Input, "early_2000s") :- ((Input = "2000"; Input = "2001"; Input = "2002"; Input = "2003"; Input = "2004"), year(Input)). % 규칙 5
release(Input, "late_2000s") :- ((Input = "2005"; Input = "2006"; Input = "2007"; Input = "2008"; Input = "2009"), year(Input)). % 규칙 4
release(Input, "early_2010s") :- ((Input = "2010"; Input = "2011"; Input = "2012"; Input = "2013"; Input = "2014"), year(Input)). % 규칙 3
release(Input, "late_2010s") :- ((Input = "2015"; Input = "2016"; Input = "2017"; Input = "2018"; Input = "2019"),year(Input)). % 규칙 2
release(Input, "early_2020s") :- ((Input = "2020"),year(Input)). % 규칙 1

genre(Input, "electornic") :- ((Input="Future"; Input="Machine"; Input="Robot"; Input="Star"),feeling(Input)). % 규칙 6
genre(Input, "ballad") :- ((Input="Fallen_leaves"; Input="Love"; Input="Spring"; Input="Farewall"),feeling(Input)). % 규칙 7
genre(Input, "funk") :- ((Input="Popcorn"; Input="Happiness"; Input="Rhythmical"; Input="Energy"),feeling(Input)). % 규칙 8
genre(Input, "rock") :- ((Input="Band"; Input="Drum"; Input="Strong"; Input="Fighting"),feeling(Input)). % 규칙 9
genre(Input, "hiphop") :- ((Input="Rap"; Input="Street"; Input="Fast"; Input="Response"),feeling(Input)). % 규칙 10

% 규칙 11
album(RELEASE,GENRE,SELLER,TYPE,"1st album ARASHI NO.1 ~嵐は嵐を呼ぶ~") :- 
   (release(_,RELEASE),RELEASE = "early_2000s",genre(_, GENRE),GENRE = "funk",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
% 규칙 12
album(RELEASE,GENRE,SELLER,TYPE,"2nd album HERE WE GO") :- 
   (release(_,RELEASE),RELEASE = "early_2000s",genre(_, GENRE),GENRE = "rap",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
% 규칙 13
album(RELEASE,GENRE,SELLER,TYPE,"3rd album How's it Going?") :- 
   (release(_,RELEASE),RELEASE = "early_2000s",genre(_, GENRE),GENRE = "ballad",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
% 규칙 14
album(RELEASE,GENRE,SELLER,TYPE,"4th album いざッ、NOW") :- 
   (release(_,RELEASE),RELEASE = "early_2000s",genre(_, GENRE),GENRE = "rock",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
% 규칙 15
album(RELEASE,GENRE,SELLER,TYPE,"ARASHI SINGLE COLLECTION 1999-2001") :- 
   (release(_,RELEASE),RELEASE = "early_2000s",genre(_, GENRE),seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "compliation").

% 규칙 16
album(RELEASE,GENRE,SELLER,TYPE,"5th album ONE") :- 
   (release(_,RELEASE),RELEASE = "late_2000s",genre(_, GENRE),GENRE = "funk",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
% 규칙 17
album(RELEASE,GENRE,SELLER,TYPE,"6th album ARASHIC") :- 
   (release(_,RELEASE),RELEASE = "late_2000s",genre(_, GENRE),GENRE = "ballad",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
% 규칙 18
album(RELEASE,GENRE,SELLER,TYPE,"7th album TIME") :- 
   (release(_,RELEASE),RELEASE = "late_2000s",genre(_, GENRE),GENRE = "funk",seller(SELLER), SELLER = "best", type(TYPE),TYPE = "original").
% 규칙 19
album(RELEASE,GENRE,SELLER,TYPE,"8th album Dream 'A' Live") :- 
   (release(_,RELEASE),RELEASE = "late_2000s",genre(_, GENRE),GENRE = "rock",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
% 규칙 20
album(RELEASE,GENRE,SELLER,TYPE,"ARASHI 5x10 All the BEST! 1999-2009") :- 
   (release(_,RELEASE),RELEASE = "late_2000s",genre(_, GENRE),seller(SELLER), SELLER = "best", type(TYPE),TYPE = "compliation").

% 규칙 21
album(RELEASE,GENRE,SELLER,TYPE,"9th album 僕の見ている風景"):- 
   (release(_,RELEASE),RELEASE = "early_2010s",genre(_, GENRE),GENRE = "ballad",seller(SELLER), SELLER = "best", type(TYPE),TYPE = "original").
% 규칙 22
album(RELEASE,GENRE,SELLER,TYPE,"10rd album Beautiful World") :- 
   (release(_,RELEASE),RELEASE = "early_2010s",genre(_, GENRE),GENRE = "electronic",seller(SELLER), SELLER = "best", type(TYPE),TYPE = "original").
% 규칙 23
album(RELEASE,GENRE,SELLER,TYPE,"11st album Popcorn") :- 
   (release(_,RELEASE),RELEASE = "early_2010s",genre(_, GENRE),GENRE = "funk",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
% 규칙 24
album(RELEASE,GENRE,SELLER,TYPE,"12nd album LOVE") :- 
   (release(_,RELEASE),RELEASE = "early_2010s",genre(_, GENRE),GENRE = "funk",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
% 규칙 25
album(RELEASE,GENRE,SELLER,TYPE,"13rd album THE DIGITALIAN") :- 
   (release(_,RELEASE),RELEASE = "early_2010s",genre(_, GENRE),GENRE = "electronic",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
      
% 규칙 26
album(RELEASE,GENRE,SELLER,TYPE,"14th album Japonism") :- 
  (release(_,RELEASE),RELEASE = "late_2010s",genre(_, GENRE),GENRE = "ballad",seller(SELLER), SELLER = "best", type(TYPE),TYPE = "original").
% 규칙 27
album(RELEASE,GENRE,SELLER,TYPE,"15th album Are You Happy?") :- 
   (release(_,RELEASE),RELEASE = "late_2010s",genre(_, GENRE),GENRE = "funk",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").
% 규칙 28
album(RELEASE,GENRE,SELLER,TYPE,"16th album 「untitled」") :- 
   (release(_,RELEASE),RELEASE = "late_2010s",genre(_, GENRE),GENRE = "funk",seller(SELLER), SELLER = "best", type(TYPE),TYPE = "original").
% 규칙 29
album(RELEASE,GENRE,SELLER,TYPE,"ARASHI 5x20 All the BEST! 1999-2019") :- 
   (release(_,RELEASE),RELEASE = "late_2010s",genre(_, GENRE),seller(SELLER), SELLER = "best", type(TYPE),TYPE = "compliation").
      
% 규칙 30
album(RELEASE,GENRE,SELLER,TYPE,"17th album THIS IS 嵐") :- 
   (release(_,RELEASE),RELEASE = "early_2020s",genre(_, GENRE),GENRE = "funk",seller(SELLER), SELLER = "minor", type(TYPE),TYPE = "original").      
      
    
    
start_recommandation:-
    write("░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"),nl,
	write("Hello. This is ARASHI's Album Recommandation System!"),nl,nl,
    write("
⎛⎝(•‿•)⎠⎞⎛⎝(•‿•)⎠⎞⎛⎝(•‿•)⎠⎞⎛⎝(•‿•)⎠⎞⎛⎝(•‿•)⎠⎞"),nl,
    write("░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"),nl,nl,
    write("What year's song do you want to listen to?「From 2000 to 2020」"),nl,
    read(Input1),nl,
    release(Input1, Output1),nl,    
    write("How is your feeling now? Choose One"),nl,
    write("1. Future, Machine, Robot, Star"),nl,
    write("2. Fallen_leaves, Love, Spring, Farewall"),nl,
    write("3. Popcorn, Happiness, Rhythmical, Energy"),nl,
    write("4. Band, Drum, Strong, Fighting"),nl,
    write("5. Rap, Street, Fast, Response"),nl,nl,   
    write("Please Answer with quotation marks!"),nl,
    read(Input2),nl,
    genre(Input2, Output2),nl,
    write(Output2),nl,nl,
	write("Do you want to listen best of ARASHI's Album or minor of ARASHI's Album?"),nl,
    read(Input3),nl,
    seller(Input3),nl,
    write("Choose the Original Album or Compliation Album"),nl,
    read(Input4),nl,
    type(Input4),nl,
    album(Output1,Output2,Input3, Input4,Output5),nl,
    write(Output5),nl,
	write("finish!"),nl,nl,
	write("순방향 추론"),nl,
    write("[Rule]: You choose " + Input1 + " year, so we regard you at " + Output1+ " period"),nl,
    write("[Rule]: Your feeling is " + Input2 + " now, so we recommand you " + Output2+ " genre"),nl,
    write("[Rule]: You choose " + Output1 + Output2 + Input3 + Input4 + " so recommand is " + Output5),nl,nl.

