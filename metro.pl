%% Assignment 1: Delhi Metro
%% Due on: 30 Sep 2013 (Monday) before midnight.

%% Please fill the following details
%% Full Name:
%% Roll No:

%% Given below is the metro lines of New Delhi. Write a function
%% that given any two metro station prints out the route to take

%% For example typing
%%     > findRoute(dwarka,new-delhi).
%% should print
%%     > From dwarka take blue line to rajiv-chowk
%%     > From rajiv-chowk take yellow line to new-delhi

%% Concepts not done in class: Formated print, List functions.
%%

%% Remark: You code *should work* work even if the lines are changed.
%% In particular you should not assume anything about the names of the
%% station, or their ordering or the topology of the network. In other
%% words think of this red, blue and green line as a sample input to your
%% program.



line(red,
	[ rithala,
          rohini-east,
          rohini-west,
          pitam-pura,
          kohat-enclave,
          netaji-subash-place,
          keshav-puram,
          kanhaiya-nagar,
          indralok,
          shastri-nagar,
          pratap-nagar,
          pul-bangesh,
          tiz-hazari,
          kashmiri-gate,
          shastri-park,
          seelam-pur,
          welcome,
          shahdara,
          mansarovar-park,
          jhilmil,
          dilshad-garden
        ]
    ).
line(yellow,[ vishwa-vidayala
            , vidhan-sabha
            , civil-lines
            , kashmiri-gate
            , chandini-chowk
            , chawari-bazar
            , new-delhi
            , rajiv-chowk
            , patel-chowk
            , central-secretariat
            ]
    ).

line(blue,[ indraprastha
          , pragati-maidan
          , mandi-house
          , barakhamba-road
          , rajiv-chowk
          , ramakrishna-ashram-marg
          , jhandewala
          , karol-bagh
          , rajendra-place
          , patel-nagar
          , shadipur
          , kirti-nagar
          , moti-nagar
          , ramesh-nagar
          , rajouri-garden
          , tagore-garden
          , subhash-nagar
          , tilak-nagar
          , janakpuri-east
          , janakpuri-west
          , uttam-nagar-east
          , uttam-nagar-west
          , nawada
          , dwarka-mor
          , dwarka
          , sector-14-dwarka
          , sector-13-dwarka
          , sector-12-dwarka
          , sector-11-dwarka
          , sector-10-dwarka
          , sector-9-dwarka
          ]).

%A Route using a single line
%Finding the route from X to Y is the same as finding a route from X to Y
%using any line
findRoute(X,Y):-findRoute(X,Y,[]).

%Finding a route from X to Y not using the lines in L
findRoute(X,Y,Lines):-line(Line,Stations),\+ member(Line,Lines),member(X,Stations),member(Y,Stations),display('from '),display(X),display(' take '),display(Line),display(' to '),display(Y).

%An indirect route from X to Y
findRoute(X,Y,Lines):-line(Line,Stations),\+ member(Line,Lines),member(X,Stations),member(Intermediate,Stations),findRoute(Intermediate,Y,[Line|Lines]),display('from '),display(X),display(' take '),display(Line),display(' to '),display(Y).


