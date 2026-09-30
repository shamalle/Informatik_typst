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

    Die heutigen Geräte haben also eine andere Möglichkeit, Bilder zu codieren (in 0 und 1 darzustellen), damit wir sie mit unserem Auge als Bilder wahrnehmen können. Dabei sind kaum Grenzen gesetzt und wir können an den Bildschirmen von Fotos bis zu digitalen Zeichnungen alles sehen. Doch wie funktioniert das?
    #v(2mm)

    == Rastergrafiken

    Zuerst betrachten wir  Rastergrafiken/-bilder an und nachher die Vektorgrafiken.

    //Doch wie speichert jetzt nun ein Computer solche Bilder? Es gibt dafür verschiedene Formate. Wir werden uns 2 Konzepte anschauen: Die Rastergrafik und die Vektorgrafik. Die erstere ist den Meisten intuitiv vertraut.

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
      size: 1.1em,
      weight: "bold",
        )[Schwarz-Weiss-Bilder]

    #v(-1mm)
    Schwarz-Weiss Bilder lassen sich sehr einfach mithilfe von Bits direkt darstellen. Schwarz zum Beispiel mit 1 und weiss mit 0 (oder umgekehrt). Soche einfachen Darstellungen kann der Computer im PBM (Portable BitMap/.pbm) Format speichern. Heutzutage ist das aber nicht mehr ein so weit verbreitetes Format und eignet sich besonders für Spielereien mit kariertem Papier.

    Im Beispiel in @portable-bitmap ist die Bildgrösse $5"x"5$ Pixel und pro Pixel wird 1 Bit gespeichert (0 oder 1): Man spricht also auch von einer 1-Bit-Farbtiefe.
    

    #text(
      size: 1.1em,
      weight: "bold",
        )[Graustufenbilder]

    #v(-1mm)
    Was ist nun, wenn wir verschiedene Helligkeitsstufen zwischen Schwarz und Weiss darstellen möchten? Also alle Graustufen dazwischen. Dafür benötigen wir mehr Bits pro Pixel. Ein typisches Graustufenbild verwendet $8$ Bit pro Pixel.

    Mit $8$ Bit können insgesamt $2^8=256$ verschiedene Werte dargestellt werden. Ein Pixel kann also 256 verschiedene Helligkeitsstufen annehmen: von Schwarz ($0000\'0000$) über verschiedene Graustufen bis hin zu Weiss ($1111\'1111$), siehe @portable-graymap.
    Man spricht deshalb von einer 8-Bit-Farbtiefe.

    #text(
      size: 1.1em,
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

#grid(
  columns: (0.6fr, 0.4fr),
  gutter: 1.5em,
  [
    24 Bit Farbtiefe wird auch *True Color* genannt. Diese Unterteilung in über 16 Mio Farben ist so fein, dass unser Auge nicht alle Farbtöne auseinander halten kann.

    Das heisst aber nicht, dass alle Bilder auf dem Bildschirm unbedingt mit 24 Bit Farbtiefe abgespeichert werden müssen. Möglich ist auch eine gröbere Unterteilung, z.B. 12 Bit Farbtiefe (4Bit/Kanal).
  ],
  [
    #v(2mm)
    #stickybox(rotation: 3deg)[
      #align(center)[
        #v(-2pt)
        *Beispiel True Color 🎨*
        #v(-2pt)

        Also mit 8 Bit lässt sich die Farbintensität eines Kanals wie folgt einstellen:
        #v(-1mm)
        - $0000\'0000 #h(2mm)$: Farbe kommt gar nicht vor
        - $1111\'1111 #h(2mm)$: Farbe "ist voll aufgedreht"
      ]
    ]
  ]
)

