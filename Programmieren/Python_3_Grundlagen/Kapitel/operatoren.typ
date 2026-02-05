#import "@preview/colorful-boxes:1.4.3": colorbox, stickybox
#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo

= Operatoren

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    Die Operatoren bestimmen, was man mit den Variablen machen kann. Sie verknüpfen Variablen oder Werte und liefern ein Resultat. Es gibt sehr viele Operatoren. Einige davon schauen wir uns an.
  ],
  [
    #codly(header: [*Berechnungen mit Operatoren*])
    ```py
    celcius = 15
    fahrenheit = celcius * 9 / 5 + 32
    ```
  ],
)

== Arithmetische Operatoren

- Durch normales Rechnen werden zwei Zahlen zu einer neuen Zahl verknüpft.

#align(center)[#text(size: 8pt)[
  #table(
    columns: (auto, auto, auto, auto),
    stroke: none,
    align: (center + horizon, left + horizon, center + horizon, center + horizon),
    table.hline(),
    table.header([*Operator*], [*Bedeutung*], [*Beispiel*], [*Ergebnis*]),
    table.hline(),
    [```py +```], [Addition], [```py 3 + 2```], [```py 5```],
    [```py -```], [Subtraktion], [```py 7 - 4```], [```py 3```],
    [```py *```], [Multiplikation], [```py 6 * 2```], [```py 12```],
    [```py /```], [Division (immer als Kommazahl)], [```py 7 / 2```], [```py 3.5```],
    [```py //```], [Ganzzahl-Division (Abrunden)], [```py 7 // 2```], [```py 3```],
    [```py %```], [Modulo (Rest)], [```py 7 % 2```], [```py 1```],
    [```py **```], [Potenz], [```py 2 ** 3```], [```py 8```],
    table.hline(),
  )]]

== Vergleichsoperatoren

- Operatoren können als Resultat auch Wahrheitswerte (```py True```/```py False```) liefern.
- Es werden zwei Ausdrücke miteinander verglichen.
- Stimmt die notierte Aussage, ergibt der Operator ```py True```und sonst ```py False```.


#grid(
  columns: (1fr, 1fr),
  align: (right, left + horizon),
  gutter: 2em,
  // align: horizon,
  [
    #text(size: 8pt)[
      #table(
        columns: (auto, auto, auto, auto),
        stroke: none,
        align: (center + horizon, left + horizon, center + horizon, center + horizon),
        table.hline(),
        table.header([*Operator*], [*Bedeutung*], [*Beispiel*], [*Ergebnis*]),
        table.hline(),
        [```py ==```], [gleich], [```py 3 == 3```], [```py True```],
        [```py !=```], [ungleich], [```py 4 != 4```], [```py False```],
        [```py <```], [kleiner als], [```py 2 < 5```], [```py True```],
        [```py <=```], [kleiner gleich als], [```py 7 <= 5```], [```py False```],
        [```py >```], [grösserals als], [```py 10 > 7```], [```py True```],
        [```py >=```], [grösser gleich als], [```py 3 >= 4```], [```py False```],
        table.hline(),
      )]
  ],
  [
    #stickybox(fill: rgb("#ffb6a6"), rotation: 5deg)[
      #align(center)[
        🚨 *Wichtig* 🚨

        In Python verwendet man `==` (Doppel-Gleich) für "gleich", weil das Symbol `=` schon für die Zuweisung von Variablen verwendet wird!
      ]
    ]
  ],
)

== Logische Operatoren

- Bedingungen werden kombiniert und das Resultat ist ein Wahrheitswert.


#align(center)[#text(size: 8pt)[
  #table(
    columns: (auto, auto, auto, auto, auto),
    stroke: none,
    align: (center + horizon, center + horizon, left + horizon, center + horizon, center + horizon),
    table.hline(),
    table.header([*Operator*], [*Bedeutung*], [*Wann ergibt der Operator ```py True```?*], [*Beispiel*], [*Ergebnis*]),
    table.hline(),
    [```py and```], [UND], [wenn *beide* Bedingungen True sind], [```py (3 > 1) and (2 < 5)```], [```py True```],
    [```py or```],
    [ODER],
    [wenn (mindestens) *eine* der Bedingungen True ist],
    [```py (3 > 5) or (2 < 5)```],
    [```py True```],
    [```py not```], [NICHT], [wenn die Bedingungen False ist], [```py not (3 > 5)```], [```py True```],
    table.hline(),
  )]]

== Text-Operatoren

- Für den Datentyp String gibt es besondere Operatoren. Sie verhalten sich anders als jende von den Zahlen.

#align(center)[#text(size: 8pt)[
  #table(
    columns: (auto, auto, auto, auto),
    stroke: none,
    align: (center + horizon, left + horizon, center + horizon, center + horizon),
    table.hline(),
    table.header([*Operator*], [*Bedeutung*], [*Beispiel*], [*Ergebnis*]),
    table.hline(),
    [```py <```], [alphabetische Sortierung], [```py "Apfel" < "Banane"```], [```py True```],
    [```py ==```], [gleich], [```py "Hallo" == "Tschüss"```], [```py False```],
    [```py !=```], [nicht gleich], [```py "Kathe" != "katze"```], [```py True```],
    [```py +```], [Verkettung], [```py "hallo" + "hallo"```], [```py "hallohallo"```],
    [```py *```], [Wederholung], [```py "ha" * 3```], [```py "hahaha"```],
    table.hline(),
  )]]

