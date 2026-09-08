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

== Die Idee der Hashfunktion

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
      Wir haben schon einmal die Hashfunktion kennengelernt. Sie hat die Eigenschaft, dass sie ein Input nimmt und in eine ganz andere Form bringt. Dabei ist es praktisch unmöglich, aus dem Hashwert wieder das ursprüngliche Passwort zu berechnen (Beispiel Spaghetti kochen).\
      Ein weiteres Merkmal in der Informatik bei Hashfunktionen ist, dass sie eine beliebige Länge als Input reinnehmen (z.B. ein Passwort) und daraus einen Hashwert mit einer fixen Länge erstellen. Das heisst, egal wie lang das Passwort ist, die gespeicherten Hashwerte haben immer die gleiche Länge.
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

#v(3mm)

#grid(
  columns: (0.6fr, 0.4fr),
  gutter: 1.2em,
  [
    Das Ganze sieht einer Verschlüsselung verdächtig ähnlich... Aber hier müssen wir eine Unterscheidung machen:\
    Bei einer Verschlüsselung wird eine Nachricht so verändert, dass sie ohne den passenden Schlüssel nicht gelesen werden kann.\
    Beim Hashing wird aus einer Eingabe ein Hashwert berechnet. Und dieser Wert ist nicht dazu gedacht, wieder in die ursprüngliche Eingabe zurückverwandelt zu werden. Deshalb spricht man hier von einer Einwegfunktion.
  ],
  [
    #v(-4mm)
    #image("../Bilder/encryption_vs_hashing.png")
  ]
)

#v(-6mm)

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
          [#text(weight: "bold", fill: rgb("#1c90d0"))[Passwort-Hash]],

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

Nun ergeben sich natürlich einige Besonderheiten bezüglich dieses Verfahrens. Gehen wir nun auf diese ein.
#v(2mm)

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1em,
  [
    #text(size: 1.1em, weight: "bold")[Avalanche Effekt]

    Eine wichtige Grundvoraussetzung ist, dass man nicht aus dem Hashwert das Passwort irgendwie zurückrechnen kann. Daher ist es auch wichtig, dass sich der Hashwert bei einer kleinen Änderung des Passworts stark verändert.

    Im Beispiel im Bild sieht man, dass eine Änderung eines einzelnen Zeichens im Passwort dazu führt, dass der Hashwert komplett anders aussieht. Das nennt man den *Avalanche Effekt* oder *Streuung*. 
  ],
  [
    #align(horizon)[
      #figure(
        image("../Bilder/hash_avalanche.png"),
        caption: [Nur ein einziges Zeichen verändert den Hashwert ganz.]
      )
    ]
  ]
)

#line(
  length: 100%,
  stroke: 0.5pt + rgb("#1c90d0"),
)


#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1em,
  [
    #align(horizon)[
      #figure(
        image("../Bilder/hash_collision.png"),
        caption: [Verschiedene Passwörter ergeben denselben Hash.]
      )
    ]
  ],
  [
    #text(size: 1.1em, weight: "bold")[Kollisionen]

    Wir haben bereits gesehen, dass Hashfunktionen eine Eingabe in einen Hashwert fester Länge umwandeln. Damit entsteht ein interessantes mathematisches Problem: Es gibt sehr viele mögliche Passwörter, aber nur eine begrenzte Anzahl möglicher Hashwerte. Deshalb ist es theoretisch möglich, dass zwei verschiedene Eingaben denselben Hashwert erzeugen. Das nennt man eine *Kollision*. Bei einer guten kryptografischen Hashfunktion soll es allerdings extrem schwierig sein, absichtlich zwei passende Eingaben mit demselben Hash zu finden.
  ]
)

#v(2mm)

Bekannte Hashfunktionen sind SHA-256, SHA-3 oder MD5 (heute nicht mehr für sichere Anwendungen geeignet). Sie können sich das wirklich wie vorgefertigte Anleitungen/Verfahren vorstellen. 

