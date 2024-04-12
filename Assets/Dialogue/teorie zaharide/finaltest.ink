VAR n=0

->main

=== main ===
Deci tu ești regele?
Da da.
Cu ce trebuia să te ajut?
Cu NIMIC! Vezi tu, în regatul meu toată lumea trebuie să știe chimie. De aceea, am vrut să fiu sigur că și tu poți face parte din acest regat. Ok?
...
Hai să începem cu ceva mai ușor.

Întrebarea 1
Monozaharidele ... la reacția de hidroliză.
*[nu participă]
    ~n=n+1
    ->int2
*[participă]
    ~n=n
    ->int2


===int2===
Întrebarea 2: 
Glucoza este o ... 
*[aldoză]
    ~n=n+1
    ->int3
*[cetoză]
    ~n=n
    ->int2

    
=== int3 ===
Întrebarea 3
Sângele reprezintă aproximativ 8% din masa unui om sănătos. Câte grame de glucoză. Câte grame de glucoză circulă prin corpul unui adult de 80 kg, știind că sângele lui conține 0,08% glucoză?
*[64/125]
    ~n=n+1
    ->int4
*[0,512]
    ~n=n+1
    ->int4
    
===int4===
Întrebarea 4:
Glucoza se poate obține din amidon. În prezența unor enzime din drojdia de bere glucoza fermentează.
Calculează masa de soluție de etanol și de dioxid de carbon din glucoză în prezență de enzime.
*[1840g]
    ~n=n+1
    ->int5
*[720g]
    ~n=n
    ->int5
*[1980g]
    ~n=n
    ->int5
*[1120g]
    ~n=n
    ->int5
    
===int5===
O soluție apoasă de glucoză și fructoză cu masa de 2970g consumă pentru hidrogenarea totală 134,4L(c.n.) de hidrogen.
O altă probă din aceeași soluție cu masa de 297g reacționează stoechimetric cu 1kg de apă de brom de concentrație 8%.
O a treia probă identică cu prima este supusă fermentației alcoolice, când se captează 78,82 L de CO2 măsurați la 27C și la 3 atm.
Determină compoziția soluției inițiale exprimată în fracții molare ȘI determină randamentul fermentației alcoolice.
*[X glucoză = 5/111, X fructoză = 1/111, X apă = 105/111 ; 80%]
    ~n=n+1
    ->ending
*[X glucoză = 7/111, X fructoză = 4/111, X apă = 100/111 ; 75%]
    ~n=n
    ->ending
*[X glucoză = 8/107, X fructoză = 4/107, X apă = 95/107 ; 85%]
    ~n=n
    ->ending
*[X glucoză = 10/111, X fructoză = 2/111, X apă = 99/111 ; 80%]
    ~n=n
    ->ending
    
===ending===
Ai făcut {n} puncte. 
->END
























->END