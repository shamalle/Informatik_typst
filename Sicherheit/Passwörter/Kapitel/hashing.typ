#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Wie werden Passwörter gespeichert?

#grid(
  columns: (0.7fr, 0.3fr),
  gutter: 1em,
  [
    Vorhin haben wir gesehen, dass Max sich bei Instagram mit seinem Benutzernamen und Passwort einloggen muss. Nehmen wir mal an, Max verwendet das Passwort "Sommer2026!". Eine sehr einfache Möglichkeit wäre, dass Instagram dieses Passwort direkt in seiner Datenbank speichert.

    Die Datenbank könnte beispielsweise so aussehen wie in @zugangsdaten. Das nennt man *Klartextspeicherung*. Wenn Max sich anmeldet, kann Instagram das eingegebene Passwort einfach mit dem gespeicherten Passwort vergleichen. Das funktioniert zwar technisch, ist aber äussert unsicher... Warum?
  ],
  [
    #v(-7mm)
    #figure(
      table(
        columns: (auto, auto),
        stroke: none,
        inset: 7pt,

        [#text(weight: "bold", fill: rgb("#1c90d0"))[Benutzer]],
        [#text(weight: "bold", fill: rgb("#1c90d0"))[Passwort]],

        // Linie unter der Kopfzeile
        table.hline(
          y: 1,
          stroke: 1pt + rgb("#1c90d0"),
        ),

        [Max], [Sommer2026!],
        [Anna], [Fussball123],
        [Luca], [Mauzi],
        [Sara], [123456789],

        // Vertikale Linie zwischen den Spalten
        table.vline(
          x: 1,
          start: 1,
          end: 5,
          stroke: 0.5pt + rgb("#1c90d0"),
        ),
      ),
      caption: [Datenbank mit Klartext],
    ) <zugangsdaten>
  ]
)

Die Übermittlung selbst kann man zwar mit einer Verschlüsselung irgendwie sichern, sodass keine Eve das Passwort abfangen kann. Aber in dieser Situation gibt es noch eine weitere Schwachstelle. Angenommen, ein Angreifer verschafft sich Zugriff auf die Datenbank bei Instagram. Dann könnte er sofort alle (!) Passwörter lesen! Er müsste die Passwörter also nicht einmal knacken, sondern könnte sie einfach so verwenden. Deshalb sollten Passwörter niemals im Klartext gespeichert werden.

== Die Idee der Hashfunktionß

Hier kommt ein Prinzip ins Spiel, das wir schon aus der Kryptologie bei der asymmetrischen Verschlüsselung kennengelernt haben: Die Hashfunktion.

#v(2mm)

#outline-colorbox(
  title: "Repetition Hashfunktion",
  color: "blue",
  radius: 3pt,
  width: auto,
)[
  #grid(
    columns: (0.7fr, 0.3fr),
    gutter: 1em,
    [
      Wir haben schon einmal die Hashfunktion kennengelernt. Sie hat die Eigenschaft, dass sie eine Input nimmt und in eine ganz andere Form bringt. Dabei ist es praktisch unmöglich, aus dem Hashwert wieder das ursprüngliche Passwort zu berechnen (Beispiel Spaghetti kochen).\
      Ein weiteres Merkmal in der Informatik bei Hashfunktionen ist, dass sie eine beliebige Länge als Input reinnimmt (z.B. ein Passwort) und daraus einen Hashwert mit einer fixen Länge erstellt. Das heisst, egal wie lang das Passwort ist, die gespeicherten Hashwerte haben immer die gleiche Länge.
    ],
    [
      #align(center)[
        #figure(
        image("../Bilder/hash_visualised.png", width: 100%),
        )
      ]
    ]
  )

  Der konkrete Hashwert hängt natürlich von der verwendeten Hashfunktion ab. Wichtig dabei ist: Aus demselben Passwort entsteht bei derselben Hashfunktion immer derselbe Hashwert.
]

#v(2mm)

#grid(
  columns: (0.7fr, 0.3fr),
  gutter: 1em,
  [
    Das Ganze sieht einer Verschlüsselung verdächtig ähnlich... Aber hier müssen wir eine Unterscheidung machen:\
    Bei einer Verschlüsselung wird eine Nachricht so verändert, dass sie ohne den passenden Schlüssel nicht gelesen werden kann.\
    Beim Hashing wird aus einer Eingabe ein Hashwert berechnet. Und dieser Wert ist nicht dazu gedacht, wieder in die ursprüngliche Eingabe zurückverwandelt zu werden. Deshalb spricht man hier von einer Einwegfunktion.
  ],
  [
    _insert image vergleich verschlüsselung hash_
  ]
)



#text(size: 1.1em, weight: "bold")[Wie kann Instagram dann das Passwort überprüfen?]

Bei der Registrierung von Max speichert Instagram nicht sein Passwort als Klartext, sondern übersetzt dieses mit einer Hashfunktion in einen Hashwert (vereinfacht auch Hash genannt). Die Datenbank sieht also nicht mehr wie in @zugangsdaten aus, sondern wie in @zugangsdaten-hash. Das eigentliche Passwort ist nicht mehr ersichtlich.

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1em,
  [
    #align(horizon)[
      #figure(
        table(
          columns: (auto, auto),
          stroke: none,
          inset: 7pt,

          [#text(weight: "bold", fill: rgb("#1c90d0"))[Benutzer]],
          [#text(weight: "bold", fill: rgb("#1c90d0"))[Passwort]],

          // Linie unter der Kopfzeile
          table.hline(
            y: 1,
            stroke: 1pt + rgb("#1c90d0"),
          ),

          [Max], [0ec22f12d2aef35308467e125d3996de],
          [Anna], [7ed70c52ce29499ba647a775cec40d6d],
          [Luca], [2981b5bf5f6772a8b0f2c43b5f98e80a],
          [Sara], [25f9e794323b453885f5181f1b624d0b],

          // Vertikale Linie zwischen den Spalten
          table.vline(
            x: 1,
            start: 1,
            end: 5,
            stroke: 0.5pt + rgb("#1c90d0"),
          ),
        ),
        caption: [Die Datenbank bei Instagram speichert nicht das Passwort als Klartext, sondern den Hashwert des Passworts.],
      ) <zugangsdaten-hash>
    ]
  ],
  [
    Einige Tage später möchte Max sich wieder anmelden. Instagram wird nun nicht das Passwort direkt mit dem gespeicherten Passwort vergleichen, sondern es zuerst wieder mit derselben Hashfunktion in einen Hashwert umwandeln. Dann werden die zwei Werte verglichen. Wenn sie übereinstimmen, wird die Anmeldung akzeptiert, andernfalls abgelehnt.\
    Der Server bei Instagram muss das eigentliche Passwort also nicht kennen, um überprüfen zu können, ob das richtige Passwort eingegeben wurde.
  ]
)

== Besonderheiten bei Hashes