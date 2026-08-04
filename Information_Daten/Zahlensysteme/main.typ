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
    Zahlensysteme
    ],
  author: "TaT",
)

#show: conf.with(
  thema: "Information und Daten",
)

#include "Kapitel/nicht_stellenwertsysteme.typ"

#include "Kapitel/grundlagen_stellenwertsysteme.typ"

#include "Kapitel/binaersystem.typ"

#include "Kapitel/hexadezimalsystem.typ"



//#v(5mm)
//#line(length: 100%)
//#v(2mm)

//#{
//  set par(leading: 1em)
//  outline()
//}

// #include "Kapitel/grundlagen.typ"

#pagebreak()

// ========================================

#pagebreak()

#set heading(numbering: none)
#set page(columns: 2)

= Lösungen

#codly(zebra-fill: luma(240))
#exo-print-solutions(title: none) // Print collected solutions
