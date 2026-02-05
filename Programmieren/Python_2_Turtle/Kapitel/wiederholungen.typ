#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo
#import "@preview/colorful-boxes:1.4.3": stickybox, outline-colorbox

= Wiederholungen

Bei den letzten Aufgaben haben wir gemerkt, dass wir häufig dieselben Befehle nacheinander widerholen. Wir können nun eine oder mehrere Programmzeilen zu einem Programmblock zusammenfassen und ihn dann *eine bestimmte Anzahl mal wiederholt durchlaufen* lassen. Dadurch erspart man sich viel Schreibarbeit und das Programm wird übersichtlicher.

#grid(
  columns: (2fr, 1fr),
  gutter: 2em,
  [
    Um ein Quadrat zu zeichnen, muss die Schildkröte vier Mal die Befehle ```py forward(100)``` und ```py left(90)``` ausführen. Dies kann man in WebTigerPython elegant mit dem Befehle ```py repeat``` programmieren.

    Die Wiederholung wird mit ```py repeat 4:``` eingeleitet. Dabei ist der *Doppelpunkt* sehr wichtig. Vergisst man ihn, so ergibt sich bei der Programmausführung eine Fehlermeldung.

    Die Befehle im Programmblock nach ```py repeat 4:``` muss man alle *gleichweit einrücken*. Dazu verwendet man immer 4 Leerschläge, man kann aber auch die Tabulator-Taste brauchen, um sie zu erzeugen. Man spricht bei der Wiederholstruktur auch vom *Durchlaufen einer Schleife*.

    #stickybox(rotation: -1deg)[
      #set text(size: 8pt)
      💡 *Das Einrücken ist sehr wichtig*

      Alles was wiederholt werden muss, kommt direkt nach ```py repeat 4:``` und muss *gleichweit eingerückt* sein. Alles was danach *nicht mehr eingerückt* ist, wird *nicht wiederholt*.
    ]
  ],
  [
    #align(center)[#image("../Bilder/viereck.png", width: 2cm)]
    #codly(header: [*Viereck mit repeat*], footer: [#align(right)[#link(
      "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEm042OOSYAWRJKZqm1YQHcotYgAoAjAAZjASiar1vamX0BOc5LABfALpA",
    )[🔗 *Programm öffnen*]]])
    ```py
    from gturtle import *
    repeat 4:
        forward(100)
        left(90)
    ```
  ],
)

