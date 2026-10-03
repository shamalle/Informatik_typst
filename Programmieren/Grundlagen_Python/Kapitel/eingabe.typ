#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup
#import "../../../config/conf.typ": shoutout

= Ein- und Ausgabe

#grid(
  columns: (0.75fr, 0.25fr),
  gutter: 1.3em,
  [
    Damit wir mit dem Computer arbeiten können, braucht eine Programmiersprache zwei Dinge: Wir müssen *Eingaben* (*Input*) machen können, und der Computer muss diese verarbeiten und uns danach *Resultate* (*Output*) *zurückgeben*.

    #outline-colorbox(
      title: "Ein- und Ausgabe",
      color: "blue",
      radius: 3pt,
      width: auto,
      inset: 6pt,
      )[
        #v(1mm)
        In Python gibt es zwei Funktionen (Befehle) dafür.
        #v(-2mm)
        #table(
          columns: 2,
          stroke: none,
          [```py input()```], [Damit fragt der Computer nach einem Input vom Benutzer.],
          [```py print()```], [Damit können Sie beliebige Sachen in die Kommandozeile (Ausgabefenster) ausdrucken lassen.],
        )
      ]
  ],
  [
    #image("../Bilder/input.png")
  ]
)

#v(3mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  align: horizon,
  [
    #codly(header: [*Benutzer-Eingabe und Resultat-Ausgabe*])
    ```py
    erste_zahl = input("Erste Zahl:")
    zweite_zahl = input("Zweite Zahl:")
    print(erste_zahl + zweite_zahl)
    ```
  ],
  [
    #stickybox(
      rotation: 1deg,
    )[
      Um Programme wirklich nützlich machen zu können, braucht es meistens *Inputs* vom Benutzer und ein Resultat als *Output*, das für den Benutzer hilfreich ist.
    ]
  ],
)

#v(5mm)

#outline-colorbox(
  title: "Beispiele print() und input()",
  color: "purple",
  radius: 3pt,
  width: auto,
  inset: 6pt,
  )[
    #v(2mm)

    #grid(
      columns: (0.5fr, 0.5pt, 0.5fr),
      gutter: 1em,

      [
        #rotate(-7deg)[
          #text(size: 1.1em, weight: "bold")[print()]
        ]

        Testen Sie mal folgende Zeilen, indem Sie sie in Ihrem Thonny laufen lassen. Stimmt das Ergebnis mit Ihren Erwartungen überein?

        #codly()
          ```py 
          print("2+3") 
          ```

        #codly()
          ```py
          print(2+3)
          ```

        Wenn Sie Text und Zahlen gleichzeitig drucken möchten, müssen Sie es mit einem Komma trennen:

        #codly()
          ```py
          print("Die Summe ist: ", 5)
          ```

        #v(1mm)
      ],

      [
        #place(
          top + center,
          rect(
            width: 0.8pt,
            height: 22%,
            fill: rgb("#895aa9"),
          ),
        )
      ],

      [
        #rotate(-7deg)[
          #text(size: 1.1em, weight: "bold")[input()]
        ]

        Testen Sie auch den neuen Befehl ```py input()```. Was passiert bei der folgenden Zeile?

        #codly()
          ```py
          input("Wie heisst du? ") 
          ```

        Wenn man möchte, dass der Benutzer als Input nur eine ganze Zahl eingeben darf, müssen wir noch folgende Anpassung vornehmen:

        #codly()
          ```py
          int(input("Wie alt bist du?"))
          ```

        Falls der Benutzer keine Zahl eingibt, kommt ein Fehler.
      ]
    )
    #align(center)[
      Jetzt können wir auch alles miteinander verbinden, was wir bis jetzt gelernt haben:
      
      #v(-2mm)
      #box(width: 55%)[
      #codly()
        ```py
        name = input("Wie heisst du? ")
        print("hallo"*2,name)
       ```
      ]
    ]
    #v(1mm)
  ]

#v(5mm)

#exo(
  exercise: [
    #v(-2mm)
    Erstellen Sie eine Variable mit dem Namen ```py my_age```. Weisen Sie ihr den Wert Ihres Alters zu. Damit Sie sehen, ob es funktioniert hat, benutzen Sie in der nächsten Zeile ```py print(my_age)```, um die Variable auszugeben.
  ],
  solution: [
    #v(-2mm)
    #codly()
      ```py 
      my_age = 17
      print(my_age)
      ```
  ]
)

#v(3mm)

#exo(
  exercise: [
    #v(-2mm)
    Können Sie das Programm so anpassen, dass der Computer Sie mit ```py input()``` fragt, wie alt Sie sind und er dann die Zahl wieder ausgibt? Die Kommandozeile sollte so aussehen:

    #align(left)[
      #image("../Bilder/input_ex2.png", width: 37%)
    ]

  ],
  solution: [
    #v(-2mm)
    #codly()
      ```py 
      my_age = input("Wie alt sind Sie?")
      print("Ihr Alter ist", my_age)
      ```
  ]
) <exo-age-input>