#import "../../../config/conf.typ": conf, shoutout

#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox

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
    AB: Zahlensysteme
  ],
  author: "TaT",
)

#show: conf.with(
  thema: "Information und Daten",
)

#show table: set text(size: 11pt)


*Aufgabe 1*: Rechnen Sie die Dezimalzahlen ins Binärsystem um. Erkennen Sie ein Muster?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Dezimal*]],
    [#align(right)[*Binär*]],
    align: (right, left),

    [$1$], [],
    [$3$], [],
    [$5$], [],
    [$7$], [],
  ),

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Dezimal*]],
    [#align(right)[*Binär*]],
    align: (right, left),

    [$30$], [],
    [$31$], [],
    [$32$], [],
    [$33$], [],
  ),

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Dezimal*]],
    [#align(right)[*Binär*]],
    align: (right, left),

    [$128$], [],
    [$256$], [],
    [$512$], [],
    [$1024$], [],
  ),
)

*Aufgabe 2*: Rechnen Sie die Binärzahlen ins Dezimalsystem um. Erkennen Sie ein Muster?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,

  table(
    columns: (2fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Binär*]],
    [#align(right)[*Dezimal*]],
    align: (right, left),

    [$1_2$], [],
    [$10_2$], [],
    [$100_2$], [],
    [$1000_2$], [],
  ),

  table(
    columns: (2fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Binär*]],
    [#align(right)[*Dezimal*]],
    align: (right, left),

    [$1001_2$], [],
    [$0001\'0001_2$], [],
    [$0010\'0001_2$], [],
    [$0100\'0001_2$], [],
  ),

  table(
    columns: (2fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Dezimal*]],
    [#align(right)[*Binär*]],
    align: (right, left),

    [$0010\'1010_2$], [],
    [$0010\'1011_2$], [],
    [$0010\'1100_2$], [],
    [$0010\'1101_2$], [],
  ),
)

*Aufgabe 3*: Rechnen Sie die Dezimalzahlen ins Binärsystem um.

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Dezimal*]],
    [#align(right)[*Binär*]],
    align: (right, left),

    [$12$], [],
    [$28$], [],
  ),

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Dezimal*]],
    [#align(right)[*Binär*]],
    align: (right, left),

    [$38$], [],
    [$136$], [],
  ),

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Dezimal*]],
    [#align(right)[*Binär*]],
    align: (right, left),

    [$199$], [],
    [$254$], [],
  ),
)

*Aufgabe 4*: Rechnen Sie die Binärzahlen ins Dezimalsystem um. 

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,

  table(
    columns: (2fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Binär*]],
    [#align(right)[*Dezimal*]],
    align: (right, left),

    [$0010\'0001_2$], [],
    [$0001\'1010_2$], [],
  ),

  table(
    columns: (2fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Binär*]],
    [#align(right)[*Dezimal*]],
    align: (right, left),

    [$1110\'0101_2$], [],
    [$1101\'0110_2$], [],
  ),
)

*Aufgabe 5*: Welches ist die grösste natürliche Zahl, welche mit den folgenden Anzahl Bit dargestellt werden kann?

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Anzahl Bit*]],
    [#align(right)[*grösste Zahl (dezimal)*]],
    align: (right, left),

    [$4$], [],
    [$8$], [],
  ),

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Anzahl Bit*]],
    [#align(right)[*grösste Zahl (dezimal)*]],
    align: (right, left),

    [$16$], [],
    [$32$], [],
  ),
)

*Aufgabe 6*: Rechnen Sie die Dezimalzahlen ins Hexadezimalsystem um. Erkennen Sie ein Muster?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,

  table(
    columns: (1fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Dezimal*]],
    [#align(right)[*Hexadezimal*]],
    align: (right, left),

    [$9$], [],
    [$10$], [],
    [$11$], [],
    [$12$], [],
    
  ),

  table(
    columns: (1fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Dezimal*]],
    [#align(right)[*Hexadezimal*]],
    align: (right, left),

    [$13$], [],
    [$14$], [],
    [$15$], [],
    [$16$], [],
  ),

  table(
    columns: (1fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Dezimal*]],
    [#align(right)[*Hexadezimal*]],
    align: (right, left),

    [$30$], [],
    [$31$], [],
    [$32$], [],
    [$33$], [],
  ),
)

*Aufgabe 7*: Rechnen Sie die Hexadezimalzahlen ins Dezimalsystem um. Erkennen Sie ein Muster?

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,

  table(
    columns: (1fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Hexadezimal*]],
    [#align(right)[*Dezimal*]],
    align: (right, left),

    [$1 A_16$], [],
    [$2 A_16$], [],
    [$3 A_16$], [],
    [$4 A_16$], [],
    
  ),

  table(
    columns: (1fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Hexadezimal*]],
    [#align(right)[*Dezimal*]],
    align: (right, left),

    [$F C_16$], [],
    [$F D_16$], [],
    [$F E_16$], [],
    [$F F_16$], [],
  ),

  table(
    columns: (1fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Hexadezimal*]],
    [#align(right)[*Dezimal*]],
    align: (right, left),

    [$10_16$], [],
    [$20_16$], [],
    [$30_16$], [],
    [$40_16$], [],
  ),
)

*Aufgabe 8*: Rechnen Sie die Zahlen zwischen Hexadezimal- und Binärsystem um.

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Hex.*]],
    [#align(right)[*Binär*]],
    align: (right, right),

    [$07_16$], [],
    [], [$1001_2$],
    [$0 C_16$], [],
    [], [$1111_2$],
  ),

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Hex.*]],
    [#align(right)[*Binär*]],
    align: (right, right),

    [], [$1011\'1010_2$],
    [], [$1001\'0010_2$],
    [], [$110\'1100_2$],
    [], [$0110\'0110_2$],
  ),

  table(
    columns: (1fr, 2fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[*Hex.*]],
    [#align(right)[*Binär*]],
    align: (right, left),

    [$D A_16$], [],
    [$B A_16$], [],
    [$81_16$], [],
    [$92_16$], [],
  ),
)

*Aufgabe 9*: Und nun zu etwas aussergewöhnlicheren Zahlensystemen. Versuchen Sie die Zahlen ins Dezimalsystem zu übersetzen.

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 5pt,

  table(
    columns: (1fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[]],
    [#align(right)[*Dezimal*]],
    align: (right, left),

    [$11_8$], [],
    [$7_8$], [],
    [$102_3$], [],
    [$16_12$], [],
    
  ),

  table(
    columns: (1fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[]],
    [#align(right)[*Dezimal*]],
    align: (right, left),

    [$101_2$], [],
    [$21_4$], [],
    [$23_5$], [],
    [$1A_16$], [],
  ),

  table(
    columns: (1fr, 1fr),
    stroke: 0.5pt,
    inset: (x: 6pt, y: 7pt),

    [#align(left)[]],
    [#align(right)[*Dezimal*]],
    align: (right, left),

    [$9_9$], [],
    [$18_9$], [],
    [$100_4$], [],
    [$2B_16$], [],
  ),
)