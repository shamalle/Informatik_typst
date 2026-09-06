#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Bildercodierung

#grid(
  columns: (0.7fr, 0.3fr),
  gutter: 1.5em,
  [
    Für uns heutzutage ist es normal, dass unser Computer (oder sonstigen elektronischen Geräte) ohne Mühe Bilder darstellen kann. Wie wir im Kapitel vorher gesehen haben, war das früher überhaupt nicht selbstverständlich. Da hat man noch mit Textzeichen getrickst, um einfache Linien darstellen zu können.\
    Ein bekanntes Beispiel früherer solcher Darstellungen von Bildern ist sogar die eigene Kunstrichtung "ASCII-Art", bei der man Bilder nur mit ASCII-Zeichen dargestellt hat (siehe @ascii-art-fish).

    Die heutigen Geräte haben also eine andere Möglichkeit, Bilder zu codieren (in 0 und 1 darzustellen), damit wir sie mit unserem Auge als Bilder wahrnehmen können. Dabei sind kaum Grenzen gesetzt und wir können an den Bildschirmen von Fotos bis zu digitalen Zeichnungen alles sehen.

    Doch wie speichert jetzt nun ein Computer solche Bilder? Es gibt dafür verschiedene Formate. Wir werden uns 2 Konzepte anschauen: Die Rastergrafik und die Vektorgrafik. Die erstere ist den Meisten intuitiv vertraut.

    #outline-colorbox(
      title: "Rastergrafik",
      color: "blue",
      radius: 3pt,
      width: auto,
      )[
        Eine *Rastergrafik*, auch *Pixelgrafik* genannt, ist eine Form der Beschreibung eines Bildes in Form von computerlesbaren Daten.

        Solche Grafiken bestehen aus einer rasterförmigen Anordnung von sogenannten Pixeln (Bildpunkten, siehe @pixel-zoom), denen jeweils eine Farbe zugeordnet ist. Die Hauptmerkmale einer Rastergrafik sind:

        - *Bildgrösse*: Breite + Höhe gemessen in Pixeln (auch _Bildauflösung_ genannt)

        - *Farbtiefe*: wie viele mögliche Werte ein Pixel annehmen kann
    ]    

    #text(
      size: 1.2em,
      weight: "bold",
        )[Schwarz-Weiss-Bilder]

    #v(-1mm)
    Schwarz-Weiss Bilder lassen sich sehr einfach mithilfe von Bits direkt darstellen. Schwarz zum Beispiel mit 1 und weiss mit 0 (oder umgekehrt). Soche einfachen Darstellungen kann der Computer im PBM (Portable BitMap/.pbm) Format speichern. Heutzutage ist das aber nicht mehr ein so weit verbreitetes Format und eignet sich besonders für Spielereien mit kariertem Papier.

    Im Beispiel in @portable-bitmap ist die Bildgrösse $5"x"5$ Pixel und pro Pixel wird 1 Bit gespeichert (0 oder 1): Man spricht also auch von einer 1-Bit-Farbtiefe.
    

    #text(
      size: 1.2em,
      weight: "bold",
        )[Graustufenbilder]

    #v(-1mm)
    Was ist nun, wenn wir verschiedene Helligkeitsstufen zwischen Schwarz und Weiss darstellen möchten? Also alle Graustufen dazwischen. Dafür benötigen wir mehr Bits pro Pixel. Ein typisches Graustufenbild verwendet $8$ Bit pro Pixel.

    Mit $8$ Bit können insgesamt $2^8=256$ verschiedene Werte dargestellt werden. Ein Pixel kann also 256 verschiedene Helligkeitsstufen annehmen: von Schwarz ($0000\'0000$) über verschiedene Graustufen bis hin zu Weiss ($1111\'1111$), siehe @portable-graymap.
    Man spricht deshalb von einer 8-Bit-Farbtiefe.

    #text(
      size: 1.2em,
      weight: "bold",
        )[Farbbilder]

    #v(-1mm)
    Um Farbbilder zu verstehen, müssen wir uns zuerst damit auseinandersetzen, wie wir Menschen Farbe überhaupt wahrnehmen. Auf unserer Netzhaut befinden sich drei Arten von Zapfen, die auf unterschiedliche Bereiche des sichtbaren Lichts besonders empfindlich reagieren. Vereinfacht sprechen wir dabei von Rot, Grün und Blau (*RGB*). Unser Gehirn verarbeitet die Signale dieser drei Zapfentypen und erzeugt daraus unsere Farbwahrnehmung.

    Es gibt auch andere Farbräume abgesehen von RGB, von denen Sie vielleicht gehört haben (z.B. im Bildnerischen Gestalten). CMYK beschreibt Cyan, Magenta, Yellow und Key/Black.

  ],
  [
    #v(-8mm)
    #figure(
      image("../Bilder/ascii_art_fish.png", width: 80%),
      caption: [Ein Fisch in ASCII-Art.]
    ) <ascii-art-fish>
    #v(1mm)

    #figure(
      grid(
        columns: (1fr, 1fr),
        gutter: 0.5em,
        [
          #image("../Bilder/cat_wizard.jpg")
        ],
        [
          #image("../Bilder/cat_wizard_2.jpg")
        ]
      ),
      caption: [Fotorealitätsnahe Bilder sind heute auf fast allen Geräten möglich.]
    )
    #v(1mm)

    #figure(
      image("../Bilder/frogs.jpg"),
      caption: [Digital gezeichnete Illustrationen ebenfalls.]
    )
    #v(1mm)

    #figure(
      image("../Bilder/zoom_pixel.png"),
      caption: [Beim Reinzoomen kann man die einzelnen Pixel erkennen.]
    ) <pixel-zoom>
    #v(1mm)

    #figure(
      image("../Bilder/portable-bitmap.png"),
      caption: [Beim .pbm zeigen die oberen zwei Zahlen jeweils Breite und Höhe der Grafik an.]
    ) <portable-bitmap>
    #v(1mm)

    #figure(
      image("../Bilder/portable-graymap.png"),
      caption: [Der maximale Wert bei einem Graustufenbild ist 255.]
    ) <portable-graymap>
    #v(1mm)
  ]
)

