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
    Einführung mit Turtle
  ],
  author: "TaT",
)

#show: conf.with(
  thema: "Programmieren",
)

#include "Kapitel/programmieren.typ"
#pagebreak()
#include "Kapitel/turtle.typ"


//#v(5mm)
//#line(length: 100%)
//#v(2mm)

//#{
//  set par(leading: 1em)
//  outline()
//}

// #include "Kapitel/grundlagen.typ"

// ========================================

#set heading(numbering: none)
#set page(columns: 4)

= Lösungen
#v(-5mm)

#set text(size: 7pt)

#exo-setup(
  label-font-size: 7pt,
  badge-style: "underline"
)
#codly(zebra-fill: luma(240))
#exo-print-solutions(title: none) // Print collected solutions


