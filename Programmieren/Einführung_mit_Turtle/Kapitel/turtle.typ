#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup
#import "../../../config/conf.typ": shoutout

= Unser erstes Setup: Thonny und Turtle

Wie es viele verschiedene Programmiersprachen gibt, gibt es auch eine Menge unterschiedlicher Entwicklungsumgebungen. Wir werden im Unterricht die Umgebung *Thonny* brauchen, da es überschaubar, leicht zu installieren und nicht zu anspruchsvoll ist. Hier eine kurze Übersicht und Erklärung der Symbole:

#align(center)[
  #image("../Bilder/thonny_explained.png", width: 80%)
]

Von links nach rechts, oben nach unten die einzelnen Symbole erklärt:

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.5em,
  [
    - Sie können wie im Word ein *neues Dokument erstellen*, um mit dem Programmieren starten.
    - Sie können auch ältere Dokumente *wieder öffnen*.
    - *Speichern* Sie Ihr Dokument ab, damit Sie Ihren Code später wieder ansehen können.
    - *Ausführen* bedeutet, dass Sie Ihren Code dem Computer als Befehl geben. Er wird dann versuchen, Ihre Befehle (die Code-Zeilen) auszuführen.
  ],
  [
    - *Debuggen* ist ein Tool, um den Ablauf Ihres Codes Schritt für Schritt nachzuvollziehen.
    - Sie können den Computer zwingen, die Ausführung zu *stoppen*, wenn er z.B. etwas unendlich oft wiederholt. So können Sie verhindern, dass evtl. Ihr Computer abstürzt.
    - Im *Editor* schreiben Sie Ihren Code.
    - In der *Ausgabe* sehen Sie das Resultat, nachdem der Computer Ihre Befehle ausgeführt hat.
  ]
)

#v(4mm)


#text(size: 1.2em, weight: "bold")[
  Das
  #text(size: 0.9em, font: "DejaVu Sans Mono", weight: "light")[turtle]
  Modul
]

#grid(
  columns: (0.85fr, 0.15fr),
  gutter: 1.5em,
  [
    Unsere erste Programmiererfahrung wird darin bestehen, einer kleinen Schildkröte Befehle zu erteilen, damit sie auf dem Bildschirm herumläuft.
  ],
  [
    #v(-8mm)
    #rotate(7deg)[
      #image("../Bilder/turtle.png")
    ]
  ]
)

Für das brauchen wir das #text(size: 0.8em, font: "DejaVu Sans Mono", weight: "light")[turtle] Modul. In diesem Modul befinden sich die Befehle für die Schildkröte. Sie können sich vorstellen, dass diese Befehle nicht "normaler" Python Code sind. Die meisten Informatiker möchten ja nicht den ganzen Tag irgendeine Schildkröte herumlaufen lassen. Darum sind diese Befehle in einem Paket (Modul) verpackt und wenn man sie brauchen möchte, muss man dieses Paket halt zuerst öffnen (importieren).\
In Thonny, falls Sie die Schildkröte herumkommandieren möchten, müssen Sie also am Anfang Ihres Codes jedes Mal die folgende Zeile hinschreiben:


#codly()
  ```py
  from turtle import *
  ```
Wobei:

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.3em,
  [
    - ```py from``` ist ein spezielles Wort in Python (Keyword), das man fürs Importieren von Modulen braucht.
    - mit ```py turtle``` geben wir den Namen des Moduls an, das wir importieren möchten.
  ],
  [
    - ```py import``` ist wieder ein spezielles Wort in Python, das wir für das Importieren brauchen.
    - der Stern ```py *``` signalisiert, dass wir von diesem Modul *jeden* Befehl auspacken möchten.
  ]
)

Man kann also die Codezeile wie folgt lesen: "Vom Paket ```py turtle```  importiere bitte alle Befehle, die da drin sind".

#v(2mm)

Es gibt einige Befehle, um die Schildkröte auf Ihrem Bildschirm herumlaufen zu lassen. Der Computer funktioniert aber nicht wie wir Menschen und würde es verstehen, wenn Sie einen kleinen Fehler in der Rechtschreibung machen.

#shoutout[
  Daher ist es beim Programmieren sehr wichtig, den Code *fehlerfrei* zu schreiben! Rechtschreibefehler kann Ihr Computer nicht erkennen.
]

