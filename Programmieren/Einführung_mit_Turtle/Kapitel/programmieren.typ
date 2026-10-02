#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup
#import "../../../config/conf.typ": shoutout

= Was ist "Programmieren"?

Ein Computer ist zunächst einfach mal eine Maschine, die wahnsinnig schnell arbeiten (rechnen) kann. Damit Sie ein Spiel spielen können, muss irgend jemand dem Computer also sagen, was er denn genau zu rechnen habe. Ihr Hund versteht Sie nicht, wenn Sie mit ihm sprechen wie mit einem Kollegen - genauso versteht der Computer Sie nicht, wenn Sie ihm Ihre Wünsche einfach in normalem Text schreiben. Es braucht in beiden Fällen eine *formalisierte Sprache*.

Wir geben dann Kommandos - sowohl dem Hund (Sitz!) als auch dem Computer (forward()).

#v(2mm)

#shoutout[
  Dem Computer beibringen, was die einzelnen Kommandos bedeuten sollen und danach die richtigen Kommandos in der richtigen Reihenfolge hinschreiben - das nennt man *programmieren*.
]

#v(3mm)

#grid(
  columns: (0.65fr, 0.35fr),
  gutter: 1.2em,
  [
    Diese Kommandos sind also in einer Sprache geschrieben, so wie wir auch z.B. Deutsch, Französisch, Mandarin oder Spanisch sprechen. Und wie es auf der Welt viele verschiedene Sprachen gibt, gibt es auch in der Welt der Computer viele Programmiersprachen (siehe @programming-languages).
    
    Wir schauen uns in diesem Kurs die Programmiersprache *Python* vertieft an, da sie einfach für Einsteiger ist und viele Anwendungsgebiete hat. Doch worin unterscheiden sich die verschiedenen Sprachen und warum gibt es so viele?

    
  ],
  [
    #figure(
      box(
        stroke: 0.3pt,
        inset: 2pt,
        image("../Bilder/programmiersprachen_horizontal.png")
      ),
      caption: "Logos von Programmiersprachen"
    ) <programming-languages>
  ]
)

#v(1mm)

#shoutout[
  Programmiersprachen unterscheiden sich ähnlich wie unsere gesprochenen Sprachen voneinander: Es gibt verschiedene *Regeln* (Grammatik, Rechtschreibung, Aufbau eines Satzes, ...). Es gibt so viele Sprachen, weil sich je nach Situation, was man programmieren möchte, eine besser eignet als die andere.
]

#v(1mm)
    
Zum Beispiel wenn man Programme für Android-Geräte entwickelt, braucht man oft die Programmiersprache "Kotlin". Wenn man hingegen mehrheitlich statistische Berechnungen machen möchte, braucht man eher die Sprache "R".

#v(4mm)

#grid(
  columns: (0.2fr, 0.8fr),
  gutter: 1.2em,
  [
    #image("../Bilder/conversation_human_robot.png")
  ],
  [
    #align(horizon)[
      Programmieren bedeutet also, einer Maschine Befehle zu ersteilen und sie damit zu steuern. Wie wir aber auch im letzten Thema gelernt haben, speichert der Computer alle Informationen in Form von 0 und 1. Alles (egal ob Texte, Bilder oder Musik) wird im Inneren des Computers als eine lange Folge von 0 und 1 dargestellt.Doch für uns Menschen wäre es mühsam, mit einem Computer direkt in dieser Sprache aus lauter 0 und 1 zu sprechen. 
    ]
  ]
)
GTA VI ist ein Computergame. Das heisst, es wurde programmiert. Können Sie sich vorstellen, die Entwickler:Innen müssen jedes kleine Detail als eine Folge von 0 und 1 schreiben? Das wäre unglaublich schwierig!\
Darum wurden Programmiersprachen entwickelt. Sie dienen als *Übersetzungsschicht* zwischen Mensch und Maschine. Wir können damit Anweisungen in einer Sprache formulieren, die für uns verständlich ist - und der Computer kann sie dann Schritt für Schritt in seine „Sprache“ aus 0 und 1 umsetzen.

