#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Textcodierung

Bei der Textcodierung geht es also darum, wie der Computer Text (Buchstaben, Emojis, ...) speichern, darstellen und/oder übertragen möchte. Bevor wir unsere heutigen Computer hatten, gab es schon erste Technologien, die fähig waren, Buchstaben und Zahlen über Ferne zu übertragen. Schauen wir uns mal folgendes Beispiel an:

#text(
      size: 1.2em,
      weight: "bold",
        )[Das Fernschreibegerät mit Telex]
  
#grid(
  columns: (0.35fr, 1fr),
  gutter: 1em,
  [
    // #figure(image("../Bilder/fernschreibegeraet.jpg"), caption: "Der Fernschreiber 100 von Siemens")
    #image("../Bilder/fernschreibegeraet.jpg")
  ],
  [
    Das Gerät das Sie links sehen ist ein Fernschreibegerät, das mit dem Telex System mittels elektrischer Signale weltweit Nachrichten austauschen konnte. Quasi ein Vorgänger der schriftlichen Kommunikation, wie wir sie heute auf unseren Smartphones kennen.\
    Unten an der Tastatur konnte der Benutzer eine Nachricht schreiben, welche dann an einen anderen Benutzer gesendet werden konnte. Der konnte dann die Nachricht ausgedruckt auf seinem Stück Papier sehen. Aber was passierte zwischen Schreiben und Drucken im Hintergrund?

    Um diese Abfolge zwischen geschriebenem Buchstaben, Übertragung und ausgedrucktem Buchstaben zu verstehen, betrachten Sie die @telex-code.
  ]
)

#grid(
  columns: (1fr, 0.35fr),
  gutter: 1.2em,
  [
    Die Tabelle zeigt, wie die einzelnen Zeichen codiert wurden. Schwarz bedeutet, dass Strom fliesst, Weiss bedeutet, dass kein Strom fliesst. Wenn Sie beispielsweise den Buchstaben A eingeben, sendet der Fernschreiber zunächst ein Startimpuls. Dieses signalisiert dem empfangenden Gerät, dass nun ein neues Zeichen übertragen wird.\
Anschliessend werden fünf Bits übertragen. Beim A lautet die Folge: 
    
    Strom – Strom – kein Strom – kein Strom – kein Strom
    
    Zum Abschluss folgt ein Stoppimpuls, das das Ende des Zeichens signalisiert.\
    Der empfangende Fernschreiber liest diese Folge und vergleicht sie mit derselben Codetabelle. Dadurch erkennt er, dass die übertragene Zeichenfolge für den Buchstaben A steht, und kann diesen ausdrucken. Danach beginnt die Übertragung des nächsten Zeichens.

    Dieses Verfahren wird als Start-Stopp-Verfahren bezeichnet. Die Buchstaben wurden also nicht direkt übertragen, sondern zunächst in eine Folge von zwei möglichen Zuständen (Strom oder kein Strom) *codiert*.

    #v(2mm)

    #exo(
      exercise: [
        #v(-2mm)
        Für einen Buchstaben gibt es 1 Startimpuls, 5 Impulse (5 Bit) für das Zeichen und 1.5 Stoppimpulse (eigentlich kein Bit, sondern eine Zeit). Das Ganze dauert 150ms. Wie lange dauert ein einzelner Impuls? Wie viele Zeichen pro Minute sind möglich?],
      solution: [
        $150/7.5$ms $= 20$ms für die ersten 6 Impulse und $30$ms für den Stoppimpuls.\
        Eine Sekunde hat $1000$ms, dh. pro Sekunde können $1000/150 ≈ 6.67$ Zeichen geschrieben werden. Pro Minute bedeutet das $400$ Zeichen. Das ist nicht die schnellste Technologie aber sicher auch nicht so langsam, wie man sich das vielleicht vorstellt!
        ]
    )

    #v(3mm)

    #text(
      size: 1.2em,
      weight: "bold",
        )[Der Morsecode]

    Ein anderes System, um Texte über weite Strecken zu senden ist der Morsecode. Jeder Buchstabe wird durch eine Folge aus Punkten und Strichen dargestellt. Ein Punkt steht für ein kurzes Signal, ein Strich für ein langes Signal (siehe die Beispielbuchstaben in @morse-code). Die Zeichen sind unterschiedlich lang, ein E besteht beispielsweise aus einem einzelnen Punkt und das J aus einem Punkt und drei Strichen.

    
  ],
  [
    #v(-2mm)
    #figure(image("../Bilder/telex_code_1.jpg"), caption: "Der Telex Code",)<telex-code>
    #v(1mm)
    #figure(image("../Bilder/morse_code.png"), caption: "Morsecode")<morse-code>
  ]
)

