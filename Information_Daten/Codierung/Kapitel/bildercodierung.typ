#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Bildercodierung

#grid(
  columns: (0.7fr, 0.3fr),
  gutter: 1.5em,
  [
    Für uns heutzutage ist es normal, dass unser Computer (oder sonstigen elektronischen Geräte) ohne Mühe Bilder darstellen können. Wie wir im Kapitel vorher gesehen haben, war das früher überhaupt nicht selbstverständlich. Da hat man noch mit Textzeichen getrickst, um einfache Linien darstellen zu können.\
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

        - die Bildgrösse (Breite und Höhe gemessen in Pixeln, umgangssprachlich auch _Bildauflösung_ genannt)
        - die Farbtiefe
      ]    


  ],
  [
    #v(-8mm)
    #figure(
      image("../Bilder/ascii_art_fish.png", width: 80%),
      caption: [Ein Fisch in ASCII-Art]
    ) <ascii-art-fish>

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
      caption: [Fotorealitätsnahe Bilder sind heute auf fast allen Geräten möglich]
    )

    #figure(
      image("../Bilder/frogs.jpg"),
      caption: [Digital gezeichnete Illustrationen ebenfalls.]
    )

    #figure(
      image("../Bilder/zoom_pixel.png"),
      caption: [Beim Reinzoomen kann man die einzelnen Pixel erkennen.]
    ) <pixel-zoom>
  ]
)

// #image("../Bilder/ascii_art_wave.png")



