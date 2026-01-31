#import "../../config/conf.typ": conf

#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox


#set document(
  title: [
    Start in Python mit WebTigerPython
  ],
  author: "GSM",
)

#show: conf.with(
  thema: "Programmieren",
)

#set heading(numbering: none)

= Was ist Python?

#grid(
  columns: (1fr, 1fr),
  gutter: 3em,
  [
    *Python* ist eine Programmiersprache.
    Mit ihr kann man dem Computer Schritt für Schritt sagen, *was er tun soll*.

    Python wird sehr häufig verwendet, zum Beispiel:

    - in der Informatik
    - in der Wissenschaft
    - in der Datenanalyse
    - in der Webentwicklung
    - für kleine Programme und grosse Anwendungen

    Python ist besonders geeignet für Einsteigerinnen und Einsteiger, weil:

    - die Sprache gut lesbar ist,
    - sie der normalen Alltagssprache ähnelt,
    - man schnell erste Resultate sieht.
  ],
  [
    #image("Bilder/python_logo.png")

    #codly(header: [*Python Code Beispiel*])
    ```py
    def fib(n):
      a, b = 0, 1
      while a < n:
        print(a, end=' ')
        a, b = b, a+b
      print()
    fib(1000)
    ```

    #place(
      bottom,
      dx: 135pt,
      dy: 20pt,
      stickybox(
        rotation: -8deg,
        width: 4cm,
      )[
        #text(size: 7pt)[
          #set par(justify: true)
          Wir werden Python Code immer in diesen *Boxen* darstellen. Man erkennt sie am *grünen Label* oben mit dem 🐍 Icon.

          Die Zahlen am linken Rand geben die *Zeilennummern* an und helfen uns, den Überblick zu behalten (diese müssen nicht mit kopiert werden).
        ]
      ],
    )
  ],
)

= Was ist WebTigerPython?

#grid(
  columns: (2fr, 1fr),
  gutter: 3em,
  [
    *WebTigerPython* ist eine *webbasierte Umgebung*, mit der Sie Python *direkt im Browser* ausprobieren können.

    Das bedeutet:

    - Sie müssen *nichts installieren*
    - Sie brauchen *nur einen Webbrowser*
    - Sie können sofort mit Python arbeiten

    WebTigerPython wurde speziell für den *Unterricht* entwickelt und eignet sich sehr gut für den Einstieg.
  ],
  [
    #align(center)[
      #image("Bilder/webtigerpython_logo.png", width: 30%)
      #text(font: "Arial", size: 15pt)[
        WebTigerPython
      ]
    ]
  ],
)

= Wie funktioniert WebTigerPython?

#grid(
  columns: (1fr, 1fr),
  gutter: 3em,
  [
    + *Öffnen Sie im Browser die Webseite*: \
      #link("https://webtigerpython.ethz.ch")

    + Geben Sie im *Editorfenster* folgenden Code ein:
      #codly(footer: [_Das sind die Anweisungen für den Computer_])
      ```py
      x = 5
      print(x)
      ```

    + *Programm ausführen*: \
      Mit einem Klick auf *Ausführen-Knopf* #box(height: 9pt, image("Bilder/webtigerpython_ausfuehren.png")) oben wird das Programm ausgeführt.
      - Der Computer liest den Code von oben nach unten
      - Jede Zeile wird nacheinander verarbeitet
      - Das Ergebnis erscheint im *Ausgabefenster*
  ],
  [
    #image("Bilder/webtigerpython_gui.png")
  ],
)

#v(8pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 3em,
  [
    #outline-colorbox(
      title: "Wichtig für den Start",
      color: "green",
      width: auto,
      radius: 2pt,
      centering: true,
    )[
      - Programmieren lernt man *durch Ausprobieren*
      - Fehler sind *erwartet und erlaubt*
      - Es geht nicht darum, alles sofort zu verstehen
      - Ziel ist es, Schritt für Schritt sicherer zu werden
    ]
  ],
  [
    #stickybox(rotation: 5deg)[
      Ein *Computer denkt nicht selbst* und versteht keine Bedeutungen. Er führt nur *exakte Anweisungen* aus.

      Schon kleine Änderungen im Code können ein anderes Resultat ergeben.
      Deshalb ist genaues Arbeiten wichtig – Fehler gehören aber ganz normal zum Lernen dazu.
    ],
  ],
)

#colorbox(
  title: "Aufgaben",
  radius: 2pt,
  width: auto,
)[
  #grid(
    columns: (3fr, 1fr),
    gutter: 3em,
    [
      Wir werden uns als Einstieg mit dem Lernprogramm *Turtlegrafik* beschäftigen.

      + Lesen Sie zuerst den Abschnitt zu *WebTigerPython* auf #link("https://www.python-online.ch/index.php?inhalt_links=home/navigation.inc.php&inhalt_mitte=home/webtp.inc.php")[dieser Seite] durch und machen Sie sich mit der Bedienung vertraut.

      + Nun werden wir die ersten Python Programme schreiben. Arbeiten Sie dazu die Seite #link("https://www.python-online.ch/index.php?inhalt_links=turtle/navigation.inc.php&inhalt_mitte=turtle/bewegen.inc.php")[*Turtle bewegen*] durch. Probieren Sie das *Musterbeispiel* aus und lösen Sie die Aufgaben im Abschnitt *Zum selbst Lösen*.

        #v(2pt)

        #stickybox(rotation: -1deg)[
          *Tipp*

          Speichern Sie Ihre Lösungen jeweils als Python-Dateien mit sinnvollen Namen auf Ihrem Computer ab, damit Sie sie wieder finden.

          Alternativ können sie den Code von Ihren Lösungen ins OneNote kopieren.

          Beginnen Sie für jede Aufgabe wieder mit einem leeren Editor-Fenster.
        ]

        #v(5pt)

      + Nachdem wir nun wissen, wie wir den Turtle bewegen um Figuren zu malen, wollen wir uns mit den Farben beschäftigen. Arbeiten Sie dazu die Seite #link("https://www.python-online.ch/index.php?inhalt_links=turtle/navigation.inc.php&inhalt_mitte=turtle/farben.inc.php")[*Farben verwenden*] inklusive *Musterbeispiel* und Aufgaben *Zum selbst Lösen* durch.

      + Nun fehlt uns noch ein hilfreiches Element: die #link("https://www.python-online.ch/index.php?inhalt_links=turtle/navigation.inc.php&inhalt_mitte=turtle/wiederholung.inc.php")[*Wiederholungen*]. Arbeiten Sie auch diese Seite inklusive *Musterbeispiel* und Aufgaben *Zum selbst Lösen* durch.

      + Überlegen Sie sich eine *kleine Zeichung*, die Sie mit dem Turtle programmieren möchten. Dies kann ein Buchstabe, ein Symbol oder eine kleine kreative Form sein.
        - *Implementieren* Sie das Programm in WebTigerPython.
        - Erstellen Sie einen *Screenshot* von der fertigen Zeichnung und senden diesen zusammen *mit Ihrem Code* via *Teams* an mich.
    ],
    [
      #image("Bilder/turtle_example.png")
    ],
  )
]
