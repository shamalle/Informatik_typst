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

Man sieht an den Beispielen sehr schnell, wie viel kompakter das Hexadezimalsystem grosse Zahlen schreiben kann als das Binärsystem. Und an den Umrechnungen von hexadezimalen Zahlen ins Dezimalsystem ist an den Beispielen oben auch schnell ersichtlich, dass das Konzept das gleiche bleibt. Schauen wir uns aber jetzt andere Umrechnungen zwischen den Systemen an:


#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #outline-colorbox(
      title: "Hexadezimal → Binär",
      color: "purple",
      radius: 3pt,
      width: auto,
      )[
        Die Umrechnung ist besonders einfach: Jede Hexadezimalziffer entspricht genau vier Binärziffern. Wir übersetzen deshalb jede Hexadezimalziffer einzeln in ihr 4er-Binär-Päckchen.

        #align(center)[
          #image("../Bilder/hexadecimal_to_binary.png")
        ]

        Warum funktioniert das? Das Hexadezimalsystem hat die Basis 16 und es gilt: $16 = 2^4$. Darum kann jede Hexadezimalziffer die Werte von 0-15 darstellen: genau die Werte, die mit vier binären Ziffern möglich sind.


      ]
  ],
  [
    #outline-colorbox(
      title: "Binär → Hexadezimal",
      color: "purple",
      radius: 3pt,
      width: auto,
      )[
        Auch diese Umrechnung ist nicht umständlich: Wir teilen die Binärzahl von rechts nach links in 4er-Päckchen auf und übersetzen jedes Päckchen in eine Hexadezimalziffer.

        #align(center)[
          #image("../Bilder/binary_to_hexadecimal.png", width: 70%)
        ]

        Falls man noch nicht so geübt darin ist, kann man sich schnell als Zwischenschritt die Dezimalzahl hinschreiben, wie oben im Beispiel abgebildet.
      ]
  ]
)

Damit Sie das ganze Umrechnen etwas üben können, haben Sie hier ein paar Aufgaben.

#v(3mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #stickybox(rotation: -3deg)[
      #align(center)[
        *Bemerkung 🔍*

        #v(-2pt)

        In der Informatik nennt man eine einzelne binäre Ziffer ein *Bit*. 8 Bits ergeben ein *Byte*.

        #v(-4pt)

        #table(
          columns: (auto, auto, auto),
          column-gutter: 10pt,
          align: (left, left, left),
          stroke: none,
          [*Beispiele:*], [101], [→ 3 Bit],
          [], [1011'0011], [→ 1 Byte],
        )
      ]
    ]
  ],
  [
    #exo(
      title: [],
      exercise: [
        Schreiben Sie die folgenden Binärzahlen in ihre hexadezimale Form und umgekehrt:
        #set enum(numbering: "a.")
          + $0000\'1001_2$
          + $1011\'0000_2$
          + $7F_16$
          + $A D_16$
      ],
      solution: [a) $09$, b) $B 0$, c) $0111\'1111$ d) $1010\'1101$])
  ]
)

#v(3mm)

Jetzt haben Sie einiges über Zahlenssysteme gelernt. Neues über Zahlensysteme kommt in diesem Kapitel nicht mehr dazu. Für weitere Übungsaufgaben für das Umrechnen zwischen den verschiedenen Zahlensystemen gibt es ein separates Arbeitsblatt. Das können Sie gerne zur Vorbereitung für die Prüfung nutzen.

#line(length: 100%)


/*
#grid(
  columns: (0.5fr, 1fr),
  gutter: 1.5em,
  [
    #image("../Bilder/stellenwertsysteme_anzahl_ziffern.png")
  ], 
  [
    
  ]
)
*/