/*
#text(
      size: 1.2em,
      weight: "bold",
        )[Der Morsecode]

#grid(
  columns: (1fr, 0.35fr),
  gutter: 1em,
  [
    Ein anderes System, um Texte über weite Strecken zu senden ist der Morsecode. Jeder Buchstabe wird durch eine Folge aus Punkten und Strichen dargestellt. Ein Punkt steht für ein kurzes Signal, ein Strich für ein langes Signal (siehe Beispiele in @morse-code).
  ],
  [
    #v(-7mm)
    
  ]
)
*/








#outline-colorbox(
  title: "Andere historische Textcodierungen",
  color: "purple",
  radius: 3pt,
  width: auto,
  )[
    #grid(
      columns: (1fr, 0.5fr),
      gutter: 1em,
      [
        Das Telex System oder der Morsecode waren nicht die einzigen, die es Menschen ermöglichte, Texte über weite Strecken zu senden. Der *Semaphor Code* wurde zum Beispiel in der Schifffahrt verwendet, um zwischen Booten über weitere Distanzen zu kommunizieren. Die Buchstaben werden durch unterschiedliche Postionen von zwei Flaggen dargestellt. Jede Stellung der Arme entspricht einem bestimmten Buchstaben (siehe rechts).

        
      ],
      [
        #v(-3mm)
        #image("../Bilder/semaphore_code.jpg")
      ]
    )

    #grid(
      columns: (0.3fr, 1fr),
      gutter: 1em,
      [
        #v(-11mm)
        #image("../Bilder/optical_telegraph.jpeg")
      ],
      [
        Ein ähnliches Prinzip wurde auch bei den optischen Telegrafen verwendet. In Frankreich entstand Ende des 18. Jahrhunderts ein Netz aus Telegrafentürmen, die über grosse Distanzen miteinander verbunden waren. Auf jedem Turm wurden bewegliche Signalarmen in verschiedene Positionen gebracht. Die nächste Station beobachtete das Signal und gab es an die nächste Station weiter. Auf diese Weise konnten Nachrichten über grosse Entfernungen übertragen werden.
      ]
    )
]

Keine grosse Überraschung, aber sowohl der Telex sowie auch der Morsecode sind heute von modernen Technologien überholt worden. Die Frage ist aber, warum war man mit diesen Lösungen nicht zufrieden?

#exo(
  exercise: [
    #v(-2mm)    
    Telex und Morsecode ermöglichten die Übertragung von Nachrichten über grosse Distanzen. Doch beide Verfahren haben ihre Schwachstellen. Versuchen wir sie herauszufinden.\
    Beim Telex wird jedes Zeichen mit 5 Bits codiert und beim Morsecode sind die Zeichen unterschiedlich lang.

    #set enum(numbering: "a.")
    + Wie viele verschiedene Zeichen könne mit 5 Bits grundsätzlich dargestellt werden?
    + Reicht diese Anzahl aus, um alle Zeichen darzustellen, die wir heute beim Schreiben benötigen?
    + Sie möchten die Nachricht "GE" übertragen. Schreiben Sie die entsprechende Folge aus Punkten und Strichen auf.
    + Könnte ein Empfänger anhand dieser Folge eindeutig die einzelnen Zeichen erkennen? Was müsste noch zusätzlich gesendet werden, damit die Eindeutigkeit gewährleistet ist?
    + Welche Eigenschaften müsste eine neue Zeichencodierung besitzen, damit sie die Schwachstellen von Telex und Morsecode möglichst gut löst?
    
  ],
  solution: [
    #set enum(numbering: "a.")
    + Bei 5 Bit gibt es $2^5=32$ Möglichkeiten. Das heisst 32 verschiedene Zeichen sind möglich.\
    + Nein. 32 Zeichen reichen nicht aus, um beispielsweise alle Gross- und Kleinbuchstaben, Zahlen, Satzzeichen und weitere Sonderzeichen (Emojis?) darzustellen.\
    + G ($-- dot$) und E ($dot$) zusammen ergibt $-- dot dot$\
    + Nein. Die Folge $-- dot dot$ könnte als GE verstanden werden, aber auch als Buchstabe Z. Der Empfänger weiss ohne zusätzliche Information also nicht, wo das G endet und das E beginnt. Es müsste also eine Pause oder ein zusätzliches Trennsignal zwischen den Zeichen gesendet werden.\
    + Eine geeignete (moderne) Zeichencodierung müsste genügend verschiedene Zeichen dartstellen können und eindeutig sein, damit der Empfänger weiss, wo ein Zeichen beginnt und endet. 
  ]
)

