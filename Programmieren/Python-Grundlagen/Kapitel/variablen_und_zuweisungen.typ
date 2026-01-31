#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/codly:1.3.0": *

= Variablen und Zuweisungen

#grid(
  columns: (3fr, 1fr),
  gutter: 2em,
  [
    Damit der Computer ein Programm ausführen kann, muss er sich Sachen merken können.
    Wie wenn wir Menschen beim Einkaufen eine Einkaufsliste brauchen.
    Die gespeicherten Werte nennt man *Variablen*.


    #outline-colorbox(
      title: "Variablen und Zuweisungen",
      color: "purple",
      radius: 3pt,
      width: auto,
    )[
      Eine *Variable* benutzt man, um einen Wert zu speichern (wie ein Platzhalter).

      Sie wird mit einer *Zuweisung* (=) erstellt, wobei links der *Name* und rechts der *Wert* der Variable steht.
    ]
  ],
  image("../Bilder/variablen.png", width: 100%),
)

#grid(
  columns: (1fr, 2.5fr),
  gutter: 2em,
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
    Das ist ein Text, der immer in Anführungszeichen stehen muss, damit der Computer ihn als solchen versteht.
  ],
)

Den *Namen der Variablen* darf man (fast) frei wählen:

- erlaubt sind Buchstaben (klein und gross), Zahlen und der Unterstrich \_
- der Name darf nicht mit einer Zahl beginnen

Im Verlauf des Programms können sich die Werte von Variablen ändern (man kann sie also überschreiben).

#grid(
  columns: (2fr, 3fr),
  gutter: 2em,
  [
    #codly(header: [*Variablen überschreiben*])
    ```py
    x = 5
    x = 7 # der Wert von x ist neu 7
    ```],
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

#pagebreak()

#colorbox(
  title: "Aufgabe",
  radius: 2pt,
  width: auto,
)[
  Gegeben ist eine Liste von möglichen Variablennamen. Welche sind laut den Regeln für Python gültig?

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
]