#outline-colorbox(
  title: "Ein paar Farbbeispiele",
  color: "purple",
  radius: 3pt,
  width: auto,
  )[
    #v(2mm)
    #grid(
      columns: (0.2fr, 0.8fr),
      gutter: 1em,
      [
        #image("../Bilder/rgb.png")
      ],
      [
        #align(horizon)[
          Links sehen Sie ein Bild bestehend aus 3 Pixeln: ein roter, ein grüner und ein blauer Pixel. Je nachdem, welche Farbtiefe man definiert, muss man das Bild anders codieren. Die Codierung der Pixel wird jeweils mit einem kleinen Abstand dazwischen einfacher sichtbar gemacht.
        ]      
      ]
    )
    #v(1mm)

    #grid(
      columns: (1fr, 0.5pt, 1fr, 0.5pt, 1fr),
      gutter: 1.3em,
      [
        #align(center)[
          #text(size: 1.1em, weight: "bold")[3 Bit Farbtiefe]
        ]
        #v(-1.3mm)
        Jeder Farbkanal hat jeweils $1$ Bit. 0: Farbe kommt nicht vor, $1$: sie kommt vor. Es ergibt sich für die Codierung also folgende $3$ Tripel:

        #align(center)[
          $100$ #h(1mm) $010$ #h(1mm) $001$
        ]
      ],
      [#rect(width: 0.5pt, height: 12%, fill: rgb("#8b5bab"))],
      [
        #align(center)[
          #text(size: 1.1em, weight: "bold")[6 Bit Farbtiefe]
        ]
        #v(-1.3mm)
        Nun hat jeder Farbkanal jeweils $2$ Bit für die Codierung. Das heisst, die Werte $00$, $01$, $10$ und $11$. Für das Bild erhalten wir:

        #align(center)[
          $110000$ #h(1mm) $001100$ #h(1mm) $000011$
        ]
      ],
      [#rect(width: 0.5pt, height: 12%, fill: rgb("#8b5bab"))],
      [
        #align(center)[
          #text(size: 1.1em, weight: "bold",)[24 Bit Farbtiefe]
        ]
        #v(-1.3mm)
        Analog wäre die Codierung nun mit jeweils 8 Bit pro Kanal. Da die Codierung binär etwas lang wäre, schreiben wir es z.B. hexadezimal:

        #align(center)[
          $"FF"0000$ #h(1mm) $00"FF"00$ #h(1mm) $0000"FF"$
        ]
      ]
    )
    #v(1mm)
    #grid(
      columns: (0.8fr, 0.2fr),
      gutter: 1.3em,
      [
        Man kann natürlich auch Farben mischen und muss nicht reines Rot, Grün oder Blau nehmen. Schauen wir uns daher das Bild rechts an und wählen die Farbtiefe von 12 Bit.

        Die erste Zeile des Bildes ist analog wie beim vorherigen Bild. Die zweite Zeile besteht aber aus Mischungen der RGB-Farben. Gelb ergibt sich aus Rot und Grün, Magenta aus Rot und Blau, Cyan aus Grün und Blau. Daher ergibt sich für die 12 Bit Codierung des Bildes:
      ],
      [
        #align(horizon)[
          #image("../Bilder/rgb_mixed.png")
        ]
      ]
    )
    #align(center)[
      000000001111 #h(1mm) 000011110000 #h(1mm) 111100000000
      #v(-2mm)
      111111110000 #h(1mm) 111100001111 #h(1mm) 000011111111
    ]
    #v(1mm)
]
#v(2mm)

