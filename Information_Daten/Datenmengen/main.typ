#import "../../config/conf.typ": conf, shoutout

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
    3 | Datenmengen
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

    Und diese vielen Bits müssen irgendwo gespeichert werden. Ein einfaches Bild kann bereits aus Millionen von Bits bestehen, ein Lied aus noch viel mehr. Damit stellt sich eine neue Frage: Wie viel Platz benötigen digitale Informationen eigentlich?
  ],
  [
    #v(-5mm)
    #image("Bilder/datenmenge_binary.png")
  ]
)

#v(-2mm)
In diesem Kapitel schauen wir uns an, wie wir die Grösse digitaler Daten angeben und miteinander vergleichen können.  

#outline-colorbox(
  title: "Definierte Datenmengen",
  color: "blue",
  radius: 3pt,
  width: auto,
)[

  #grid(
    columns: (1fr, 1fr),
    gutter: 1.5em,
    [
      Eine einzelne Stelle, also die kleinstmögliche Informationseinheit in der Informatik ist das Bit. Wir können es uns als einen grundlegenden Baustein digitaler Informationen vorstellen.\
    Ordnen wir 8 Bits zusammen, nennen wir diese Datenmenge 1 *Byte*. Da digitale Daten heute oft sehr gross sind, zum Beispiel bei hochauflösenden Fotos, Videos oder aufwendigen Programmen, gibt es weitere Einheiten, mit denen wir grössere Datenmengen übersichtlich angeben können.
    ],
    [
      #align(center)[
        #table(
          columns: (auto, auto, auto, auto),
          align: (left, left, left, left),
          stroke: none,
          inset: (x: 6pt, y: 6pt),
          fill: (_, row) => if row == 0 {rgb("#1c90d1")} 
          else if calc.odd(row) {none} 
          else {white},
          
          [#text(fill: white)[*Bezeichnung*]],
          [#text(fill: white)[*Kürzel*]],
          [#text(fill: white)[*Potenz*]],
          [#text(fill: white)[*Grösse*]],

          [Bit], [bit], [$2^0$], [],
          [Byte], [B], [$2^3$], [$8$ bit],
          [Kilobyte], [kB], [$10^3$], [$1'000$ B],
          [Megabyte], [MB], [$10^6$], [$1'000$ kB],
          [Gigabyte], [GB], [$10^9$], [$1'000$ MB],
          [Terabyte], [TB], [$10^12$], [$1'000$ GB],
          [Petabyte], [PB], [$10^15$], [$1'000$ TB],
          [Exabyte], [EB], [$10^18$], [$1'000$ PB],
    )
]
    ]
  )



  

  

  

  
]


// Lösungen
#pagebreak()

#set heading(numbering: none)
#set page(columns: 2)

= Lösungen

#codly(zebra-fill: luma(240))
#exo-print-solutions(title: none) // Print collected solutions