#v(2mm)

== Rainbow Tables und Salting

So, jetzt stellt sich die Frage, ob ein Angreifer, der Zugriff auf die Datenbank hat, die Passwörter trotzdem irgendwie herausfinden kann. 

#v(2mm)
#exo(
  exercise: [
    #v(-2mm)
    Überlegen Sie sich, wie ein Angreifer vorgehen könnte, um die Passwörter zu knacken, falls er so eine Tabelle wie in @zugangsdaten-hash gestohlen hat und nun besitzt.
  ],
  solution: [
    #v(-2mm)
    Der Angreifer könnte eine Liste von möglichen/beliebten Passwörtern nehmen und diese mit derselben Hashfunktion in Hashwerte umwandeln. Dann könnte er die berechneten Hashwerte mit den gestohlenen Hashwerten vergleichen. Wenn er eine Übereinstimmung findet, weiss er, welches Passwort zu welchem Benutzer gehört.
  ]
)
#v(2mm)





#grid(
  columns: (0.7fr, 0.3fr),
  gutter: 1.5em,
  [
    Falls nun also ein Angreifer in den Besitz einer solchen Benutzernamen-Hash-Tabelle (wie in @zugangsdaten-hash) kommt, könnte er eventuell durch Ausprobieren beliebter Passwörter die Passwörter der Benutzer herausfinden.

    Sara's Passwort in @zugangsdaten ist zum Beispiel "123456789" gewesen. Falls der Angreifer nun selbst auf die Idee kommt, dass viele Leute dieses Passwort verwenden könnten, könnte er dieses Passwort selbst hashen und mit den Hashwerten in der Tabelle vergleichen. Er würde dann feststellen, dass der Hashwert übereinstimmt und somit wüsste er mit Sicherheit, dass Sara's Passwort "123456789" ist.
  ],
  [
    #v(1mm)
    #stickybox(rotation: 2deg)[
      #align(center)[
        *Beliebte Passwörter* \
        (ein paar Beispiele)\

        #table(
        columns: (auto, auto),
        align: (left, left),
        inset: (x: 5pt, y: 3pt),
        stroke: none,
        
        [- password],    [- 123456], [- qwertz],       [- abc123],
        [- iloveyou], [- 123123]
        )
      ]
    ]
  ]
)

Das nennt man einen *Offline-Angriff*, weil der Angreifer kann die gestohlenen Daten in Ruhe auf seinem eigenen System untersuchen, ohne bei Instagram für jeden Versuch einen Login durchführen zu müssen.
#v(2mm)

#outline-colorbox(
  title: "Rainbow Tables",
  color: "blue",
  radius: 3pt,
  width: auto,
)[
  Eine Rainbow Table ist vereinfacht gesagt eine vorberechnete Sammlung von Passwort- und Hashwerten. Quasi wie ein Nachschlagewerk für Angreifer.

  Wenn ein Angreifer einen gestohlenen Hash besitzt, kann er versuchen, den passenden Eintrag zu finden. Solche vorbereiteten Tabellen sind also besonders für schwache Passwörter eine gute Angriffsmöglichkeit.
]

