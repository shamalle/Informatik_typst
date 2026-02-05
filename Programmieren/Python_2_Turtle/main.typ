#import "../../config/conf.typ": conf

#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

#exo-setup(
  solution-mode: "end-section",
  exercise-label: "Aufgabe",
  solution-label: "Aufgabe",
  badge-style: "border-accent",
  badge-color: maroon,
  solution-color: olive,
  solution-above: 1em,
  solution-below: 1em,
)

#set document(
  title: [
    Einstieg in Python mit Turtlegrafik
  ],
  author: "GSM",
)

#show: conf.with(
  thema: "Programmieren",
)

#show heading.where(level: 2): it => [
  #block(it.body)
]

#grid(
  columns: (1fr, 1fr),
  gutter: 3em,
  [
    Für den Einstieg ins Programmieren verwenden wir *Turtlegrafik*.

    Das ist eine einfache Art, mit Python *Zeichnungen zu erstellen*.
    Dabei steuert man eine kleine Schildkröte (engl. turtle) auf dem Bildschirm mit Befehlen in Python.

    Die Schildkröte:
    - kann sich vorwärts und rückwärts bewegen,
    - kann sich drehen
    - und hinterlässt beim Bewegen eine Linie.

    #v(2mm)

    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 1em,
      [
        #image("Bilder/turtle_example_1.png")
      ],
      [
        #image("Bilder/turtle_example_2.png")
      ],
      [
        #image("Bilder/turtle_example_3.png")
      ],
    )
  ],
  [
    #image("Bilder/webtigerpython_turtle_gui.png")

    #v(5mm)

    #stickybox(rotation: 1deg)[
      #set text(size: 8pt)

      Turtlegrafik ist *keine eigene Programmiersprache*, sondern ein sogenanntes *Modul* für Python.

      Ein Modul ist eine für einen bestimmten Zweck gedachte *Erweiterung* für Python, d.h. eine Sammlung von *zusätzlichen Befehlen*.

      Python selbst kann schon sehr viel und mit Modulen kann man Python noch weiter ausbauen.
    ]
  ],
)

#include "Kapitel/turtle_bewegen.typ"

#pagebreak()

#include "Kapitel/farben_verwenden.typ"

#pagebreak()

#include "Kapitel/wiederholungen.typ"

#v(1cm)

#block[
  #set text(size: 13pt)
  #set par(
    leading: .75em,
    spacing: 1.1em,
  )
  #outline-colorbox(
    title: "📌 Auftrag",
    radius: 2pt,
    width: auto,
    color: "gold",
  )[
    *Überlegen* Sie sich eine *kleine Zeichung*, die Sie mit der Schildkröte programmieren möchten. Dies kann ein Buchstabe, ein Symbol, eine Flagge oder irgendeine kleine kreative Form sein.

    - *Programmieren* Sie die Zeichnung in WebTigerPython.
    - Erstellen Sie einen *Screenshot* von der fertigen Zeichnung. 
    - *Senden* Sie mir den *Screenshot* und Ihren *Code* via *Teams*.
  ]
]


#pagebreak()

#set heading(numbering: none)

#include "Kapitel/figuren_fuellen.typ"

// ========================================

#pagebreak()

#set page(columns: 4)

= Lösungen

#set text(size: 7pt)

#exo-setup(
  label-font-size: 7pt,
  badge-style: "underline"
)

#codly(zebra-fill: luma(240), display-name: false)
#exo-print-solutions(title: none)