== ASCII Codierung

1963 wurde schliesslich der *ASCII-Code* eingeführt. Dieser verzichtete auf Start- und Stoppbits und wurde ursprünglich für alle Zeichen einheitlich auf 7 Bit festgelegt.\
Diese Zeichen beinhalten:

#grid(
  columns: (0.5fr, 0.7fr),
  gutter: 1em,
  [
    #v(-2mm)
    - 33 nicht druckbare Steuerzeichen
    - 95 echte Zeichen (siehe rechts)
  ],
  [
    #v(-9mm)
    #image("../Bilder/ascii_95_characters.svg")
  ]
)

Diese Codes für jedes einzelne Zeichen müssen Sie nicht auswendig lernen. Für das gibt es ASCII-Tabellen, welche Sie auch an der Prüfung benutzen dürfen. Schauen wir uns eine solche Tabelle konkret an ein paar Beispielen an:

#outline-colorbox(
  title: "ASCII-Tabelle lesen",
  color: "purple",
  radius: 3pt,
  width: auto,
  inset: 6pt,
  )[

    #grid(
      columns: (1fr, 0.73fr),
      gutter: 1em,
      [
        In der Tabelle sehen Sie, dass dem Buchstaben A der Wert 65 zugeordnet ist. Diese Zuordnung wurde festgelegt und jedes Zeichen erhält dadurch einen eindeutigen Code. Das kleine a hat zum Beispiel den Wert 97. Das sind Dezimalzahlen. Der Computer speichert die Informationen jedoch nicht als Dezimalzahlen, sondern binär.
      ],
      [
        #image("../Bilder/ascii_table_7bit_ausschnitt.png")
      ]
    )

    In der Tabelle finden Sie deshalb auch den hexadezimalen Wert. Die Hexadezimalschreibweise ist kompakter und benötigt weniger Platz als die vollständige binäre Darstellung. Beim Buchstaben A ist der hexadezimale Wert beispielsweise $41_16$. In Binärschreibweise entspricht dies: $100'0001_2$ (7 Bit!).

    #grid(
      columns: (0.6fr, 1fr),
      gutter: 1em,
      [
        #image("../Bilder/steuerzeichen_ascii.jpg")
      ],
      [
        Die sichtbaren Zeichen beginnen in der Tabelle erst ab dem Wert 32. Davor befinden sich sogenannte Steuerzeichen. Diese lösen bestimmte Aktionen aus. Einige davon sind Ihnen wahrscheinlich bereits bekannt: Mit backspace löschen Sie beispielsweise ein Zeichen, und mit new line erzeugen Sie einen Zeilenumbruch.
      ]
    )
  ]