#exo(
  exercise: [
    #v(-2mm)
    Sie sind eine bekannte oder ein bekannter AngreiferIn und haben durch einen internen Maulwurf bei Instagram den Zugriff auf eine Tabelle mit Benutzernamen und deren gehashed Passwörtern bekommen:

    #grid(
      columns: (0.5fr, 0.5fr),
      gutter: 1em,
      [
        #table(
          columns: (auto, auto),
          stroke: none,
          inset: 5pt,

          [#text(weight: "bold", fill: rgb("#1c90d0"))[Benutzer]],
          [#text(weight: "bold", fill: rgb("#1c90d0"))[Passwort-Hash]],

          // Linie unter der Kopfzeile
          table.hline(
            y: 1,
            stroke: 1pt + rgb("#1c90d0"),
          ),

          [Max], [3d46feca7646fe8451af309a9f014123],
          [Anna], [a864a7d0f33a71467c81e7724df0020d],
          [Luca], [7ed70c52ce29499ba647a775cec40d6d],
          [Sara], [3d6cfeb3fefefb2ae3310444ad66d13b],

          // Vertikale Linie zwischen den Spalten
          table.vline(
            x: 1,
            start: 1,
            end: 5,
            stroke: 0.5pt + rgb("#1c90d0"),
          )
        )
      ],
      [
        #table(
          columns: (auto, auto),
          stroke: none,
          inset: 5pt,

          [#text(weight: "bold", fill: rgb("#1c90d0"))[Benutzer]],
          [#text(weight: "bold", fill: rgb("#1c90d0"))[Passwort-Hash]],

          // Linie unter der Kopfzeile
          table.hline(
            y: 1,
            stroke: 1pt + rgb("#1c90d0"),
          ),

          [Nina], [6049e0b0903501a92fffb52ea35ff91f],
          [Tim], [3d54cf48eb2dee70ccf8a1e40c621d03],
          [Lea], [c4aaa2e7db25e4042eda12c47668d341],
          [Jonas], [e2b764068994715ed3bc13c21ac3ad79],

          // Vertikale Linie zwischen den Spalten
          table.vline(
            x: 1,
            start: 1,
            end: 5,
            stroke: 0.5pt + rgb("#1c90d0"),
          )
        )
      ]
    )
    Praktischerweise haben Sie auch schon Ihre Rainbow Table bereit:

    #grid(
      columns: (0.5fr, 0.5fr),
      gutter: 1em,
      [
        #table(
          columns: (auto, auto),
          stroke: none,
          inset: 5pt,

          [#text(weight: "bold", fill: rgb("#1c90d0"))[Passwort]],
          [#text(weight: "bold", fill: rgb("#1c90d0"))[Hash]],

          // Linie unter der Kopfzeile
          table.hline(
            y: 1,
            stroke: 1pt + rgb("#1c90d0"),
          ),

          [Pizza123], [c4aaa2e7db25e4042eda12c47668d341],
          [Mauzi454], [3d6cfeb3fefefb2ae3310444ad66d13b],
          [Passwort1], [e2b764068994715ed3bc13c21ac3ad79],
          [Sommer0], [3d46feca7646fe8451af309a9f014123],
          [Hallo123], [c10fedc1a97741855818849f936d2463],

          // Vertikale Linie zwischen den Spalten
          table.vline(
            x: 1,
            start: 1,
            end: 6,
            stroke: 0.5pt + rgb("#1c90d0"),
          )
        )
      ],
      [
        #table(
          columns: (auto, auto),
          stroke: none,
          inset: 5pt,

          [#text(weight: "bold", fill: rgb("#1c90d0"))[Passwort]],
          [#text(weight: "bold", fill: rgb("#1c90d0"))[Hash]],

          // Linie unter der Kopfzeile
          table.hline(
            y: 1,
            stroke: 1pt + rgb("#1c90d0"),
          ),

          [Fussball], [3d54cf48eb2dee70ccf8a1e40c621d03],
          [Apfel123], [f1c505746bdcdd8e8d9b28513fd0a591],
          [CoffeeLover], [f943ef55cd7654f184274cb8f6d7422b],
          [Sonne], [6049e0b0903501a92fffb52ea35ff91f],
          [Test1234], [8a8c05746bdcdd8e8d9b28513fd0a591],

          // Vertikale Linie zwischen den Spalten
          table.vline(
            x: 1,
            start: 1,
            end: 6,
            stroke: 0.5pt + rgb("#1c90d0"),
          )
        )
      ]
    )

    Bei wie vielen Benutzern aus der ersten Tabelle kann das Passwort mithilfe der Rainbow-Tabelle herausgefunden werden? Gib die entsprechenden Benutzernamen und Passwörter an.
  ],
  solution: [
    #v(-2mm)
    - Max mit Sommer0
    - Sara mit Mauzi454
    - Tim mit Fussball
  ]
)

#v(4mm)

Da überall in diesen Firmen auch nur Menschen (potentielle Schwachstellen...) arbeiten, ist es gar nicht so unwahrscheinlich, dass Unbefugte an solche Benutzernamen-Hash-Tabellen rankommen. Daher müssen wir die Sicherheit noch etwas mehr aufdrehen. Hier kommt der Salt ins Spiel:
#v(2mm)

#outline-colorbox(
  title: "Salting",
  color: "blue",
  radius: 3pt,
  width: auto,
)[
  #grid(
    columns: (0.6fr, 0.4fr),
    gutter: 1em,
    [
      Ein *Salt* ist eine zufällig erzeugte Zeichenfolge, die vor dem Hashen mit dem Passwort kombiniert wird. Der Salt ist kein Geheimnis. Er wird zusammen mit dem Hash gespeichert werden (siehe @zugangsdaten-hash-salt).

      #text(size: 1.1em, weight: "bold")[Warum hilft der Salt?]
      #v(-1mm)
      Nehmen wir mal an, dass Max und Nina dasselbe Passwort verwenden. Ohne Salt hätten beide denselben Hash und der Angreifer könnte auf einen Schlag von 2 Benutzern das Passwort erkennen. Mit dem Salt entstehen unterschiedliche Hashwerte und für den Angreifer wird es so viel schwieriger, eine einzige vorberechnete Tabelle für alle Benutzer zu verwenden.

    ],
    [
      #image("../Bilder/salting.png")
    ]
  )
]