#shoutout[
  Damit das funktioniert, brauchen wir eine *Entwicklungsumgebung*. Das ist ein Programm, das uns beim Schreiben, Testen und Ausführen von Code hilft. So können wir dem Computer Befehle geben, ohne uns um die komplizierten Binärcodes kümmern zu müssen.
]

#pagebreak()

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
    - #text(size: 0.9em, font: "DejaVu Sans Mono", weight: "light")[from] ist ein spezielles Wort in Python (Keyword), das man fürs Importieren von Modulen braucht.
    - mit #text(size: 0.9em, font: "DejaVu Sans Mono", weight: "light")[turtle] geben wir den Namen des Moduls an, das wir importieren möchten.
  ],
  [
    - #text(size: 0.9em, font: "DejaVu Sans Mono", weight: "light")[import] ist wieder ein spezielles Wort in Python, das wir für das Importieren brauchen.
    - der Stern #text(size: 0.9em, font: "DejaVu Sans Mono", weight: "light")[\*] signalisiert, dass wir von diesem Modul *jeden* Befehl auspacken möchten.
  ]
)

Man kann also die Codezeile wie folgt lesen: "Vom Paket #text(size: 0.9em, font: "DejaVu Sans Mono", weight: "light")[turtle] importiere bitte alle Befehle, die da drin sind".

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

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[forward(n)]],
  [Bewegt die Turtle um n Pixel vorwärts.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[back(n)]],
  [Bewegt die Turtle um n Pixel zurück.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[left(w)]],
  [Dreht die Turtle um w Grad nach links.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[right(w)]],
  [Dreht die Turtle um w Grad nach rechts.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[goto(x, y)]],
  [Die Turtle läuft direkt zum Punkt (x, y).],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[shape("form")]],
  [
    Ändert das Aussehen der Turtle zu der angegebenen Form.

    Mögliche Formen sind:
    - `turtle`
    - `arrow`
    - `circle`
    - `square`
    - `triangle`
    - `classic`
  ],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[penup()]],
  [Die Turtle hebt den Stift hoch und wird nach diesem Befehl nicht mehr zeichnen.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[pendown()]],
  [Die Turtle legt den Stift wieder runter und wird ab jetzt beim Bewegen wieder mitzeichnen.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[dot(d)]],
  [Zeichnet einen ausgefüllten Kreis mit Durchmesser d Pixel dort, wo sich die Turtle befindet.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[circle(r)]],
  [Die Turtle bewegt sich in einem Kreis mit Radius r nach links.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[circle(r, w)]],
  [Die Turtle bewegt sich in einem Kreisbogen mit dem Radius r und Winkel w nach links.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[pencolor("farbe")]],
  [
    Ändert die Farbe des Stiftes, mit der die Turtle zeichnet.

    Es gibt viele mögliche Farben, z. B.:
    - `coral`
    - `lime`
    - `plum`
    - weitere unter
      #link("https://trinket.io/docs/colors")[trinket.io/docs/colors]
  ],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[pensize(d)]],
  [Setzt die Dicke der Linie, die von der Turtle gezeichnet wird.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[hideturtle()]],
  [Versteckt die Turtle.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[showturtle()]],
  [Zeigt die Turtle wieder.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[fillcolor("farbe")]],
  [Legt die Farbe fest, falls die Turtle etwas mit Farbe ausfüllen möchte.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[begin_fill()]],
  [Beginnt damit, eine gefüllte Form zu zeichnen.],

  [#text(font: "DejaVu Sans Mono", size: 0.9em)[end_fill()]],
  [Beendet die Figur und füllt sie mit der vorher definierten Farbe aus.],
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
    ```
  ],
  [
    #codly()
    ```py
    from turtle import *
    shape("square")
    forward(100)
    circle(50)
    ```
  ]
)

Das Wichtigste beim Programmieren ist, sich einfach getrauen, den Code zu schreiben. Wenn er Fehler hat oder halt nicht das macht, was Sie wollen, ist das halb so schlimm. Das kann man immer verbessern. Hauptsache Sie fangen einfach mal an, Code zu schreiben.

#v(4mm)

#shoutout[
  In der Informatik wird manchmal für das, was wir bis jetzt Befehl genannt haben auch der Ausdruck *Funktion* oder *Methode* verwendet. Lassen Sie sich davon nicht verwirren:)
]