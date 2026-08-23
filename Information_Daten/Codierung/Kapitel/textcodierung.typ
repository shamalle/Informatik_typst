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
    a) Bei 5 Bit gibt es $2^5=32$ Möglichkeiten. Das heisst 32 verschiedene Zeichen sind möglich.\
    b) Nein. 32 Zeichen reichen nicht aus, um beispielsweise alle Gross- und Kleinbuchstaben, Zahlen, Satzzeichen und weitere Sonderzeichen (Emojis?) darzustellen.\
    c) G ($-- dot$) und E ($dot$) zusammen ergibt $-- dot dot$\
    d) Nein. Die Folge $-- dot dot$ könnte als GE verstanden werden, aber auch als Buchstabe Z. Der Empfänger weiss ohne zusätzliche Information also nicht, wo das G endet und das E beginnt. Es müsste also eine Pause oder ein zusätzliches Trennsignal zwischen den Zeichen gesendet werden.\
    e) Eine geeignete (moderne) Zeichencodierung müsste genügend verschiedene Zeichen dartstellen können und eindeutig sein, damit der Empfänger weiss, wo ein Zeichen beginnt und endet. 
  ]
)

== ASCII Codierung

1963 wurde schliesslich der ASCII-Code eingeführt. Dieser verzichtete auf Start- und Stoppbits und wurde ursprünglich für alle Zeichen einheitlich auf 7 Bit festgelegt.\
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
      columns: (1fr, 0.71fr),
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



    





== UTF-8 Codierungehm