#grid(
  columns: (0.76fr, 0.24fr),
  gutter: 1.5em,
  [
    Jetzt werden vielleicht einige verwirrt sein, seit wann denn Rot und Grün zusammen Gelb gibt... Da wir hier von Bildschirmen und Farben reden, handelt es sich um sogenannte *Lichtfarben* (weil der Bildschirm ja Licht aussendet) und nicht die Pigmentfarben, die Sie aus dem bildnerischen Gestalten kennen. Man nennt dies das *additive Farbmodell*.

    Also je mehr Licht, desto heller. Wenn alle Farbkanäle voll offen sind (alle Farben zu 100% präsent) ergibt sich weiss. Wenn alle Farben abgedreht sind, ergibt sich schwarz (Absenz von Licht).
    #v(2mm)



    #text(size: 1.15em, weight: "bold")[Platzbedarf eines Bildes]
    #v(-2mm)    
    Eine Rastergrafik besteht also aus einer Vielzahl an Pixeln. Und für jeden dieser Pixel muss der Computer speichern, welche Farbe er hat. Je mehr Pixel ein Bild besitzt und je  
  ],
  [
    #v(-1.8mm)
    #figure(
      image("../Bilder/rgb_synthese.svg"),
      caption: [Das additive Farbmodell mit den Lichtfarben.]
    )
  ]
)
#v(-2mm)
mehr Bits für die Farbe eines Pixels verwendet werden, desto mehr Speicherplatz wird benötigt. Bei einem unkomprimierten Bild hängt der Platzbedarf deshalb hauptsächlich von zwei Faktoren ab:

- Bildgrösse (Auflösung): Wie viele Pixel hat das Bild?
- Farbtiefe: Wie viele Bits werden pro Pixel gespeichert?

Eine höhere Farbtiefe ermöglicht mehr verschiedene Farben und damit eine feinere Farbabstufung. Gleichzeitig benötigt sie mehr Speicherplatz. Wird die Farbtiefe reduziert, nimmt der Speicherbedarf ab, allerdings können dann weniger Farben dargestellt werden.


#grid(
  columns: (0.4fr, 0.6fr),
  gutter: 1.1em,
  [
    Wenn ein Computer eine Rastergrafik speichert, enthält diese Datei typischerweise zwei Teile:

    - *Header*: enthält Informationen über das Bild: Breite, Höhe und Farbtiefe.

    - *Bilddaten*: enthalten die Bits, aus die die Pixel und ihre Farben definiert werden.
  ],
  [
    #v(-2mm)
    #align(center)[
      #figure(
        image("../Bilder/portable-pixmap.png")
      )
    ]
  ]
)

Der Header benötigt ebenfalls etwas Speicherplatz. Für eine grobe Berechnung des Platzbedarfs können wir ihn jedoch zunächst vernachlässigen und berechnen den Platz wie folgt:

$ "Platzbedarf eines unkomprimierten Bildes"
≈ "Anzahl Pixel" dot "Farbtiefe" $

#v(2mm)

#outline-colorbox(
  title: "Beispiel Platzbedarf eines Bildes",
  color: "purple",
  radius: 3pt,
  width: auto,
  )[
    #grid(
      columns: (0.8fr, 0.2fr),
      gutter: 1em,
      [
        #v(1.5mm)
        Betrachten wir das Bild des Papageientauchers rechts. Es hat eine Auflösung von $400"x"600$ Pixeln und eine Farbtiefe von 24 Bit pro Pixel (True Color).

        Zuerst berechnen wir die Anzahl Pixel: $400 dot 600 = 240\'000 "Pixel"$

        Für jeden Pixel werden 24 Bit gespeichert: $240\'000 dot 24 = 5'760'000 "Bit"$

        Da $8$ Bit $1$ Byte entsprechen: $5\'760\'000 : 8 = 720\'000 "Byte"$

        Das entspricht ungefähr: $0.72 "MB"$

        Das Bild benötigt also ca. 0.72 MB Speicherplatz, wenn es unkomprimiert gespeichert wird. Der tatsächliche Speicherbedarf kann je nach Dateiformat und Header etwas grösser sein.
      ],
      [
        #v(-0.7mm)
        #figure(
          image("../Bilder/papageientaucher.jpg")
        )
      ]
    )
  ]

#v(2mm)

#text(size: 1.15em, weight: "bold")[Speicherplatz sparen]
#v(-2mm)    