Für die folgenden Aufgaben brauchen Sie eine ASCII-Tabelle, die Sie direkt unterhalb einsehen können.

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #exo(
      title: [],
      exercise: [
        #v(-2mm)    
        Schreiben Sie den folgenden Satz in ASCII, indem Sie die Codes in *dezimaler* Schreibweise hinschreiben:

        Macht Informatik Spass?
      ],
      solution: [77 97 99 104 116 32 73 110 102 111 114 109 97 116 105 107 32 83 112 97 115 115 63])
  ],
  [
    #exo(
      title: [],
      exercise: [
        #v(-2mm)
        Schreiben Sie den folgenden Satz in ASCII, indem Sie die Codes in *binärer* Schreibweise hinschreiben:

        Heute ist es schön😎
      ],
      solution: [1001000 1100101 1110101 1110100 1100101 0100000 1101001 1110011 1110100 0100000 1100101 1110011 0100000 1110011 1100011 1101000 1101111 1100101 1101110\
      Für das ö haben wir kein geeignetes ASCII-Zeichen gesehen, darum haben wir es mit oe ersetzt. Für das Emoji haben wir aber bisher keine Lösung...])
  ]
)

#figure(image("../Bilder/complete_7bit_ascii.jpg"))<ascii-table>

ASCII scheint also ebenfalls nicht ganz vollständig unsere modernen Anforderungen zu erfüllen. Zwei der Zeichen aus den Sätzen von den Aufgaben sind nicht in der Tabelle enthalten... Haben Sie eine Ahnung, warum Zeichen mit Akzent (é, â, ö, $tilde(n)$) nicht enthalten sind? Die Antwort liegt im A von ASCII.

== Weitere Codierungen

Eine naheliegende Ide war, ASCII zu erweitern: Statt 7 Bits verwendet man 8 Bits. Genau das machte IBM beispielsweise mit *Code Page 437*. Die ersten 128 Zeichen blieben unverändert und entsprachen ASCII. Die zusätzlichen 128 Zeichen wurden mit weiteren Buchstaben, Symbolen und grafischen Zeichen gefüllt.

#grid(
  columns: (0.55fr, 0.45fr),
  gutter: 1.5em,
  [
    #exo(
      exercise: [
        #v(-2mm)
        Wie viele verschiedene Zeichen können mit 8 Bits dargestellt werden? Wie viele davon kommen im Vergleich zu 7 Bits hinzu?
      ],
      solution: [
        $2^7=128$ und $2^8=256$. Es kommen also $128$ neue Zeichen dazu (doppelt so viele wie vorher).
      ]
    )

    Wenn wir uns die Code Page 437 in @codepage437 genauer betrachten, können wir schnell überprüfen, dass die Zeichen für die ASCII Werte dieselben sind wie vorher:\
    Nehmen wir mal den Grossbuchstaben A. In der Tabelle sehen wir, dass er in Zeile 4, Spalte 1 ist. Das kann man so lesen, dass der Hexadezimalwert von A $41_16$ ist. Das ist derselbe Wert, den A in der Tabelle in @ascii-table hat.

    Nun konnte man den Computer auch in Ländern mit Sprachen mit Umlauten (z.B. Schweiz) verkaufen. Ein paar der Zeichen sehen aber sehr speziell aus. Diese Linien, die man z.B. in der Zeile C sieht, dienten damals zur Hilfe, um grafisch zu malen. So sehen Sie in @norton-commander die rot eingezeichneten Quadrate entsprechen den Zeichen B3, C1 und C7 in der Code Page 437.

    #exo(
      exercise: [
        #v(-2mm)
        Ein Problem bleibt aber. 128 zusätzliche Zeichen reichen immer noch nicht für alle Sprachen auf der Welt. Kennen Sie ein Alphabet wessen Zeichen nicht in dieser Code Page 437 enthalten sind?
      ],
      solution: [
        Das kyrillische Alphabet, welches z.B. für die ukrainische, bulgarische oder auch russische Sprache verwendet wird, ist nicht in diesen Zeichen enthalten. Ein anderes Beispiel wäre auch das griechische Alphabet.
      ]
    )

    Deshalb wurden weitere Codepages entwickelt. Codepage 850 war beispielsweise stärker auf westeuropäische Sprachen ausgerichtet und enthielt dafür andere Zeichen als Codepage 437 (wobei die ursprünglichen ASCII-Zeichen dieselben blieben).
  ],
  [
    #figure(
      box(
        stroke: 0.5pt,
        inset: 2pt,
        image("../Bilder/codepage437_ibm1981.png"),
      ),
      caption: [Code Page 437, wie sie IBM 1981 darstellte. Die Reihen und Spalten sind Hexadezimalzahlen.]) <codepage437>
    #figure(
      image("../Bilder/norton_commander.png"),
      caption: [Der Norton Commander war eine frühere Version ihres heutigen Explorers/Finders auf ihrem Windows/Mac.])
      <norton-commander>
  ]
) 

