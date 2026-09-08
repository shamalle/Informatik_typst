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
  author: "TaT",
)

#show: conf.with(
  thema: "Sicherheit",
)

#include "Kapitel/grundlagen.typ"
#pagebreak()
#include "Kapitel/historische_verschluesselungen.typ"
#pagebreak()
#include "Kapitel/skytale.typ"
#pagebreak()
#include "Kapitel/caesar.typ"
#pagebreak()
#include "Kapitel/amas.typ"
#pagebreak()
#include "Kapitel/antike_recap.typ"
#pagebreak()
#include "Kapitel/haeufigkeitsanalyse.typ"
#pagebreak()
#set heading(numbering: none)
= Platz für Ihre Notizen
#pagebreak()
#set heading(numbering:"1.")
#include "Kapitel/vigenere.typ"
#pagebreak()
#include "Kapitel/sym_verschluesselung.typ"
#pagebreak()
#include "Kapitel/asym_verschluesselung.typ"


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
#set page(columns: 2)

= Lösungen

#codly(zebra-fill: luma(240))
#exo-print-solutions(title: none) // Print collected solutions


