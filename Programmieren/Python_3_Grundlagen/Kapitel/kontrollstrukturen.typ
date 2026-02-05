#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": stickybox
#import "@preview/exercise-bank:0.3.0": exo

= Kontrollstrukturen

Mit Verzweigungen oder Schleifen kann der Programmablauf gesteuert werden.

== Verzweigungen: ```py if else```

#codly(header: [*Verzweigungen*])
```py
if punkte > 20:
  print("Gewonnen!")
```

#codly(header: [*Verzweigungen*])
```py
if punkte > 20:
	print("Gewonnen!")
else:
  print('Verloren.")
```

#codly(header: [*Verzweigungen*])
```py
if punkte > 20:
	print("Gewonnen!")
elif punkte < 10:
	print("Verloren")
else:
  print("Nochmals versuchen!")
```

== Schleifen: ```py while``` und ```py for```

Das Einrücken ist wichtig. Dadurch sagen wir Python was alles zur Wiederholung gehört und was nicht mehr.

#codly(header: [*Schleife*])
```py
while punkte < 10:
  x = 5
```

== Bedingungen formulieren

Bei der Formulierung von Bedingungen wird oft der Wert einer Variablen mit einem Vorgegebenen Wert verglichen.

#v(5mm)

#grid(
  columns: (3fr, 2fr),
  gutter: 2em,
  align: horizon,
  [#align(center)[
    #table(
      columns: (auto, auto),
      stroke: none,
      align: (left + horizon, left + horizon),
      inset: (x: 0% + 5pt, y: 0% + 6pt),
      table.hline(),
      table.header([*Bedingung in Worten*], [*Bedingung in Python*]),
      table.hline(),
      [Punkte sind grösser als 50], [```py punkte > 50```],
      [Level ist kleiner oder gleich als 3], [```py level <= 3```],
      [Zeit ist gleich 0], [```py zeit == 0```],
      table.hline(),
    )]],
  [
    #stickybox(rotation: 5deg)[
      #align(center)[
        📌 *Merke*

        Das Zeichen `=` hat in Python nicht dieselbe Bedeutung wie in der Mathematik.
      ]
    ]],
)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      exercise: [
        Übersetzen Sie das Struktogramm in Python Code.

        Überprüfen Sie den Code einmal mit `a = 14` und `b = 4` und einmal mit `a = 38` und `b = 5`.
        #image("../Bilder/struktogramm-schleife.png", width: 3.5cm)
      ],
      solution: [
        ```py
        a = inputInt("a=")
        b = inputInt("b=")
        c = 0
        while a >= b:
            a = a - b
            c = c + 1
        print("c=" + str(c))
        print("a=" + str(a))
        ```
      ],
    )
  ],
  [
    #exo(
      exercise: [
        Übersetzen Sie das Struktogramm in Python Code und prüfen Sie Ihren Code ob er richtig funktioniert.
        #image("../Bilder/struktogramm-schleife-und-verzweigungen.png", width: 4.5cm)
      ],
      solution: [
        ```py
        a = inputInt("a=")
        b = inputInt("b=")
        while a > 0 and b > 0 :
            if a > b :
                a = a - b
            else:
                b = b - a
        if b == 0:
            print(a)
        else:
            print(b)
        ```
      ],
    )
  ],
)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      exercise: [
        Schreiben Sie ein Programm in Python, welches für eine Benutzer-Eingabe die sogenannte Fakultät berechnet. Die Fakultät berechnet für eine natürlichen Zahl das Produkt aller natürlichen Zahlen kleiner oder gleich dieser Zahl. Das Zeichen für die Fakultät ist ein Ausrufezeichen (!).

        Beispiel:

        $1! = 1$\
        $2! = 2 dot.c 1 = 2$\
        $3! = 3 dot.c 2 dot.c 1 = 6$\
        $4! = 4 dot.c 3 dot.c 2 dot.c 1 = 24$\
        $5! = 5 dot.c 4 dot.c 3 dot.c 2 dot.c 1 = 120$\
        …

        Formatieren Sie die Ausgabe folgendermassen:
        #align(center)[#box(fill: luma(220), inset: 5pt, radius: 3pt)[`5! = 120`]]
      ],
      solution: [
        ```py
        zahl = inputInt("Zahl eingeben:")
        produkt = 1
        output = str(zahl)+"! = "
        while zahl > 1 :
            produkt *= zahl
            zahl -= 1
        print(output + str(produkt))
        ```
      ],
    )
  ],
  [
    #exo(
      exercise: [
        Schreiben Si eien Programm in Python, welches die grösste von drei Zahlen findet. Dabei sollen die drei Zahlen als Benutzerinput eingelesen werden. Der Output soll folgendermassen aussehen:
        #align(center)[#box(fill: luma(220), inset: 5pt, radius: 3pt)[`max(3, 15, -7) = 15`]]
      ],
      solution: [
        ```py
        zahl1 = inputInt("erste Zahl")
        zahl2 = inputInt("zweite Zahl")
        zahl3 = inputInt("dritte Zahl")
        if zahl1 > zahl2:
            if zahl1 > zahl3:
                resultat = zahl1
            else:
                resultat = zahl3
        else:
            if zahl2 > zahl3:
                resultat = zahl2
            else:
                resultat = zahl3
        print("max(" + str(zahl1) + ", " + str(zahl2) + ", " + str(zahl3) + ") = " + str(resultat))
        ```
      ],
    )

    #exo(
      exercise: [
        Schreiben Sie ein Python-Programm, welches den Zeitraum zwischen zwei Uhrzeiten bestimmt.

        Es soll angegeben werden, wie viel Zeit zwischen der Startzeit (Startstunde, Startminute) und der Endzeit (Endstunde, Endminute) liegt. Die Angabe soll in Stunden und Minuten erfolgen. Beide Uhrzeiten liegen innerhalb des gleichen Tages.

        Beispiele:
        - Von 6:46 bis 13:28 sind es 6 Stunden und 42 Minuten.
        - Von 14:20 bis 15:07 sind es 47 Minuten.
      ],
      solution: [
        ```py
        startzeit_stunden = inputInt("Startzeit Stunden:")
        startzeit_minuten = inputInt("Startzeit Minuten:")
        endzeit_stunden = inputInt("Endzeit Stunden:")
        endzeit_minuten = inputInt("Endzeit Minuten:")
        differenz_stunden = endzeit_stunden - startzeit_stunden
        differenz_minuten = endzeit_minuten - startzeit_minuten
        if differenz_minuten < 0:
            differenz_stunden -= 1
            differenz_minuten += 60
        print(str(differenz_stunden) + " Stunden und " + str(differenz_minuten) + " Minuten")
        ```
      ],
    )
  ],
)

