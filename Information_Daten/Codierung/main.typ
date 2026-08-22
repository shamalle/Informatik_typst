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
    3 | Codierung
    ],
  author: "TaT",
)

#show: conf.with(
  thema: "Information und Daten",
)

#grid(
  columns: (1fr, 0.27fr),
  gutter: 1em,
  [
    Wenn wir ein Foto anschauen, sehen wir ein Bild. Wenn wir ein Lied hören, hören wir Musik. Ein Computer nimmt diese Dinge jedoch nicht so wahr wie wir. Er hat ja keine Augen oder Ohren. Für ihn besteht ein Foto, ein Lied oder ein Video aus einer langen Folge von 0 und 1, weil das ist ja seine Sprache. Jede einzelne 0 oder 1 ist dabei ein *Bit*. 

    Damit wir aber nicht solch für unsere Augen nichtsaussagenden Ansammlungen von 0 und 1 anschauen müssen, übersetzt der Computer diese binären Anordnungen in Pixel oder Buchstaben. Diese Übersetzung zwischen menschenverständlichem und computerverständlichem bezeichnet man als *Codierung* und *Decodierung*.
  ],
  [
    #v(-2mm)
    #image("Bilder/datenmenge_binary.png")
  ]
)

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