Sie kennen sicher das Problem von fehlendem Speicherplatz. Eine einfache Möglichkeit, Speicherplatz zu sparen ist eine geringere Farbtiefe. Statt beispielsweise 24 Bit pro Pixel können auch 12 oder 8 Bit verwendet werden. Dadurch stehen zwar weniger verschiedene Farben zur Verfügung, dafür wird pro Pixel weniger Speicher benötigt. Von 24 auf 16 Bit ist bei einem kleinen Bild noch kein grosser Unterschied ersichtlich. Wie schnell aber die Bildqualität leidet, können Sie in @farbtiefe sehen können.

#v(2mm)

#figure(
  grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 10pt,

    image("../Bilder/sunflower_24bit.png", width: 100%),
    image("../Bilder/sunflower_16bit.png", width: 100%),
    image("../Bilder/sunflower_8bit.png", width: 100%),
    image("../Bilder/sunflower_4bit.png", width: 100%),

    image("../Bilder/sunflower_3bit.png", width: 100%),
    image("../Bilder/sunflower_2bit.png", width: 100%),
    image("../Bilder/sunflower_1bit.png", width: 100%),
    image("../Bilder/sunflower_0bit.png", width: 100%),
  ),
  caption: [Vergleich der verschiedenen Farbtiefen am selben Bild.],
) <farbtiefe>

#v(3mm)

Bei 8 Bit Farbtiefe müssen die 8 Bit auf die drei RGB-Farbkanäle verteilt werden. Die typische Verteilung hierbei ist: 3 Bit für Rot, 3 Bit für Grün und 2 Bit für Blau. Der blaue Kanal erhält damit etwas weniger Abstufungen. Das fällt bei vielen Bildern kaum auf, da das menschliche Auge für Unterschiede im blauen Farbbereich weniger empfindlich ist.

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      title: [],
      exercise: [ 
        #v(-2mm)
        Zeichnen Sie selbst ein Schwarz-Weiss Bild und geben Sie die dazugehörige Codierung als Bitsequenz und alle weiteren wichtigen Informationen zur Decodierung an.
      ],
      solution: [
        #v(-2mm)

        #grid(
          columns: (0.8fr, 0.25fr),
          gutter: 1em,
          [
            Beispiel eines Smiley-Bilds:\
            - Bildgrösse: $5"x"5$ Pixel
            - Farbtiefe: $1$ Bit
            - Bitsequenz: $0000001010000001000101110$
          ],
          [
            #align(left)[
              #image("../Bilder/solution_smiley.png")
            ]
          ]
        )
      ]
    )
  ],
  [
    #exo(
      title: [],
      exercise: [ 
        #v(-2mm)
        Was könnte die folgende Codierung für ein Graustufenbild darstellen? Zeichnen Sie das Bild.\
        - Bildgrösse: $4"x"4$ Pixel\
        - Farbtiefe: $4$ Bit\
        - Bitsequenz: 1111 1111 1111 0000 1111 1111 0000 0111 1111 0000 0111 0111 0000 0111 0111 0111
      ],
      solution: [
        #v(-2mm)
        Eine schwarze Treppe wobei oberhalb weisse Pixel sind und unterhalb graue Pixel.
        #image("../bilder/solution_stair.png", width: 25%)
      ]
    )
  ]
)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      title: [],
      exercise: [ 
        #v(-2mm)
        Betrachten wir ein Bild mit einer Farbtiefe von 24 Bit. Geben Sie die Codierung für die folgenden Pixel an:
        - Ein rotes Pixel
        - Ein gelbes Pixel
        - Ein oranges Pixel (Mischung zwischen Rot und Gelb)
      ],
      solution: [
        #v(-2mm)

      ]
    )
  ],
  [
    #exo(
      title: [],
      exercise: [ 
        #v(-2mm)
        Was könnte die folgende Codierung für ein Graustufenbild darstellen? Zeichnen Sie das Bild.\
        - Bildgrösse: $4"x"4$ Pixel\
        - Farbtiefe: $4$ Bit\
        - Bitsequenz: 1111 1111 1111 0000 1111 1111 0000 0111 1111 0000 0111 0111 0000 0111 0111 0111
      ],
      solution: [
        #v(-2mm)
        
      ]
    )
  ]
)




