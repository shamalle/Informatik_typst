#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Nicht-Stellenwertsysteme

Bevor wir uns mit Stellenwertsystemen beschäftigen, wollen wir kurz einen Blick auf andere Zahlensysteme werfen, die nicht auf dem Stellenwertprinzip basieren. Betrachten wir dafür eine Uhr wie diejenige im nächsten Bild.

#grid(
  columns: (0.25fr, 1fr),
  gutter: 3em,
  [
    #rotate(-10deg)[
      #image("../Bilder/römische_uhr.png")
    ]
  ],
  [
    #exo(
      title: [],
      exercise: [Hello]
    )
  ]
)