Hier finden Sie eine Liste der gängigsten Turtle-Befehle.
#table(
  columns: (23%, 77%),
  inset: 5pt,
  stroke: 0.5pt + gray,

  [#text(size: 1.4em)[*Befehl*]], [#text(size:1.4em)[*Beschreibung*]],

  [```py forward(n)```],
  [Bewegt die Turtle um n Pixel vorwärts.],

  [```py back(n)```],
  [Bewegt die Turtle um n Pixel zurück.],

  [```py left(w)```],
  [Dreht die Turtle um w Grad nach links.],

  [```py right(w)```],
  [Dreht die Turtle um w Grad nach rechts.],

  [```py goto(x,y)```],
  [Die Turtle läuft direkt zum Punkt (x, y).],

  [```py shape("form")```],
  [
    Ändert das Aussehen der Turtle zu der angegebenen Form.

    Mögliche Formen sind:
    - ```py turtle```
    - ```py arrow```
    - ```py circle```
    - ```py square```
    - ```py triangle```
    - ```py classic```
  ],

  [```py penup()```],
  [Die Turtle hebt den Stift hoch und wird nach diesem Befehl nicht mehr zeichnen.],

  [```py pendown()```],
  [Die Turtle legt den Stift wieder runter und wird ab jetzt beim Bewegen wieder mitzeichnen.],

  [```py dot(d)```],
  [Zeichnet einen ausgefüllten Kreis mit Durchmesser d Pixel dort, wo sich die Turtle befindet.],

  [```py circle(r)```],
  [Die Turtle bewegt sich in einem Kreis mit Radius r nach links.],

  [```py circle(r,w)```],
  [Die Turtle bewegt sich in einem Kreisbogen mit dem Radius r und Winkel w nach links.],

  [```py pencolor("farbe")```],
  [
    Ändert die Farbe des Stiftes, mit der die Turtle zeichnet.

    Es gibt viele mögliche Farben, z. B.:
    - ```py coral```
    - ```py lime```
    - ```py plum```
    - weitere unter
      #link("https://trinket.io/docs/colors")[trinket.io/docs/colors]
  ],

  [```py pensize(d)```],
  [Setzt die Dicke der Linie, die von der Turtle gezeichnet wird.],

  [```py hideturtle()```],
  [Versteckt die Turtle.],

  [```py showturtle()```],
  [Zeigt die Turtle wieder.],

  [```py fillcolor("farbe")```],
  [Legt die Farbe fest, falls die Turtle etwas mit Farbe ausfüllen möchte.],

  [```py begin_fill()```],
  [Beginnt damit, eine gefüllte Form zu zeichnen.],

  [```py end_fill()```],
  [Beendet die Figur und füllt sie mit der vorher definierten Farbe aus.],

  [```py done()```],
  [Solle am Ende des Codes stehen, damit das Fenster nicht einfriert.],
)

#v(2mm)

Hier sehen Sie Beispiele, wie man diese Befehle in Thonny eingeben kann:

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.5em,
  [
    #codly()
    ```py
    from turtle import *
    forward(10)
    turn(90)
    forward(20)
    done()
    ```
  ],
  [
    #codly()
    ```py
    from turtle import *
    shape("square")
    forward(100)
    circle(50)
    done()
    ```
  ]
)

#v(2mm)

#shoutout[
  In Python sind leere Zeilen kein Problem. Das ändert den Code nicht. Wenn also beim obigen Beispiel zwischen Zeile 1 und 2 eine leere Zeile wäre, würde der Code trotzdem funktionieren. So können Sie Ihren Code übersichtlicher gestalten, falls Sie das wünschen.
]

In der Informatik wird manchmal für das, was wir bis jetzt Befehl genannt haben auch der Ausdruck *Funktion* oder *Methode* verwendet. Lassen Sie sich davon nicht verwirren:)

Achten Sie bei den folgenden Aufgaben immer auf die Form Ihrer Turtle, damit Ihre Lösung genau die gleiche ist, wie in der Aufgabe angegeben!

#v(2mm)

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.8em,
  [
    #exo(
      exercise: [
        #v(-2mm)
        Versuchen Sie, die Turtle anzuleiten, folgende Figur zu zeichnen. Achten Sie auf die Form der Turtle.

        #v(-3mm)
        #align(center)[
          #image("../Bilder/turtle_ex1.png", width: 60%) 
        ]
      ],
      solution: [
        #v(-2mm)
        #codly()
          ```py
          from turtle import *
          shape("turtle")
          forward(100)
          left(90)
          forward(50)
          right(90)
          forward(100)
          right(90)
          forward(50)
          left(90)
          forward(100)
          done()
          ```
      ]
    )
  ],
  [
    #exo(
      exercise: [
        #v(-2mm)
        Zeichnen Sie ein gleichschenklig-rechtwinkliges Dreieck mit der Turtle. Die zwei kurzen Seiten sind je ```py 100``` lang.

        #v(-4mm)
        #align(center)[
          #image("../Bilder/turtle_ex2.png", width: 30%)
        ]
      ],
      solution: [
        #v(-2mm)
        #codly()
          ```py
          from turtle import *
          shape("square")
          forward(141)
          right(135)
          forward(100)
          right(90)
          forward(100)
          done()
          ```
      ]
    )
  ]
)

