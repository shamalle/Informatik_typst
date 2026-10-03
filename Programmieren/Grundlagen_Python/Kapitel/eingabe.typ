#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup
#import "../../../config/conf.typ": shoutout

#v(5mm)

= Ein- und Ausgabe
#grid(
  columns: (0.75fr, 0.25fr),
  gutter: 1.3em,
  [
    Damit wir mit dem Computer arbeiten können, braucht eine Programmiersprache zwei Dinge: Wir müssen *Eingaben* (*Input*) machen können, und der Computer muss diese verarbeiten und uns danach *Resultate* (*Output*) *zurückgeben*.

In Python gibt es zwei Funktionen (Befehle) dafür.
  ],
  [
    #v(-12mm)
    #image("../Bilder/input.png")
  ]
)

#v(-3mm)
#table(
  columns: 2,
  stroke: none,
  [```py input()```], [Damit fragt der Computer nach einem Input vom Benutzer.],
  [```py print()```], [Damit können Sie beliebige Sachen in die Kommandozeile (Ausgabefenster) ausdrucken lassen.],
)

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

#v(3mm)

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.3em,
  [
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
  ],
  [
    #exo(
      exercise: [
        #v(-2mm)

      ],
      solution: [
        #v(-2mm)
      ]
    )
  ]
)