#exo(
  exercise: [
    Experimentieren Sie mit dem Programm aus dem Viereck-Beispiel. Ändern Sie die Anzahl Wiederholungen und den Drehwinkel so, dass die Turtle die folgenden Figuren zeichnet.

    #image("../Bilder/vielecke.png", width: 90%)
  ],
  solution: [
    #codly(header: [*Aufgabe a*], footer: [#align(right)[#link(
      "https://webtigerpython.ethz.ch/#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEm042OOSYA2RJKZqm1YQHcotYgAoAjAAZjASiar1vamX2LzYAL4BdIA",
    )[🔗 *Programm öffnen*]]])
    ```py
    from gturtle import *
    repeat 6:
        forward(100)
        left(60)
    ```

    #codly(header: [*Aufgabe b*], footer: [#align(right)[#link(
      "https://webtigerpython.ethz.ch/#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEm042OOSYBWRJKZqm1YQHcotYgAoAjAAZjASiar1vamX0B2AExmwAXwC6QA",
    )[🔗 *Programm öffnen*]]])
    ```py
    from gturtle import *
    repeat 5:
        forward(100)
        left(72)
    ```

    Tipp für c) und d): Die Schildkröte "überspringt" Ecken $->$ damit addieren sich die Winkel von allen überprungenen Ecken.

    #codly(header: [*Aufgabe c*], footer: [#align(right)[#link(
      "https://webtigerpython.ethz.ch/#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEm042OOSYBWRJKZqm1YQHcotYgAoAjADYADAEomq9b2pkjAFgfmwAXwC6QA",
    )[🔗 *Programm öffnen*]]])
    ```py
    from gturtle import *
    repeat 5:
        forward(160)
        left(144)
    ```

    #codly(header: [*Aufgabe d*], footer: [#align(right)[#link(
      "https://webtigerpython.ethz.ch/#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEm042OOSYBORJKZqm1YQHcotYgAoAjADYADAEomq9b2pkjZ82AC-AXSA",
    )[🔗 *Programm öffnen*]]])
    ```py
    from gturtle import *
    repeat 9:
        forward(160)
        left(160)
    ```
  ],
)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1em,
  [
    #exo(
      exercise: [Zeichnen Sie eine Treppe mit 7 Stufen.
        #image("../Bilder/treppe.png")],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEm042OOSYB2RJKZqm1YQHcotYgAoATAAYAlE1XraaFgAsy-gJxnLazbR16jLiOqa9qB2dTMABfAF0gA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        repeat 7:
            forward(20) 
            right(90)
            forward(20)
            left(90)
        ```
      ],
    )
  ],
  [
    #exo(
      exercise: [Zeichnen Sie die angegebene Figur. Dazu brauchen Sie auch die Befehle ```py back()``` und ```py dot()``` und die Stiftfarbe ```py "blue"```.
        #image("../Bilder/repeat-aufgabe.png")],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEkBnOGQAKcCAGF63YQApxYAEbd2cbQEpJk2nGxxyTAByJJTR02rCA7lFrENARgAMvoyYHJ2J6Mg0AJgDgxx0oAGMAax9_EwgnJlo0FgALcIAWAFYjMABfAF0gA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        setPenColor("blue")
        repeat 8:
            forward(100) 
            dot(20)
            back(100)
            right(45)
        ```
      ],
    )
  ],
  [
    #exo(
      exercise: [
        Zeichnen Sie eine Perlenkette, die aus 18 Perlen (dots) besteht. Zwischen den Perlen muss die Schildkröte jeweils einige Schritte vorwärts gehen und um einen kleinen Winkel (z.B. 20°) nach links drehen.
        #image("../Bilder/perlenkette.png")
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEkBnOGQAKcCAGF63YQApxYAEbd2cbQEpJtNCwAWZDQE4ADCakRacbHHJMAjAA5EkpgFMxPTWngCsjoFMZpbWAEwO_oHUwgDuULTEGgDMiU4WaMRwACqcPHAajmAAvgC6QA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        setPenColor("blue")
        right(90)
        repeat 18:
            dot(15)
            right(20)
            forward(30)
        hideTurtle()
        ```
      ],
    )
  ],
)

#pagebreak()

#outline-colorbox(
  title: "Verschachtelte Schleifen",
  radius: 2pt,
  width: auto,
  color: "green",
)[
  Richtig spannend und anspruchsvoll wird es, wenn man zwei *repeat-Strukturen ineinander verschachtelt*. Dabei muss man immer denken, dass zuerst die "innere", weiter eingerückte Wiederholstruktur durchlaufen wird, bevor sich die "äussere", weniger eingerückte Struktur wiederholt.
]

#grid(
  columns: (1.4fr, 2fr, 0.5fr),
  gutter: 2em,
  align: horizon,
  [
    #codly(header: [*Verschachtelte Schleifen*], footer: [#align(right)[#link(
      "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEm042OOSYB2RJKZqmMuQoAsKiOoNNqwgO5RaxABQBmAAwBKJqsNraaFgAsylgJwPnasa0ZhY2DmAAvgC6QA",
    )[🔗 *Programm öffnen*]]])
    ```py
    from gturtle import *
    repeat 7:
        repeat 4:
            forward(30)
            right(90)
        forward(30)
    ```
  ],
  [
    In diesem Beispiel zeichnet die innere Schleife ein einzelnes Quadrat und die Schildkröte befindet sich nachher wieder in der linken unteren Ecke des Quadrats. Sie wird dann in der äusseren Schleife vorgeschoben und das Quadrat wird erneut gezeichnet.

    #stickybox(rotation: 2deg)[
      #set text(size: 8pt)
      💡 *Wichtig*

      Versuchen Sie diesem Code Schritt für Schritt zu folgen und zu verstehen, wass genau passiert!
    ]
  ],
  [
    #image("../Bilder/leiter.png", width: 1cm)
  ],
)

#exo(
  exercise: [
    Versuchen Sie zuerst auf einem Blatt Papier herauszufinden, was das folgende Programm zeichnet. Lassen Sie es dann laufen, um Ihre Vermutung zu bestätigen.

    #align(center)[#block(width: 40%)[
      #codly(footer: [#align(right)[#link(
        "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhCZNJtONjjkmAVkSTp0uQqUAWNVI2HqwgO5RaxABQBGAAy2AlOsMbaaFgAsylgJyPn0rzU3gDMAGwOTGAAvgC6QA",
      )[🔗 *Programm öffnen*]]])
      ```py
      from gturtle import *

      repeat 5:
          repeat 4:
              forward(100)
              right(90)
          left(36)
      ```]]
  ],
  solution: [#image("../Bilder/verschachtelte-schleifen.png", width: 2cm)],
)
