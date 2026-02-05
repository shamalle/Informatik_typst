#import "@preview/colorful-boxes:1.4.3": colorbox, stickybox
#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo

= Ein- und Ausgabe

Damit wir mit dem Computer arbeiten können, braucht eine Programmiersprache zwei Dinge: Wir müssen *Eingaben* (*Input*) machen können, und der Computer muss diese verarbeiten und uns danach *Resultate* (*Output*) *zurückgeben*.

In Python gibt es zwei Funktionen (Befehle) dafür.

#table(
  columns: 2,
  stroke: none,
  [```py print()```], [Damit können Sie beliebige Sachen in die Kommandozeile (Ausgabefenster) ausdrucken lassen.],
  [```py input()```], [Damit fragt der Computer nach einem Input vom Benutzer.],
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
      Um Programme wirklich nützlich machen zu können, braucht es meistens *Inputs* vom Benutzer und ein Resultat als *Output*, das für den Bentuzer hilfreich ist.
    ]
  ],
)

#v(2mm)

#exo(
  exercise: [
    In der Fahrschule lernt man folgende Faustregel für den Anhalteweg:

    #align(center)[#box(fill: luma(220), inset: 10pt, radius: 10pt)[
      $
        "Reaktionsweg (in m)" & = ("Geschwindigkeit (in km/h)") / (10) dot.c 3 \
            "Bremsweg (in m)" & = ("Geschwindigkeit (in km/h)") / 10 dot.c ("Geschwindigkeit (in km/h)") / 10 \
          "Anhalteweg (in m)" & = "Reaktionsweg (in m)" + "Bremsweg (in m)"
      $
    ]]

    Erstellen Sie ein Programm, das die Geschwindigkeit als Input vom Benutzer bekommt, und die restlichen Variablen berechnen Sie mit den Formeln oben. Am Schluss geben Sie das Resultat mit ```py print(anhalteweg)``` aus.
  ],
  solution: [
    #codly(header: [*Ein-/Ausgabe*])
    ```py
    geschwindigkeit = inputInt("Bitte Geschwindigkeit in km/h eingeben:")
    reaktionsweg = geschwindigkeit/10 * 3
    bremsweg = (geschwindigkeit/10) ** 2
    anhalteweg = reaktionsweg + bremsweg
    print(anhalteweg)
    ```
  ],
)