#v(2mm)

#figure(
  grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 1em,
    [#image("../Bilder/codepages_example1.png")],
    [#image("../Bilder/codepages_example2.png")],
    [#image("../Bilder/codepages_example3.png")]
  ),
  caption: [Beispiele verschiedener Codepages. Sie finden noch einige mehr unter #link("https://de.wikipedia.org/wiki/Zeichensatztabelle")]
)

#v(2.5mm)

#grid(
  columns: (0.6fr, 0.45fr),
  gutter: 1.5em,
  [
    #v(1.5mm)
    Jetzt stellen Sie sich nun aber mal vor, Sie schreiben einen Text auf ihrem Computer in der Schweiz (Codepage 850). Anschliessend schicken Sie diesen Text an jemanden, dessen Computer griechisch eingestellt ist (Code Page 869). Die hexadezimalen Zahlen werden zwar korrekt übertragen – aber der Empfänger interpretiert sie mit einer anderen Tabelle. Aus einem Zeichen kann dadurch plötzlich ein völlig anderes Zeichen werden. 
  
  Diese falsche Interpretation können Sie in @norton-false sehen: Die Linien, welche in @norton-commander noch schön dargestellt wurden, entsprechen jetzt zum Teil dem Zeichen â.
  ],
  [
    #figure(
      image("../Bilder/norton_commander_false.png"),
      caption: [Der Norton Commander mit einer falschen Darstellung der Linien.])
      <norton-false>
  ]
  )

== Unicode und UTF

Die vielen verschiedenen Codepages führten zu einem grossen Problem: Es gab zwar immer mehr Zeichen, aber nicht überall dieselben. Ein Zeichen konnte auf einem Computer etwas anderes bedeuten als auf einem anderen. Es brauchte deshalb eine einheitliche Zeichencodierung, die möglichst alle Zeichen der Welt umfasst.

Die Idee dahinter ist zunächst einfach: Wenn wir mehr Bits verwenden, können wir viel mehr verschiedene Zeichen darstellen. Das sieht man ganz schnell, wenn man sich die Auswirkungen der Zweierpotenzen anschaut:

#pad(left: -6cm)[
  $
    2^7      &= 128 && "mögliche Zeichen bei 7 Bit (ASCII)" \
    2^8      &= 256 && "mögliche Zeichen bei 1 Byte (Codepage)" \
    2^16     &= 65'536 && "mögliche Zeichen bei 2 Bytes" \
    2^32     &= 4'294'967'296 && "mögliche Zeichen bei 4 Bytes"
  $
]

#grid(
  columns: (0.75fr, 0.25fr),
  gutter: 1.5em,
  [
    Genau hier setzt *Unicode* an. Unicode ist ein weltweit einheitliches System, bei dem Zeichen aus verschiedensten Sprachen eine eindeutige Nummer erhalten. Dazu gehören beispielsweise lateinische, griechische und chinesische Schriftzeichen, aber auch mathematische Symbole, Sonderzeichen und Emojis (siehe @unicode-examples).\
    Unicode beantwortet also einfach mal, welches Zeichen gehört zu welcher Nummer... Aber wie wird das nun codiert?
  ],
  [
    #v(-22mm)
    #figure(
      box(
        stroke: 0.5pt,
        inset: 2pt,
        image("../Bilder/unicode_characters-cropped.svg"),
      ),
      caption: [Ein paar Beispiele aus dem Unicode Verzeichnis.]) <unicode-examples>
  ]
)