#grid(
  columns: (0.38fr, 0.62fr),
  gutter: 2em,
  [
    #v(2mm)
    Daraus ergibt sich also die aktualisierte Abfolge bei einem Login-Versuch von Max:

    Bei der Registrierung auf Instagram wählt Max ein Passwort, z.B. "Sommer2026!". Instagram erzeugt für Max einen zufälligen Salt, z.B. "a7K2mQ9x" und zusammen mit dem gewählten Passwort wird das gehashed. In der Datenbank bei Instagram wird dann (Benutzername, Salt, Passwort-Hash) gespeichert.
  ],
  [
    #figure(
      table(
        columns: (auto, auto, auto),
        stroke: none,
        inset: 7pt,

        [#text(weight: "bold", fill: rgb("#1c90d0"))[Benutzer]],
        [#text(weight: "bold", fill: rgb("#1c90d0"))[Salt]],
        [#text(weight: "bold", fill: rgb("#1c90d0"))[Passwort-Hash]],

        // Linie unter der Kopfzeile
        table.hline(
          y: 1,
          stroke: 1pt + rgb("#1c90d0"),
        ),

        [Max], [a7K2mQ9x], [0ec22f12d2aef35308467e125d3996de],
        [Anna], [P4z8Lr1N], [7ed70c52ce29499ba647a775cec40d6d],
        [Luca], [xQ6vT3b9], [2981b5bf5f6772a8b0f2c43b5f98e80a],
        [Sara], [M9cR2k7W], [25f9e794323b453885f5181f1b624d0b],

        // Vertikale Linie zwischen den Spalten
        table.vline(
          x: 1,
          start: 1,
          end: 5,
          stroke: 0.5pt + rgb("#1c90d0"),
        ),
      ),
      caption: [Der Salt wird zusätzlich in der Datenbank gespeichert. Der ist nicht geheim.],
    ) <zugangsdaten-hash-salt>
  ]
)

Jedes Mal, wenn Max sich jetzt einloggen wird, wird sein eingegebenes Passwort verschlüsselt an Instagram geschickt und die entnehmen dann den Salt von Max aus der Tabelle und berechnen erneut den Passwort-Hash. Dann wird mit dem gespeicherten Wert aus der Tabelle verglichen. Gleicher Wert $arrow$ erfolgreiches Login, sonst $arrow$ kein Login.


