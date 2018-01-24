(* Invisible commande line launcher for python tools 
Florent DUFOUR 2017
*)


activate
set message to "Ready to python ?"
set tempVar to display dialog message buttons {"Pyzo", "Jupyter Notebook", "Exit"} default button 2

set choice to button returned of tempVar

if choice is "Pyzo" then
	do shell script "/usr/local/bin/pyzo && exit"
	
else if choice is "Jupyter Notebook" then
	do shell script "cd && /usr/local/bin/jupyter notebook && exit"
	
else
	quit
	
end if