#v(8mm)

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1em,
  [
    #v(-4mm)
    Hier kommt *UTF-8* ins Spiel. UTF steht für Unicode Transformation Format. UTF-8 ist eine Methode, Unicode-Zeichen so in Bytes umzuwandeln, dass häufig verwendete Zeichen möglichst wenig Speicherplatz benötigen.\
    Dabei werden je nach Zeichen 1 bis 4 Bytes verwendet. Das erinnert zunächst an den Morsecode: Wenn Zeichen unterschiedlich lang sind, stellt sich die Frage, wie der Computer weiss, wo ein Zeichen beginnt und endet?
  ],
  [
    #stickybox(rotation: 3deg)[
      #align(center)[
        *Überlegung 💭💡*
        #v(-2pt)
        Eine Möglichkeit wäre, jedes Zeichen immer mit 4 Byte zu speichern. Das wäre aber sehr verschwenderisch! Ein Text mit 100 Zeichen würde dann bereits 400 Byte benötigen – auch wenn viele dieser Zeichen mit deutlich weniger Platz auskommen würden (welche z.B.?)
      ]]
  ]
)

#v(3mm)

#grid(
  columns: (0.7fr, 1fr),
  gutter: 1em,
  [
    #v(-9mm)
    UTF-8 löst dieses Problem durch ein festgelegtes Muster für die einzelnen Bytes:

    - Ein Zeichen mit 1 Byte beginnt mit 0.
    - Ein Zeichen mit 2 Byte beginnt mit 110.
    - Ein Zeichen mit 3 Byte beginnt mit 1110.
    - Ein Zeichen mit 4 Byte beginnt mit 11110.
    - Alle nicht-führenden Zeichen beginnen mit 10.

    #outline-colorbox(
      title: "Eselsbrücke Zug",
      color: "blue",
      radius: 3pt,
      width: auto,
      )[
        Man kann sich das wie einen Zug vorstellen: Das erste Byte ist die Lokomotive und zeigt an, wie viele Wagen zum Zug gehören (3 Einsen bedeuten insgesamt 3 Wagen).\
        Die folgenden Bytes sind die Wagen und beginnen immer mit 10. So weiss der Computer, wann ein Zeichen endet.
      ]    
  ],
  [
    #align(right)[
      #image("../Bilder/utf_pattern.png", width: 47%)
    ]
    #v(-28mm)
    #figure(
      image("../Bilder/utf_trains.png"),
      caption: [UTF-8 kann man sich wie einen Zug vorstellen, bei welchem der führende Wagen einen bestimmten Code hat und die folgenden immer 10.]
    )
  ]
)

#v(2mm)
UTF-8 wurde so entwickelt, dass die ersten 128 Unicode-Zeichen den ASCII-Zeichen entsprechen. Diese benötigen deshalb weiterhin nur ein Byte. Erst bei weiteren Zeichen werden zwei, drei oder vier Bytes verwendet.

Damit verbindet UTF-8 die grosse Zeichenvielfalt von Unicode mit einer platzsparenden Speicherung und ist heute eine sehr verbreitete Möglichkeit, Unicode-Zeichen zu speichern und zu übertragen.

#grid(
  columns:(0.5fr, 0.5fr),
  gutter: 1em,
  [
    #v(2mm)
    #stickybox(rotation: -3deg)[
      #align(center)[
        *Immer Aktuell*
        #v(-2pt)
        Unicode wird laufend erweitert. Wenn Sie beispielsweise davon hören, dass ein neues Emoji eingeführt wird, muss dieses Emoji einen eigenen, neuen Platz im Unicode-System erhalten.
      ]]
  ],
  [
    #figure(
      image("../Bilder/spring26_emojis.png", width: 64%),
      caption: [Im Frühling 2026 neu eingeführte Emojis]
    )
  ]
)

