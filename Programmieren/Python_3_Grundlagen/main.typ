#import "../../config/conf.typ": conf

#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

#exo-setup(
  solution-mode: "end-section",
  exercise-label: "Aufgabe",
  solution-label: "Lösung",
  correction-label: "Hinweise",
  badge-style: "border-accent",
  badge-color: maroon,
  solution-color: olive,
)

#set document(
  title: [
    Python Grundlagen
  ],
  author: "GSM",
)

#show: conf.with(
  thema: "Programmieren",
)

#include "Kapitel/grundelemente_einer_programmiersprache.typ"

#v(5mm)
#line(length: 100%)
#v(2mm)

#{
  set par(leading: 1em)
  outline()
}

#include "Kapitel/variablen_und_zuweisungen.typ"

#pagebreak()

#include "Kapitel/eingabe_ausgabe.typ"

#pagebreak()

#include "Kapitel/datentypen.typ"

#pagebreak()

#include "Kapitel/operatoren.typ"

#pagebreak()

#include "Kapitel/kontrollstrukturen.typ"

#pagebreak()

#include "Kapitel/funktionen.typ"

// ========================================

#pagebreak()

#set heading(numbering: none)
#set page(columns: 2)

= Lösungen

#codly(zebra-fill: luma(240))
#exo-print-solutions(title: none) // Print collected solutions
