#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo

= Funktionen

Wir können in *Funktionen* einen Ablauf speichern und diese dann mit verschiedenen Parametern aufrufen.

Auch hier ist das *Einrücken* wichtig.

#codly(header: [*Funktionen*])
```py
def fahrenheit_to_celsius(fahrenheit):
    celsius = (fahrenheit - 32) * 5/9
    return celsius

fahrenheit_to_celsius(77)
fahrenheit_to_celsius(86)
fahrenheit_to_celsius(50)
```

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      exercise: [
        Arbeiten Sie die Seite #link("https://www.python-online.ch/index.php?inhalt_links=turtle/navigation.inc.php&inhalt_mitte=turtle/funktionen.inc.php")[*Funktionen*] im *Turtle-Tutorial* durch. Probieren Sie die *Musterbeispiele* aus und lösen Sie die Aufgaben 1-3c im Abschnitt *Zum selbst Lösen*.
      ],
      solution: [
        #codly(header: [*Aufgabe 1*])
        ```py
        from gturtle import *
        def sechseck():
            repeat 6:
                forward(60)
                left(60)
        setPenColor("blue")
        hideTurtle()
        repeat 10:
            sechseck()
            right(36)
        ```

        #codly(header: [*Aufgabe 2*])
        ```py
        from gturtle import *
        def square():
            right(45)
            repeat 6:
                forward(60)
                right(90)
            right(135)
        hideTurtle()
        setPenColor("blue")
        square()
        setPenColor("red")
        square()
        setPenColor("lime")
        square()
        setPenColor("black")
        square()
        ```

        #codly(header: [*Aufgabe 3a-c*])
        ```py
        from gturtle import *
        def bogen():
            repeat 90:
                forward(1)
                right(1)
        def blumenblatt():
            repeat 2:
                bogen()
                right(90)
        def blume():
            repeat 8:
                blumenblatt()
                right(360/8)
        hideTurtle()
        blume()
        ```
      ],
    )
  ],
  [
    #exo(
      exercise: [
        Arbeiten Sie die Seite #link("https://www.python-online.ch/index.php?inhalt_links=turtle/navigation.inc.php&inhalt_mitte=turtle/parameter.inc.php")[*Parameter*] im *Turtle-Tutorial* durch. Probieren Sie die *Musterbeispiele* aus und lösen Sie die Aufgaben 1-5 im Abschnitt *Zum selbst Lösen*.

        *Hinweise:*
        - Bei Aufgabe 1 ist der Drehwinkel 10 Grad.
      ],
      solution: [
        #codly(header: [*Aufgabe 1*])
        ```py
        from gturtle import *
        def square(s):
            repeat 4:
                forward(s)
                right(90)
        hideTurtle()
        s = 180
        repeat 100:
            square(s)
            s *= 0.95
            left(10)
        ```
      ],
    )
  ],
)
