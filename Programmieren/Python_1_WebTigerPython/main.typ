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


#grid(
  columns: (1fr, 1fr),
  gutter: 3em,
  [
    = Was ist Python?

    *Python* ist eine Programmiersprache.
    Mit ihr kann man dem Computer Schritt für Schritt sagen, *was er tun soll*.

    Python wird sehr häufig verwendet, zum Beispiel:

    - in der Wissenschaft
    - in der Datenanalyse
    - in der Webentwicklung
    - für kleine Programme und grosse Anwendungen

    Python ist besonders geeignet für Einsteigerinnen und Einsteiger, weil:

    - die Sprache gut lesbar ist,
    - sie der normalen Alltagssprache ähnelt,
    - man schnell erste Resultate sieht.

    = Was ist WebTigerPython?

    *WebTigerPython* ist eine *webbasierte Umgebung*, mit der Sie *direkt im Browser* mit Python arbeiten können.

    Das bedeutet:

    - Sie müssen *nichts installieren*
    - Sie brauchen *nur einen Webbrowser*
    - Sie können *sofort* mit Python arbeiten

    WebTigerPython wurde speziell für den *Unterricht* entwickelt und eignet sich sehr gut für den Einstieg.

    = Wie funktioniert WebTigerPython?

    + *Öffnen Sie im Browser die Webseite*: \
      #link("https://webtigerpython.ethz.ch")

    + Geben Sie im *Editorfenster* folgend zwei Codezeilen ein (ohne Zeilennummern) oder klicken auf den Link:
      #codly(footer: [#align(right)[#link("https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJSWOAAgF5aNsBXMgCgB0wA5GiWnAwBzOACM4EbgEpOEbACcMHAGbcAElAA2WgPa0Q0eAF8ZYYwF0gA")[🔗 *Programm öffnen*]]])
      ```py
      name = input("Namen eingeben")
      print(f"Hallo {name}")
      ```

    + *Programm ausführen*: \
      Mit einem Klick auf den *Ausführen-Knopf* #box(height: 9pt, image("Bilder/webtigerpython_ausfuehren.png")) oben wird das Programm ausgeführt.
      - Der Computer liest den Code *von oben nach unten*
      - Jede Zeile wird *nacheinander* verarbeitet
      - Das Ergebnis erscheint im *Ausgabefenster*

    Wir werden uns schrittweise mit den Grundlagen von Python vertraut machen.

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
    #v(12pt)
    #align(center)[#image("Bilder/python_logo.png", width: 75%)]

    #block([
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
        dy: 35pt,
        stickybox(
          rotation: -8deg,
          width: 4.5cm,
        )[
          #text(size: 8pt)[
            Wir werden Python Code immer in diesen *Boxen* darstellen. Man erkennt sie am *grünen Label* oben mit dem 🐍 Icon.

            Die Zahlen am linken Rand geben die *Zeilennummern* an und helfen uns, den Überblick zu behalten (diese müssen nicht mit kopiert oder abgeschrieben werden).
          ]
        ],
      )
    ])

    #image("Bilder/webtigerpython_logo.png", width: 30%)
    #image("Bilder/webtigerpython_gui.png")

    Die Benutzeroberfläche von WebTigerPython ist einfach. Die Grösse der drei Fenster kann man mit der Maus anpassen. Neben den üblichen *Ausführen-* #box(height: 9pt, image("Bilder/webtigerpython_ausfuehren.png")) und *Stoppen-Knöpfen* #box(height: 9pt, image("Bilder/webtigerpython_stopp.png")) gibt es folgende Funktionen:

    #table(
      columns: (auto, auto),
      stroke: none,
      [#image("Bilder/webtigerpython_teilen.png", width: 6mm)],
      [*Teilen*: Das Programm im Editorfenster kann mit einem Link anderen Benutzern zur Verfügung gestellt werden.],
      [#image("Bilder/webtigerpython_menu.png", width: 6mm)],
      [*Menü*: Hier finden sich weitere nützlich Funktionen: "Programm speichern", "Programm öffnen", andere Sprache einstellen usw.],
      [#image("Bilder/webtigerpython_doku.png", width: 6mm)],
      [*Befehlsübersicht* (am linken Rand des Editorfensters) Diese ist hilfreich um Befehle zu finden und zu verstehen.],
    )

    #stickybox(rotation: 1deg)[
      #set text(size: 8pt)
      🧠 Ein *Computer denkt nicht selbst* und versteht keine Bedeutungen. Er führt nur *exakte Anweisungen* aus.

      Schon kleine Änderungen im Code können ein anderes Resultat ergeben.
      Deshalb ist genaues Arbeiten wichtig – Fehler gehören aber ganz normal zum Lernen dazu.
    ]
  ],
)
