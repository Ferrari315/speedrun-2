VAR n=1
VAR text = ""

->main

=== main ===

Tu de-colo! Stai puțin. Tu știi ceva chimie?
    *[Nu tare mult]
        ~n=0
        ->dialogue    
    *[Evident că nu]
        ~n=1
        ->dialogue
    *[Da]
        ~n=2
        ->dialogue


=== dialogue ===
{n:
-0: ~text= "Nu trebuie să știi foarte mult."
-1: ~text="...ești nașpa...dar nu cred că ești așa de prost."
-2: ~text="Super!"
}
{text} Regele are nevoie de tine la o temă la chimie, ceva cu zaharide.
Va trebui să mergi tot în față, spre pădure. După ce vei ieși dintr-un tunel regele te va aștepta acolo. Succes.
...să știi că mai sunt ceva foi cu teorie pe drum...
->END

