#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo

= Turtle bewegen

Ein *Programm* besteht aus einer Folge von *Programmzeilen*, die der Reihe nach (als Sequenz) abgearbeitet werden. Mit dem Turtle-Modul können wir eine kleine Schildkröte mit *Befehlen* steuern und sehen die dadurch erzeugten Bewegungen im *Grafikfenster*.

*Turtlebefehle* werden grundsätzlich Englisch geschrieben und enden immer mit einem *Klammerpaar*, das man *Parameterklammer* nennt. Dieses kann weitere Angaben für den Befehl enthalten. Selbst wenn keine Angaben nötig sind, muss in Python ein *leeres Klammerpaar* vorhanden sein. Es ist ebenfalls wichtig, die *Gross-/Kleinschreibung* exakt einzuhalten.

Bei der Bewegung hinterlässt die Schildkröte eine Spur. Es ist so, als ob sie einen auf der Zeichenfläche aufliegenden Zeichenstift (pen) mit sich tragen würde. Damit kann man beliebige Figuren zeichnen.

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [

    Bevor die Schildkröte loslegen kann, muss man den Computer anweisen, die Turtlebefehle aus dem Modul bereit zu stellen. Dazu schreibt man den den Befehl ```py from gturtle import *``` als erste Zeile ins Editorfenster.

    Mit dem Befehl ```py forward(100)``` bewegt sich die Schildkröte um 100 Schritte vorwärts, mit ```py left(90)``` dreht sie sich um 90 Grad nach links und mit ```py right(90)``` dreht sie um 90 Grad nach rechts. Mit diesen Befehlen können wir die Schildkröte steuern.

    #codly(
      header: [*Erste Turtle-Zeichnung*],
      footer: [#align(right)[#link(
        "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEmoA1nAAqnHnAAUASknVhAdyi1iKgIwAGYxoi9qZFQE4zmnXoMBWexbhXbbrbV36Vrua0aCwAFtZ25j5-Lm5gAL4AukA",
      )[🔗 *Programm öffnen*]]],
    )
    ```py
    from gturtle import *

    forward(100)
    left(90)
    forward(50)
    left(90)
    forward(50)
    right(90)
    forward(50)
    ```
  ],
  [
    #align(center)[#image("../Bilder/basic_turtle_befehle.png")]

    #outline-colorbox(
      title: "Beispiele ausprobieren",
      radius: 2pt,
      width: auto,
      color: "green",
      centering: true,
    )[
      Um die Befehle zu lernen und das Programmieren zu üben ist es ratsam, wenn Sie die Beispiele jeweils in WebTigerPython ausprobieren. Klicken Sie dazu jeweils auf den bereitgestellten Link und experimentieren Sie.
    ]

    #v(5mm)

    #stickybox(rotation: 2deg)[
      #set text(size: 8pt)

      *Leere Zeilen* im Code (wie die zweite Zeile im Beispiel) werden in Python *ignoriert* und dienen nur der besseren Lesbarkeit des Programms.
    ]
  ],
)


#pagebreak()

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      exercise: [
        Zeichnen Sie ein gleichseitiges Dreieck mit der Seitenlänge 100. Finden Sie den richtigen Drehwinkel?
        #image("../Bilder/gleichseitges_dreieck.png")
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhGrCA7lFrEAFAEYADKoCUk3tTIqATJsnTachSvVaIOvcsNWTZpWqPW4ug5rABfALpA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        forward(100)
        left(120)
        forward(100)
        left(120)
        forward(100)
        left(120)
        ```
      ],
    )
    #exo(
      exercise: [
        Die Schildkröte kann sich auch rückwärts bewegen. Soll sie beispielsweise 100 Schritte rückwärtsgehen, so verwendet man den Befehl ```py back(100)```. Zeichnen Sie die dargestellte Figur.
        #image("../Bilder/turtle_rueckwaerts.png")
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhGrCA7lFrEAFAEYADKoCUkgEZQAxgGsV6rRF7UyKgEybJ02nIXHbEXYeenzl5TdP3HSmoubkZBnnAW1ppgAL4AukA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        forward(100)
        back(100)
        left(120)
        forward(100)
        back(100)
        left(120)
        forward(100)
        back(100)
        left(120)
        ```
      ],
    )
  ],
  [
    #stickybox(rotation: 2deg)[
      #set text(size: 8pt)
      💡 *Tipp für die Aufgaben*

      💾 *Speichern* Sie Ihre Lösungen jeweils *als Python-Dateien mit sinnvollen Namen* auf Ihrem Computer ab, damit Sie sie wieder finden.

      Alternativ können sie den Code von Ihren Lösungen ins *OneNote kopieren*.

      📝 Beginnen Sie jede Aufgabe mit einem *leeren Editorfenster*.
    ]

    #v(5mm)

    #exo(
      exercise: [Mit dem Befehl ```py dot(20)``` zeichnet die Schildkröte dort, wo sie sich gerade befindet, einen gefüllten Kreise mit dem Durchmesser 20. Zeichnen Sie die folgende Figur.
        #image("../Bilder/turtle_dot.png")
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhGL0yACgBMABgCUk2mhYALOQBYArKojVhAdyi1isgIyKVk6XKWH1WuQE47R0-cs3PDhU9eandPY1ozC2tbQwCnNQ1tWQ9DcMjfGPsZQMNg0OUwAF8AXSA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        dot(20)
        right(45)
        forward(100)
        dot(20)
        right(90)
        forward(100)
        dot(20)
        left(90)
        forward(100)
        dot(20)
        right(90)
        forward(100)
        dot(20)
        left(90)
        ```
      ],
    )
    #exo(
      exercise: [
        Zeichnen Sie die abgebildete Figur mit den angegebenen Längen.
        #image("../Bilder/turtle_laengen.png")
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhFpoWACzIAKAJwAGAJSTqwgO5RaxBQEYV6yb2qLVGiFtq79CgKympM-cpe37B4y-lzLTx09A2drc0DrLxCjEzUwAF8AXSA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        right(90)
        forward(100)
        left(90)
        forward(50)
        right(90)
        forward(100)
        right(90)
        forward(50)
        left(90)
        forward(100)
        ```
      ],
    )
  ],
)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [

  ],
  [

  ],
)