#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      title: [],
      exercise: [ 
        #v(-2mm)
        Gegeben ist das folgende Graustufenbild mit einer $8$ Bit Farbtiefe. Sie haben für die Pixel folgende Werte zur Verfügung: $0$, $130$, $220$ und $255$.\

        #grid(
          columns: (0.5fr, 0.5fr),
          gutter: 0.5em,
          [
            Geben Sie die Codierung des Bildes mit diesen Werten analog wie in @portable-graymap als Tabelle an. 
          ],
          [
            #v(-4.5mm)
            #align(right)[
              #image("../Bilder/grayscale_smiley.png", width: 95%)
            ]
          ]
        )
      ],
      solution: [
        #v(-2mm)
        Ohne die Angabe der Farbtiefe (und Bildgrösse) ist es nicht eindeutig, welches der drei Bilder der Bitsequenz entspricht. Alle $3$ sind möglich:

        - Wenn man die Folge mit einer Farbtiefe von $1$ Bit und einer Grösse von $6"x"6$ Pixel liest, ist es einfach eine Folge von _schwarz_, _schwarz_, _weiss_, _weiss_ etc. bis es das linke Bild ergibt.
        - Falls die Sequenz ein $4"x"3$ Bild mit einer Farbtiefe von 3 Bit beschreibt, ergibt sich das mittlere Bild.
        - Bei der gleichen Farbtiefe aber Grösse von $3"x"4$ Pixel ergibt sich das rechte Bild.
      ]
    )
  ],
  [
    #exo(
      title: [],
      exercise: [ 
        #v(-2mm)
        Betrachten Sie die folgende Bitfolge und überlegen Sie, welches Bild es codiert:

        #text(size: 1.2em)[$001100001100111111111111001100001100$]

        Welches der 3 folgenden Bilder entspricht der Bitfolge?

        #grid(
          columns: (auto, auto, auto),
          gutter: 0.5em,
          [
            #image("../Bilder/bit_ambiguity_1.png", height: 2.35cm)
          ],
          [
            #image("../Bilder/bit_ambiguity_2.png", height: 2.35cm)
          ],
          [
            #image("../Bilder/bit_ambiguity_3.png", height: 2.35cm)
          ]
        )
      ],
      solution: [
        #v(-2mm)
        Ohne die Angabe der Farbtiefe (und Bildgrösse) ist es nicht eindeutig, welches der drei Bilder der Bitsequenz entspricht. Alle $3$ sind möglich:

        - Wenn man die Folge mit einer Farbtiefe von $1$ Bit und einer Grösse von $6"x"6$ Pixel liest, ist es einfach eine Folge von _schwarz_, _schwarz_, _weiss_, _weiss_ etc. bis es das linke Bild ergibt.
        - Falls die Sequenz ein $4"x"3$ Bild mit einer Farbtiefe von 3 Bit beschreibt, ergibt sich das mittlere Bild.
        - Bei der gleichen Farbtiefe aber Grösse von $3"x"4$ Pixel ergibt sich das rechte Bild.
      ]
    )
  ]
)






















#pagebreak()

#grid(
  columns: (0.5fr, 0.18fr, 0.18fr, 0.18fr),
  gutter: 1em,
  [
    #text(size: 1.1em, weight: "bold")[Gleiche Bits ergeben verschiedene Bilder]
    #v(-2mm)
    Betrachten Sie die folgende Bitfolge und überlegen Sie, welches Bild es codieren soll:
    #h(5mm) #text(size: 1.2em)[$001100001100111111111111001100001100$]
    Welches der 3 Bilder rechts entspricht der Bitfolge?
  ],
  [
    #image("../Bilder/bit_ambiguity_1.png")
  ],
  [
    #image("../Bilder/bit_ambiguity_2.png")
  ],
  [
    #image("../Bilder/bit_ambiguity_3.png")
  ]
)


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






#image("../Bilder/ascii_art_wave.png")



== Vektorgrafiken