#outline-colorbox(
  title: "UTF-8 Codierungsbeispiele",
  color: "purple",
  radius: 3pt,
  width: auto,
  )[
    #grid(
      columns: (0.1fr, 0.9fr),
      gutter: 1em,
      [
        #v(-4mm)
        #align(center + horizon)[
          #image("../Bilder/utf8_example_oe.png")
        ]
      ],
      [
        Das Zeichen ö ist im Unicode Verzeichnis an der Stelle $00$F$6_16$. Das ist eine $246_10$ oder auch eine *#text(fill:rgb("895aa9"))[$1111\'0110_2$]* (8 Bit). Das bedeutet, man braucht 8 Bit für die UTF-8-Codierung. Das entspricht einem Zug mit zwei Wagen (ein Zug mit nur einem Wagen hat 7 Bit zur Verfügung - das passt also nicht).\
        Das heisst, die Codierung von ö hat sicher schon mal die Form *$110$*x\'xxxx *$10$*xx\'xxxx. Jetzt füllt man einfach die obige binäre Zahl von rechts her in diese Form ein und füllt die übrigen x mit $0$ auf: 

        #align(center)[
          *#text(fill: rgb("#895aa9"), size: 1.5em)[$1111\'0110_2$]* #h(2mm)
          *#text(size:1.5em)[$arrow$]* #h(2mm)
          *#text(size: 1.5em)[$110$]* #h(-0.8mm)
          *#text(fill: rgb("#895aa9"), size: 1.5em)[$0\'0011$]* #h(2mm)
          *#text(size: 1.5em)[$10$]* #h(-0.8mm)
          *#text(fill: rgb("#895aa9"), size: 1.5em)[$11\'0110_2$]*
        ]
      ] 
    )

    #v(3mm)

    #grid(
      columns: (0.9fr, 0.1fr),
      gutter: 1em,
      [
        Das Emoji mit der Sonnenbrille ist an der 128'526. Stelle (HEX:1F60E). Das in binär übersetzt ergibt die Zahl *#text(fill: rgb("#895aa9"))[$0001\'1111\'0110\'0000\'1110_2$]* (20 Bit). Für das braucht man einen Zug mit insgesamt 4 Wagen, damit man die x besetzen kann. Der hat die Form *$1111\'0$*xxx *$10$*xx\'xxxx *$10$*xx\'xxxx* $10$*xx\'xxxx. Analog wie oben befüllt man von rechts her in die Form und füllt die übrigen Stellen mit 0:

        #align(center)[
          *#text(size: 1.5em)[$1111\'0$]* #h(-0.8mm)
          *#text(fill: rgb("#895aa9"), size: 1.5em)[$000$]* #h(2.5mm)
          *#text(size: 1.5em)[$10$]* #h(-0.8mm)
          *#text(fill: rgb("#895aa9"), size: 1.5em)[$01\'1111$]* #h(2.5mm)
          *#text(size: 1.5em)[$10$]* #h(-0.8mm)
          *#text(fill: rgb("#895aa9"), size: 1.5em)[$01\'1000$]* #h(2.5mm)
          *#text(size: 1.5em)[$10$]* #h(-0.8mm)
          *#text(fill: rgb("#895aa9"), size: 1.5em)[$00\'1110_2$]*
        ]
      ],
      [
        #v(-1mm)
        #align(center)[
          #image("../Bilder/utf8_example_sunglasses.png")
        ]
      ]
    )
    #v(1mm)
]

#v(2mm)
Hier folgen genügend Aufgaben, um das Codieren mit den gelernten Codierungen zu üben.

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #exo(
      title: [],
      exercise: [ 
        #v(-2mm)
        Nochmals zur Wiederholung von ASCII: Decodieren Sie die beiden codierten Wörter.
        
        #set enum(numbering: "a.")
        + $110\'0100$ #h(1mm) $110\'1111$ #h(1mm) $110\'0111$
        + $011\'1010$ #h(1mm) $111\'1011$ #h(1mm) $010\'1001$
      ],
      solution: [
        #set enum(numbering: "a.")
        + dog\
        + :{)
      ])
  ],
  [
    #exo(
      title: [],
      exercise: [
        #v(-2mm)
        Finden Sie die einzelnen Unicode Zeichen in folgendem Text:

        $0100\'1000$ #h(1mm) $0110\'0101$ #h(1mm) $0111\'1001$ #h(1mm) $1111\'0000$ #h(1mm)\ 
        $1001\'1111$ #h(1mm) $1001\'1000$ #h(1mm) $1000\'1001$ #h(1mm) $1100\'0011$ #h(1mm)\ 
        $1010\'0100$ #h(1mm) $0110\'1000$ #h(1mm) $0110\'1101$ #h(1mm) $1111\'0000$ #h(1mm)\ 
        $1001\'1111$ #h(1mm) $1000\'1111$ #h(1mm) $1000\'0001$
      ],
      solution: [
        - $0100\'1000$\
        - $0110\'0101$\
        - $0111\'1001$\
        - $1111\'0000$ #h(1mm) $1001\'1111$ #h(1mm) $1001\'1000$ #h(1mm) $1000\'1001$
        - $1100\'0011$ #h(1mm) $1010\'0100$
        - $0110\'1000$\
        - $0110\'1101$
        - $1111\'0000$ #h(1mm) $1001\'1111$ #h(1mm) $1000\'1111$ #h(1mm) $1000\'0001$
        Decodiert würde der Satz bedeuten: Hey😀ähm🌀
      ])
  ]
)

