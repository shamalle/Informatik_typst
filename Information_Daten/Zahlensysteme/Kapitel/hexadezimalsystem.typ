#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Hexadezimalsystem

#grid(
  columns: (1fr, 0.4fr),
  gutter: 1em,
  [
    Das Binärsystem eignet sich hervorragend für Computer, für Menschen werden lange Binärzahlen jedoch schnell unübersichtlich. Deshalb verwendet man in der Informatik häufig das *Hexadezimalsystem*. Es ist ein Stellenwertsystem zur Basis 16 und ermöglicht eine deutlich kompaktere Darstellung von Binärzahlen.
  ],
  [
    #v(-8mm)
    #image("../Bilder/hexadecimal_spongebob.jpg")
  ]
)

Das Konzept bleibt das gleiche wie bei den Stellenwertsystemen, die wir vorher gesehen haben. Also anstatt dass die einzelnen Stellen ein Vielfaches von 10 oder 2 sind, sind sie es jetzt von 16. Der grosse Vorteil hierbei ist, dass 16 ja auch ein Vielfaches von 2 ist ($16=2^4$) was uns das Umrechnen zwischen Binär- und Hexadezimalsystem erleichtern wird.

#outline-colorbox(
    title: "Aufbau des Hexadezimalsystems",
    color: "blue",
    radius: 3pt,
    width: auto,
    )[
      Im Gegensatz zu vorher brauchen wir jetzt nicht 2 oder 10 Ziffern, sondern 16 Ziffern. 0 bis 9 sind erst 10 Ziffern, das heisst, wir nehmen noch die Buchstaben A-F dazu, welche die Werte von 10-15 annehmen. Hexadezimale Zahlen sind also wie folgt aufgebaut:

      - $121_16 = 1 dot 16^2 + 2 dot 16^1 + 1 dot 16^0 = 1 dot 256 + 2 dot 16 + 1 dot 1 = 289_10$ #h(2mm) $(=0001\'0010\'0001_2)$

      - $3F_16 = 3 dot 16^1 + 15 dot 16^0 = 3 dot 16 + 15 = 63_10$ #h(2mm) $(=0011\'1111_2)$

      - $1010_16 = 1 dot 16^3 + 0 dot 16^2 + 1 dot 16^1 + 0 dot 16^0 = 4096 + 16 = 4112_10$ #h(2mm) $(=0001\'0000\'0001\'0000_2)$ 
  ]



#grid(
  columns: (0.5fr, 1fr),
  gutter: 1.5em,
  [
    #image("../Bilder/stellenwertsysteme_anzahl_ziffern.png")
  ], 
  [
    
  ]
)