#pagebreak()

== Zuweisungsoperatoren

- Wir wissen bereits, dass das Zeichen `=` bedeutet "weise den Wert rechts der Variablen links zu" (Zuweisung).
- In Python gibt es Kurzformen, die eine Rechnung und eine Zuweisung kombinieren:

#align(center)[#text(size: 8pt)[
  #table(
    columns: (auto, auto, auto, auto),
    stroke: none,
    align: (center + horizon, left + horizon, center + horizon, center + horizon),
    table.hline(),
    table.header([*Operator*], [*Bedeutung*], [*Beispiel*], [*Ergebnis*]),
    table.hline(),
    [```py +=```], [Addition und Zuweisung], [```py x += 1```], [```py x = x + 1```],
    [```py -=```], [Subtraktion und Zuweisung], [```py x -= 2```], [```py x = x - 2```],
    [```py *=```], [Multiplikation und Zuweisung], [```py x *= 3```], [```py x = x * 3```],
    [```py /=```], [Division und Zuweisung], [```py x /= 2```], [```py x = x / 2```],
    [```py //=```], [Ganzzahl-Division  und Zuweisung], [```py x //= 2```], [```py x = x // 12```],
    [```py %=```], [Modulo und Zuweisung], [```py x %= 2```], [```py x = x % 2```],
    [```py **=```], [Potenz und Zuweisung], [```py x **= 3```], [```py x = x ** 3```],
    table.hline(),
  )
]]

#exo(
  exercise: [
    #grid(
      columns: (3fr, 2fr),
      gutter: 2em,
      [
        Sie haben folgendes ausgemessenes Zimmer, bei dem an den Wänden langsam die Farbe abblättert.

        Erstellen Sie in WebTigerPython passende Variablen und berechnen Sie die Gesamtfläche, die neu gestrichen werden muss.

        Sie können mit folgendem Code starten und dann weiter ausbauen:

        #align(center)[#block(width: 70%)[
          ```py
          laenge = 4
          hoehe = 2.5
          breite = ...
          wand_links = hoehe * breite
          ...
          gesamtflaeche = ...
          print(gesamtflaeche)
          ```]]
      ],
      [
        #image("../Bilder/aufgabe_zimmer_1.png")
      ],
    )
  ],
  solution: [
    #codly(header: [*Gesamtfläche aller vier Wände*])
    ```py
    laenge = 4
    hoehe = 2.5
    breite = 3.12
    wand_links = hoehe * breite
    wand_hinten = hoehe * laenge
    gesamtflaeche = 2 * wand_links + 2 * wand_hinten
    print(gesamtflaeche)
    ```
  ],
)

#exo(
  exercise: [
    #grid(
      columns: (3fr, 2fr),
      gutter: 2em,
      [
        Das Zimmer wurde renoviert und es hat jetzt zwei Fenster und eine Tür. Die Farbe an der Wand gefällt uns aber nicht mehr und wir möchten sie wieder neu streichen. Passen Sie Ihr Programm so an, dass Sie die neue Wandfläche berechnen.
      ],
      [
        #image("../Bilder/aufgabe_zimmer_2.png")
      ],
    )
  ],
  solution: [
    #codly(header: [*Fläche der Wände ohne Fenster und Tür*])
    ```py
    laenge = 4
    hoehe = 2.5
    breite = 3.12
    wand_links = hoehe * breite
    wand_hinten = hoehe * laenge
    fenster_links = 1.1 * 2.2
    fenster_hinten = 0.8 * 2.9
    tuere = 2 * 1
    gesamtflaeche = 2 * wand_links + 2 * wand_hinten - fenster_links - fenster_hinten - tuere
    print(gesamtflaeche)
    ```
  ],
)

#exo(
  exercise: [
    Probieren Sie ein paar der Operatoren aus den Tabellen aus. Überlegen Sie sich jeweils vor dem Ausführen, was Sie als Resultat erwarten. Zum Beispiel:

    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 2em,
      [
        ```py
        name = "jo"
        print(name*3)
        ```
      ],
      [
        ```py
        a = 16
        b = 3
        print(a/b)
        print(a*b)
        ```
      ],
      [
        ```py
        print(0 == 0)
        print(0 != 0)
        ```
      ],
    )
  ],
  solution: [

    Zum Beispiel:

    #codly(header: [*Arithmetische Operatoren*])
    ```py
    a = 16
    b = 3
    print(a + b) # 19
    print(a - b) # 13
    print(a * b) # 48
    print(a / b) # 5.333333333333333
    print(a // b) # 5
    print(a % b) # 1
    print(a ** b) # 4096
    ```

    #codly(header: [*Vergleichsperatoren*])
    ```py
    print(0 == 0) # True
    print(0 != 0) # False
    print(2 < 3) # True
    print(2 > 2) # False
    print(2 <= 2) # True
    print(-2 >= 2) # False
    ```

    #codly(header: [*Logische Operatoren*])
    ```py
    a = True
    b = False
    print(a and b) # False
    print(a or b) # True
    print(not a) # False
    print(not b) # True
    ```

    #codly(header: [*Text-Operatoren*])
    ```py
    name = "jo"
    print(name * 3) # jojojo
    print(name + "ghurt") # joghurt
    print("gymthun" != "GymThun") # True
    print("W" * 3 == "WWW") # True
    ```
  ],
)