#v(3mm)

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.8em,
  [
    #exo(
      exercise: [
        #v(-2mm)
        Verwenden Sie den Befehl ```py dot()```, um folgende Figur zu zeichnen.

        #align(center)[
          #image("../Bilder/turtle_ex3.png", width: 60%) 
        ]
      ],
      solution: [
        #v(-2mm)
        #codly()
        ```py
        from turtle import *
        shape("turtle")
        dot(20)
        left(45)
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
        done()
        ```
      ]
    )
  ],
  [
    #exo(
      exercise: [
        #v(-2mm)
        #grid(
          columns: (0.7fr, 0.3fr),
          gutter: 1.3em,
          [
            Ziel beim "Haus des Nikolaus" ist es, das besagte Haus in einem Linienzug aus genau 8 Strecken zu zeichnen, ohne dabei eine Strecke zweimal zu durchlaufen. Versuchen Sie es mit der Turtle.
          ],
          [
            #v(-4mm)
            #image("../Bilder/turtle_ex4.png")
          ]
        )
      ],
      solution: [
        #v(-2mm)
        #codly()
        ```py
        from turtle import *
        shape("turtle")
        left(90)
        forward(200)
        left(45)
        forward(141)
        left(90)
        forward(141)
        left(135)
        forward(200)
        right(135)
        forward(282)
        left(135)
        forward(200)
        left(135)
        forward(282)
        left(135)
        forward(200)
        done()
        ```
      ]
    )
  ]
)

#v(3mm)

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.8em,
  [
    #exo(
      exercise: [
        #v(-2mm)
        #grid(
          columns: (0.7fr, 0.3fr),
          gutter: 1.3em,
          [
            Verwenden Sie ```py circle(r,w)``` und ```py dot(d)``` so, damit Sie damit die folgende Figur zeichnen. 
          ],
          [
            #v(-7mm)
            #align(center)[
              #image("../Bilder/turtle_ex5.png", width:110%) 
            ]
          ]
        )
      ],
      solution: [
        #v(-2mm)
        #codly()
        ```py
        from turtle import *
        forward(100)
        right(90)
        forward(100)
        left(90)
        circle(100, 270)
        left(90)
        forward(90)
        penup()
        left(90)
        forward(50)
        pendown()
        dot(30)
        done()
        ```
      ]
    )
  ],
  [
    #exo(
      exercise: [
        #v(-2mm)
        #grid(
          columns: (0.7fr, 0.3fr),
          gutter: 1.3em,
          [
            Zeichnen Sie mit der Turtle ein regelmässiges Sechseck mit der Stiftbreite ```py 7``` und wählen Sie für jede Seite eine andere Farbe.
          ],
          [
            #v(-6mm)
            #image("../Bilder/turtle_ex6.png", width:110%)
          ]
        )
      ],
      solution: [
        #v(-2mm)
        #codly()
        ```py
        from turtle import *
        shape("turtle")
        pensize(7)
        pencolor("red")
        forward(100)
        right(60)
        pencolor("yellow")
        forward(100)
        right(60)
        pencolor("pink")
        forward(100)
        right(60)
        pencolor("blue")
        forward(100)
        right(60)
        pencolor("green")
        forward(100)
        right(60)
        pencolor("black")
        forward(100)
        right(60)
        done()
        ```
      ]
    )
  ]
)

#v(3mm)

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.8em,
  [
    #exo(
      exercise: [
        #v(-2mm)
        #grid(
          columns: (0.7fr, 0.3fr),
          gutter: 1em,
          [
            Zeichnen Sie die folgende Figur. Beachten Sie, dass am Ende die Turtle verschwinden soll. Die verschiedenen Farben dürfen sie selbst wählen.
          ],
          [
            #v(-4mm)
            #align(center)[
              #image("../Bilder/turtle_ex7.png") 
            ]
          ]
        )
      ],
      solution: [
        #v(-2mm)
        #codly()
        ```py
        from turtle import *
        dot(250)
        pencolor("red")
        dot(200)
        pencolor("blue")
        dot(150)
        pencolor("yellow")
        dot(100)
        pencolor("pink")
        dot(50)
        hideturtle()
        done()
        ```
      ]
    )
  ],
  [
    #exo(
      exercise: [
        #v(-2mm)
        #grid(
          columns: (0.8fr, 0.2fr),
          gutter: 1.3em,
          [
            Zeichnen Sie eine Ampel. Das schwarze, abgerundete Rechteck können Sie mit der Stiftbreite ```py 80``` zeichnen, die Kreisfläche mit ```py dot(40)```. Am Ende soll die Turtle verschwinden.
          ],
          [
            #v(-8mm)
            #image("../Bilder/turtle_ex8.png", width: 90%)
          ]
        )
      ],
      solution: [
        #v(-2mm)
        #codly()
        ```py
        from turtle import *
        pensize(80)
        left(90)
        forward(100)
        pencolor("red")
        dot(40)
        penup()
        back(50)
        pendown()
        pencolor("yellow")
        dot(40)
        penup()
        back(50)
        pendown()
        pencolor("green")
        dot(40)
        hideturtle()
        done()
        ```
      ]
    )
  ]
)

