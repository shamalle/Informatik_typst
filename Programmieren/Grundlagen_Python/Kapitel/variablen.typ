#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup
#import "../../../config/conf.typ": shoutout

#v(5mm)

= Variablen und Zuweisungen

#grid(
  columns: (0.9fr, 0.3fr),
  gutter: 1.2em,
  [
    Damit der Computer ein Programm ausführen kann, muss er sich Sachen merken können. Wie wenn wir Menschen beim Einkaufen eine Einkaufsliste brauchen. Die gespeicherten Werte nennt man *Variablen*. 

    #outline-colorbox(
      title: "Variablen und Zuweisungen",
      color: "blue",
      radius: 3pt,
      width: auto,
      inset: 6pt,
      )[
        
        Eine *Variable* benutzt man, um einen Wert zu speichern (wie ein Platzhalter).

        Sie wird mit einer *Zuweisung* (=) erstellt, wobei links der Name und rechts der Wert der Variable steht.
      ]
  ],
  [
    #align(right)[
    #image("../Bilder/variable.png", width: 98%)
    ]
  ]
)

#grid(
  columns: (1fr, 2.5fr),
  gutter: 1.5em,
  align: horizon,
  [
    #codly(header: [*Zuweisungen*])
    ```py
    x = 5
    monat = "Januar"
    summe = 1 + 256 + 42
    ```
  ],
  [
    Die *Werte der Variablen* können Zahlen, Text oder auch Berechnungen sein.

    In der ersten Zeile erhält die Variable ```py x``` den Wert ```py 5```.
    In der zweiten Zeile bekommt die Variable ```py monat``` den Wert ```py "Januar"```.
    Dies ist ein Text, der immer in Anführungszeichen stehen muss, damit der Computer ihn als solchen versteht.
  ],
)

Den *Namen der Variablen* darf man (fast) frei wählen:
#v(-2mm)
- erlaubt sind Buchstaben (klein und gross), Zahlen und der Unterstrich \_
- der Name darf nicht mit einer Zahl beginnen

Im Verlauf des Programms können sich die Werte von Variablen ändern (man kann sie also überschreiben).


#v(1mm)

#grid(
  columns: (2fr, 3fr),
  gutter: 2em,
  align: horizon,
  [
    #codly(header: [*Variablen überschreiben*])
    ```py
    x = 5
    x = 7 # der Wert von x ist neu 7
    ```
  ],
  [
    #v(5pt)
    #stickybox(
      rotation: 1deg,
    )[
      Mit dem Symbol ```py #``` können wir Code in Python *kommentieren*.
      Alles, was nach dem ```py #``` auf derselben Zeile folgt, wird vom Computer ignoriert.
      *Kommentare* helfen uns, den Code lesbarer (verständlicher) zu machen.
    ]
  ],
)

#exo(
  exercise: [
    Gegeben ist eine Liste von möglichen *Variablennamen*. Welche sind laut den Regeln für Python gültig?

    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 2em,
      inset: (x: 2em, y: 0em),
      [
        ```py Summe_1 = 433```

        ```py *myname = "Glurak"```

        ```py 8Bit = 256```
      ],
      [
        ```py summe_1 = 123```

        ```py _my_name = "Pikachu"```

        ```py L337Code = 42```
      ],
      [
        ```py summe1 = 63```

        ```py my name = "Flegmon"```

        ```py Byte8Numb3r = 16```
      ],
    )

    Wie kann man schnell überprüfen, ob ein Variablenname okay ist oder nicht? #v(0.5em)
  ],
  solution: [
    #grid(
      columns: (1fr, 1fr),
      gutter: 2em,
      [
        *gültig:*

        ```py Summe_1 = 433```\
        ```py summe_1 = 123```\
        ```py _my_name = "Pikachu"```\
        ```py L337Code = 42```\
        ```py summe1 = 63```\
        ```py Byte8Numb3r = 16```
      ],
      [
        *ungültig:*

        ```py *myname = "Glurak"```\
        ```py 8Bit = 256```\
        ```py my name = "Flegmon"```

      ],
    )

    *Variablenname auf Gültigkeit überprüfen:*

    Zuweisung mit dem Variablennamen in Thonny eingeben und den Code laufen lassen. Bei einem ungültigen Namen wird eine Fehlermeldung erscheinen.
  ],
)