#grid(
  columns: (0.25fr, 0.75fr),
  gutter: 1.5em,
  [
    #figure(
      image("../Bilder/pixel_rgb_screen.jpg"),
      caption: [Mikroskopische Ansicht eines Bildschirms.]
    )

  ],
  [
    Bei der Darstellung von Farben auf Bildschirmen wird dieses Prinzip unserer empfindlichen Farbkanäle aufgegriffen: Durch die Kombination von rotem, grünem und blauem Licht können sehr viele verschiedene Farben dargestellt werden. Je nachdem, wie stark die drei Farbanteile sind, ergibt sich eine andere Farbe für das bestimmte Pixel.

    Bei der Farbtiefe benutzen wir eine ähnliche Abstufung wie bei Graustufenbilder: Pro Farbkanal nimmt man standardgemäss 256 mögliche Werte. Das heisst für einen Pixel hat man $256 "(rot)" dot 256 "(grün)" dot 256 "(blau)" = 16\'777\'216$ mögliche verschiedene Farben.\
    Als Farbtiefe bezeichnet man alle möglichen Werte für einen Pixel und weil $2^8=256$, bedeutet das also über alle 3 Farbkanäle spricht man von $24$ Bit Farbtiefe ($8$ Bit/Kanal).
  ]
)

24 Bit Farbtiefe wird auch “True Color” genannt. Diese Unterteilung in über 16 Mio Farben ist so fein, dass unser Auge nicht alle Farbtöne auseinander halten kann.

#outline-colorbox(
  title: "Ein paar Farbbeispiele",
  color: "purple",
  radius: 3pt,
  width: auto,
  )[
  
]






#pagebreak()

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1em,
  [
    #image("../Bilder/grayscale_smiley_pgm.png", width: 50%)
  ],
  [
    #image("../Bilder/grayscale_smiley.png", width: 50%)
  ]
)






// #image("../Bilder/ascii_art_wave.png")



