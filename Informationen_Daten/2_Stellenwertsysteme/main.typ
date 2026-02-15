#import "../../config/conf.typ": conf

#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

#exo-setup(
  solution-mode: "end-section",
  exercise-label: "Aufgabe",
  solution-label: "Aufgabe",
  badge-style: "border-accent",
  badge-color: rgb(0, 64, 128),
  solution-color: maroon,
  solution-above: 1em,
  solution-below: 1em,
)

#set document(
  title: [
    Stellenwertsysteme
  ],
  author: "MeT",
)

#show: conf.with(
  thema: "Informationen und Daten",
)

#set heading(numbering: none)

 Für uns im Alltag kommen die meisten Zahlen natürlicherweise im 10er-System vor. Das ergibt insofern auch Sinn, da der Mensch 10 Finger hat. Wenn wir also zum Beispiel auf einem Tisch mehrere Äpfel liegen haben, können wir diese mit unseren Fingern zählen.

#grid(
  columns: (1.75fr, 1fr),
  gutter: 1.5em,
  [
    #image("Bilder/dezimal_zaehlen.png")
  ],
  [
    Text Blabla Blabla Blabla Blabla Blabla Blabla Blabla Blabla Blabla 
  ],
)