#v(3mm)

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.8em,
  [
    #exo(
      exercise: [
        #v(-2mm)
        #grid(
          columns: (0.7fr, 0.3fr),
          gutter: 1.3em,
          [
            Die Turtle soll das rechtsstehende Haus zeichnen. Am Ende soll die Turtle verschwinden. Die Farbe des Hauses lautet ```py sandy brown```.
          ],
          [
            #v(-8mm)
            #align(center)[
              #image("../Bilder/turtle_ex9.png") 
            ]
          ]
        )
      ],
      solution: [
        #v(-2mm)
        #codly()
        ```py
        from turtle import *
        pencolor("sandy brown")
        fillcolor("sandy brown")
        begin_fill()
        forward(141)
        left(90)
        forward(141)
        left(45)
        forward(100)
        left(90)
        forward(100)
        left(45)
        forward(141)
        end_fill()
        hideturtle()
        done()
        ```
      ]
    )
  ],
  [
    #exo(
      exercise: [
        #v(-2mm)
        #grid(
          columns: (0.7fr, 0.3fr),
          gutter: 1em,
          [
            Zeichnen 4 Fünfecke, die jeweils eine andere Farbe haben. Überlegen Sie sich gut, welchen Winkel Sie für das Fünfeck brauchen und welchen Winkel, um 4 davon so zu zeichnen.
          ],
          [
            #v(-2mm)
            #image("../Bilder/turtle_ex10.png", width: 105%)
          ]
        )
      ],
      solution: [
        #v(-2mm)
        #codly()
        ```py
        from turtle import *
        pencolor("blue")
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)

        left(90)
        pencolor("red")
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)

        left(90)
        pencolor("yellow")
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)

        left(90)
        pencolor("brown")
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)
        forward(100)
        left(72)

        hideturtle()
        done()
        ```
      ]
    )
  ]
)

#v(3mm)

#exo(
  exercise: [
    #v(-2mm)
    #grid(
      columns: (0.5fr, 0.5fr),
      gutter: 1em,
      [
        Versuchen Sie eine der Flaggen rechts zu zeichnen. Oder eine eigene ausprobieren:)
      ],
      [
        #v(-4mm)
        #grid(
          columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
          gutter: 1em,
          [
            #align(right)[
              #image("../Bilder/turtle_ex11_1.png", height: 1.5cm)
            ]
          ],
          [
            #image("../Bilder/turtle_ex11_2.png", height: 1.5cm)
          ],
          [
            #image("../Bilder/turtle_ex11_3.png", height: 1.5cm)
          ],
          [
            #image("../Bilder/turtle_ex11_4.png", height: 1.5cm)
          ]
        )
      ]
    )
    
  ],
  solution: [
    #v(-2mm)
    #codly()
    ```py
    from turtle import *
    # Schweizer Flagge
    speed(5)
    pencolor("red")
    fillcolor("red")

    # rotes Quadrat
    begin_fill()
    fd(100)
    lt(90)
    fd(100)
    lt(90)
    fd(100)
    lt(90)
    fd(100)
    lt(90)
    end_fill()

    # Verschiebung zum inneren Kreuz
    fd(12.5+25)
    lt(90)
    fd(12.5)
    rt(90)
    pencolor("white")
    fillcolor("white")

    # weisses Kreuz
    begin_fill()
    fd(25)
    lt(90)
    fd(25)
    rt(90)
    fd(25)
    lt(90)
    fd(25)
    lt(90)
    fd(25)
    rt(90)
    fd(25)
    lt(90)
    fd(25)
    lt(90)
    fd(25)
    rt(90)
    fd(25)
    lt(90)
    fd(25)
    lt(90)
    fd(25)
    rt(90)
    fd(25)
    end_fill()

    hideturtle()
    done()
    ```
  ]
)