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
    Kryptologie
  ],
  author: "MeT",
)

#show: conf.with(
  thema: "Sicherheit",
)

#include "Kapitel/grundlagen.typ"
#include "Kapitel/historische_verschluesselungen.typ"
#include "Kapitel/skytale.typ"

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
