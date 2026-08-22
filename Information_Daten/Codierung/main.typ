#import "../../config/conf.typ": conf

#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

#exo-setup(
  solution-mode: "end-section",
  exercise-label: "Aufgabe",
  solution-label: "Lösung",
  correction-label: "Hinweise",
  badge-style: "border-accent",
  badge-color: blue,
  solution-color: olive,
)

#set document(
  title: [
    4 | Codierung
    ],
  author: "TaT",
)

#show: conf.with(
  thema: "Information und Daten",
)

Wir haben ja schon mal die Begriffe "Daten", "Information" und "Code" gehört. Auch haben wir gelernt, dass der Computer Texte und Bilder anders sieht als wir. Er sieht per se nicht Buchstaben oder farbige Pixel. Darunter liegen grosse Mengen an binären Zahlen, die dann von der Maschine übersetzt werden, dass wir am Bildschirm eben uns nicht mehr um die Zahlen kümmern müssen, sondern Bilder, Videos oder Texte.

#include "Kapitel/textcodierung.typ"

#include "Kapitel/bildercodierung.typ"



//#v(5mm)
//#line(length: 100%)
//#v(2mm)

//#{
//  set par(leading: 1em)
//  outline()
//}

// #include "Kapitel/grundlagen.typ"

// ========================================

#pagebreak()

#set heading(numbering: none)
#set page(columns: 2)

= Lösungen

#v(-5mm)

#codly(zebra-fill: luma(240))
#exo-print-solutions(title: none) // Print collected solutions