#v(2mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #exo(
      title: [],
      exercise: [ 
        #v(-2mm)
        Gegeben sind jeweils Zeichen und ihre jeweilige Stelle im Unicode-Verzeichnis. Codieren Sie sie mit UTF-8. Lassen Sie zur besseren Lesbarkeit zwischen den Bytes genügend Abstand.

        #grid(
          columns: (1fr, 1fr),
          gutter: 1em,
          [
            #set enum(numbering: "a.")
            + Q: 81
            + 💩: 128169
          ],
          [
            #set enum(numbering: "a.", start: 3)
            + ♥: 9829
            + ü: 252
          ]
        )
      ],
      solution: [
        #set enum(numbering: "a.")
        + $0101\'0001$\
        + $1111\'0000$ #h(1mm) $1001\'1111$ #h(1mm) $1001\'0010$ #h(1mm) $1010\'1001$
        + $1110\'0010$ #h(1mm) $1001\'1001$ #h(1mm) $1010\'0101$\
        + $1100\'0011$ #h(1mm) $1011\'1100$\      
      ])
  ],
  [
    #exo(
      title: [],
      exercise: [
        #v(-2mm)
        Welches ist der binäre Unicode, der in den folgenden UTF-8-Codes codiert sind? Schreiben Sie den Unicode mit so vielen binären Stellen, wie nötig sind und lassen Sie zwischen den Bytes genügend Abstand.

        #set enum(numbering: "a.")
        + $1110\'0010$ #h(1mm) $1000\'0010$ #h(1mm) $1010\'1100$
        + $1111\'0000$ #h(1mm) $1001\'1111$ #h(1mm) $1001\'0000$ #h(1mm) $1011\'0110$
      ],
      solution: [
        #set enum(numbering: "a.")
        + $10\'0000$ #h(1mm) $1010\'1100$
        + $1$ #h(1mm) $1111\'0100$ #h(1mm) $0011\'0110$
      ])
  ]
)

#v(2mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #exo(
      title: [],
      exercise: [ 
        #v(-2mm)
        Lesen Sie die relevanten Bits für jedes UTF-8 codierte Symbol. Rechnen Sie sie dann ins Hexadezimalsystem um und recherchieren Sie im Internet, um welches Unicode Zeichen es sich handelt.

        #set enum(numbering: "a.")
        + $1111\'0000$ #h(1mm) $1001\'1111$ #h(1mm) $1000\'1111$ #h(1mm) $1000\'0001$\
        + $1100\'0011$ #h(1mm)  $1010\'0100$
      ],
      solution: [
        #v(-1mm)
        #set enum(numbering: "a.")
        + $0\'0001$ #h(1mm) $1111\'0011$ #h(1mm) $1100\'0001$ $arrow$ 01F3CI $arrow$ 🏁
        + $000$ #h(1mm) $1110\'0100$ $arrow$ 0E4 $arrow$ ä
      ])
  ],
  [
    #exo(
      title: [],
      exercise: [
        #v(-2mm)
        Was wird hier codiert?

        #set enum(numbering: "a.")
        + $0100\'0111$ #h(1mm) $0110\'0101$ #h(1mm) $0110\'1101$ #h(1mm) $1100\'0011$\ $1011\'1100$ #h(1mm) $0111\'0011$ #h(1mm) $0110\'0101$
        + $0111\'0110$ #h(1mm) $0110\'1111$ #h(1mm) $0110\'1001$ #h(1mm) $0110\'1100$\ $1100\'0011$ #h(1mm)$1010\'0000$
      ],
      solution: [

      ])
  ]
)

