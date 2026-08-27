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
    4 | Datenmengen
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
    // neu
    Wir haben ja schon mal die Begriffe "Daten", "Information" und "Code" gehört. Auch haben wir gelernt, dass der Computer Texte und Bilder anders sieht als wir. Er sieht per se nicht Buchstaben oder farbige Pixel. Darunter liegen grosse Mengen an binären Zahlen, die dann von der Maschine übersetzt werden, dass wir am Bildschirm eben uns nicht mehr um die Zahlen kümmern müssen, sondern Bilder, Videos oder Texte sehen dürfen.

    Und diese vielen Bits müssen irgendwo gespeichert werden. Ein einfaches Bild kann bereits aus Millionen von Bits bestehen, ein Lied aus noch viel mehr. Damit stellt sich eine neue Frage: Wie viel Platz benötigen digitale Informationen eigentlich?
  ],
  [
    #image("Bilder/matrix_01.png")
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
    gutter: 1em,
    [
      Eine einzelne Stelle, also die kleinstmögliche Informationseinheit in der Informatik ist das Bit. Wir können es uns als einen grundlegenden Baustein digitaler Informationen vorstellen.\
      Ordnen wir 8 Bits zusammen, nennen wir diese Datenmenge 1 *Byte*. Da digitale Daten heute oft sehr gross sind, zum Beispiel bei hochauflösenden Fotos, Videos oder aufwendigen Programmen, gibt es weitere Einheiten, mit denen wir grössere Datenmengen übersichtlich angeben können.

    #grid(
      columns: (0.7fr, 1fr),
      gutter: 1.5em,
      [
        #image("Bilder/example_gb_storage.jpg")
      ],
      [
        #image("Bilder/example_storage.png")
      ]
    )
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

Das ist eigentlich schon alles an Grundlagen, was Sie über Datenmengen wissen müssen. Jetzt können Sie schon erste Aufgaben darüber lösen.

#v(3mm)

 #exo(
      title: [],
      exercise: [
        Dies ist eine Schätzaufgabe, die Sie ohne zu recherchieren versuchen sollen, zu lösen. Links sind der Grösse nach Datenmengen aufgelistet. Weisen Sie jeweils der richtigen Datenmenge die entsprechende Lösung auf der rechten Seite zu. Schaffen Sie die richtige Zuordnung?

        #table(
          columns: (auto, auto, auto, 2.5fr),
          align: (left, left, left, left),
          stroke: none,
          inset: (x: 6pt, y: 6pt),
          fill: (_, row) => if calc.odd(row) {none}
          else {white},

          [#align(right)[*1*]], [$1$ bit], [#pad(left: 18pt)[#align(right)[*A*]]], [Ein Foto mit einem iPhone 6],
          [#align(right)[*2*]], [$1$ Byte], [#pad(left: 18pt)[#align(right)[*B*]]], [Eine grosse Festplatte],
          [#align(right)[*3*]], [$144$ Byte], [#pad(left: 18pt)[#align(right)[*C*]]], [Windows 10 Installation],
          [#align(right)[*4*]], [$500$ kB], [#pad(left: 18pt)[#align(right)[*D*]]], [Ja oder Nein],
          [#align(right)[*5*]], [$2$ MB], [#pad(left: 18pt)[#align(right)[*E*]]], [Die Datenmenge eines riesigen Rechenzentrums],
          [#align(right)[*6*]], [$8$ MB], [#pad(left: 18pt)[#align(right)[*F*]]], [Der Text eines kurzen Posts auf X von Barack Obama],
          [#align(right)[*7*]], [$6.7$ GB], [#pad(left: 18pt)[#align(right)[*G*]]], [Speicher eines iPhone 11 (2019)],
          [#align(right)[*8*]], [$11$ GB], [#pad(left: 18pt)[#align(right)[*H*]]], [4 Minuten Musik als MP3],
          [#align(right)[*9*]], [$256$ GB], [#pad(left: 18pt)[#align(right)[*I*]]], [Ein einzelner Buchstabe],
          [#align(right)[*10*]], [$8$ TB], [#pad(left: 18pt)[#align(right)[*J*]]], [Spider-Man: Homecoming (2017), 133 Minuten, HD auf Netflix],
          [#align(right)[*11*]], [$1$ EB], [#pad(left: 18pt)[#align(right)[*K*]]], [Ein Foto auf Instagram],
        )
      ],
      solution: [1-D, 2-I, 3-F, 4-K, 5-A, 6-H, 7-J, 8-C, 9-G, 10-B, 11-E])

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #exo(
      title: [],
      exercise: [
        Gegeben ist eine Datei mit einer Grösse von $2$ Megabyte (MB). Konvertiere diese Grösse in Kilobyte (KB) und Gigabyte (GB).
      ],
      solution: [
        - $2$ Megabyte (MB) = $2000$ Kilobyte (KB)\
        - $2$ Megabyte (MB) = $0.002$ Gigabyte (GB)
      ])
  ],
  [
    #exo(
      title: [],
      exercise: [
        Ein Musikalbum hat eine Dateigrösse von $80$ Megabyte (MB), während ein Film eine Grösse von $1$ Gigabyte (GB) hat. Welche der beiden Dateien ist grösser? Um wie viel grösser ist sie?
      ],
      solution: [
        - Das Musikalbum ($80$ Megabyte) ist kleiner als der Film ($1$ Gigabyte).\
        - Der Film ist $920$ Megabyte größer als das Musikalbum.
      ])
  ]
)

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #exo(
      title: [],
      exercise: [
        Schätze die Grösse einer $10$-minütigen Videoaufnahme in Kilobyte (KB), wenn $1$ Minute Video ungefähr $10$ Megabyte (MB) gross ist.
      ],
      solution: [
        Die Größe einer $10$-minütigen Videoaufnahme beträgt ungefähr $100$ Megabyte (MB). Das wären $100'000$ KB.
      ])
  ],
  [
    #exo(
      title: [],
      exercise: [
        Gegeben ist eine Festplatte mit einer Kapazität von $500$ Gigabyte (GB). Wie viele Megabyte (MB) können auf der Festplatte gespeichert werden?
      ],
      solution: [
        Eine Festplatte mit $500$ Gigabyte (GB) kann $500'000$ Megabyte (MB) speichern.
      ])
  ]
)

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #exo(
      title: [],
      exercise: [
        Ein Haushalt hat einen monatlichen Internetdatenverbrauch von $300$ Gigabyte (GB). Wie viele Kilobyte (KB) werden im Durchschnitt pro Tag verbraucht?
      ],
      solution: [
        Im Durchschnitt werden $10'000'000$ Kilobyte (KB) pro Tag verbraucht.
      ])
  ],
  [
    #exo(
      title: [],
      exercise: [
        Ein Internetanbieter wirbt mit einer Datenübertragungsgeschwindigkeit von $50$ Megabit pro Sekunde (Mbps). Wie viele Megabyte können in einer Stunde übertragen werden?
      ],
      solution: [
        In einer Stunde können $22'500$ Megabyte (MB) übertragen werden.
      ])
  ]
)

#exo(
  title: [],
  exercise: [
    Eine Foto ist $1\'515\'394$ Bytes gross. Wie viele kbit sind das?
  ],
  solution: [
    $1'515'394 * 8 / 1000 = 12'123.152$ kBit
  ]
)

// Lösungen
#pagebreak()

#set heading(numbering: none)
#set page(columns: 2)

// footer descent -> ToDo
// footer page count per chapter // sub-chapter
// maybe offset settings

= Lösungen

#codly(zebra-fill: luma(240))
#exo-print-solutions(title: none) // Print collected solutions
