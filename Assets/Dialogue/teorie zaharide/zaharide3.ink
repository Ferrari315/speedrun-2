VAR n=0
VAR text=""
->main

=== main ===
ceva teorie la zaharide
test
trebuie sa raspunzi la 2 intrebari de fixare a cunostintei
intrebarea 1
    *var1
        ~n=1
        ->intrebarea2
    *var2
        ~n=0  
        ->intrebarea2

=== intrebarea2 ===
intrebarea 2
    *var1
        ~n=n+1
        ->final
    *var2
        ~n=0
        ->final

=== final ===
{n:
-0:~text="esti prost"
-1:~text="poti mai bine"
-2:~text="perfect"
}
{text}
-> END







