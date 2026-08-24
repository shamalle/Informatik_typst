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
        Schreiben Sie den folgenden Satz in ASCII, indem Sie die Codes in *dezimaler* Schreibweise hinschreiben:

        Macht Informatik Spass?
      ],
      solution: [77 97 99 104 116 32 73 110 102 111 114 109 97 116 105 107 32 83 112 97 115 115 63])
  ],
  [
    #exo(
      title: [],
      exercise: [
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

Eine naheliegende Ide war, ASCII zu erweitern: Statt 7 Bits verwendet man 8 Bits. Genau das machte IBM beispielsweise mit Code Page 437. Die ersten 128 Zeichen blieben unverändert und entsprachen ASCII. Die zusätzlichen 128 Zeichen wurden mit weiteren Buchstaben, Symbolen und grafischen Zeichen gefüllt.

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1em,
  [
    #exo(
      exercise: [
        Wie viele verschiedene Zeichen können mit 8 Bits dargestellt werden? Wie viele davon kommen im Vergleich zu 7 Bits hinzu?
      ],
      solution: [
        $2^7=128$ und $2^8=256$. Es kommen also $128$ neue Zeichen dazu (doppelt so viele wie vorher).
      ]
    )

    Wenn wir uns die Code Page 437 in @codepage437 genauer betrachten, können wir schnell überprüfen, dass die Zeichen für die ASCII Werte dieselben sind wie vorher:

    Nehmen wir mal den Grossbuchstaben A. In der Tabelle sehen wir, dass er in Zeile 4, Spalte 1 ist. Das kann man so lesen, dass der Hexadezimalwert von A $41_16$ ist. Das ist derselbe Wert, den A in der Tabelle in @ascii-table hat.


  ],
  [
    #figure(
      box(
        stroke: 1pt,
        inset: 4pt,
        image("../Bilder/codepage437_ibm1981.png"),
      ),
      caption: [Code Page 437, wie sie IBM für ihren Computer 1981 darstellte. Die Reihen und Spalten sind Hexadezimalzahlen.],) <codepage437>
    #figure(
      image("../Bilder/norton_commander.png"),
      caption: [Der Norton Commander war eine frühere Version ihres heutigen Explorers/Finders auf ihrem Windows/Mac.])
  ]
) 









#pagebreak()

Da ASCII nicht ausreichte für einen grossen Teil der Weltbevölkerung, hat man das Konzept weiterentwickelt. Zuvor hat man die Kosten von einem weiteren Bit gescheut, sich aber dann schlussendlich doch dafür entschieden, auf 8 Bit zu erweitern. Diese Systeme hatten dann andere Namen (ANSII, Codepage 437, Codepage 850, Unicode, ...).

Codepage 437:

IBM hatte 1981 bei der Einführung ihres Computers vorgehabt, ASCII zu nehmen und dann gemerkt, dass wenn man in der Schweiz oder anderen europäischen Länder den Computer verkaufen möchte, man wohl oder übel Umlaute braucht. Und darum haben die zwar ASCII genommen aber dann 1 Bit dazugenommen und somit von 7 Bit auf 8 Bit erweitert. Was bedeutet das? Wie viele zusätzliche Zeichen kriegen wir dann? Zusätzlich 128 Zeichen! (Aufgabe)

(Zeige hier die Tabelle von Codepage 437 mit dem Vergleich, was 1 Bit zusätzlich ausmacht.)

Also mit einem Bit hat man all die unteren Zeichen dazugewonnen inklusive all die mit den Umlauten. Sowie weitere Zeichen, die IBM damals als sinnvoll angeschaut hat. Diese komischen Linien wurden z.B. gebraucht, um Linien zu zeichnen. Also Grafiken zu erstellen, was sonst nicht möglich war.

(Beispiel vom Norton Commander, wo man die Linien sieht)

Das Problem bleibt halt immer noch, dass andere Sprachen schwieriger waren.. Deutsch war okay, aber dänisch oder spanisch wird schon schwieriger. Drum ein paar Jahre später ist Microsoft ein paar Schritte weitergegangen und hat eine Codepage 850 erstellt, welche spezifisch auf westeuropäische Sprachen spezialisiert war. Also all die speziellen LInien zeichen,, wurden dann effektiv mit Zeichen ersetzt, welche in westeuropäischen Sprachen benutzt werden. Speziell: Griechisch und Kyrillisch haben gefehlt... Darum hat man ganz viele Codepages definiert.. z.B. eine andere Codepage war extra für mitteleuropäisch und sollte albanisch,kroatisch, polnisch etc beinhalten.

Die Folge: Eine lange Liste von verschiedenen Codepages... (insert Liste von Codepages)

Aber das Problem besteht... Wenn ich meinen Computer auf westeuropäisch eingestellt habe und einen Brief auf Word schreibe. Diesen verschicke in ein Land, wo z.B. Kyrillisch verwendet wird. Dann konnte nicht sichergestellt werden, dass die Person am anderen Ende diesen Brief in sinnvollen ZEichen darstellen konnte...

insert Beispielbild, wo Zeichen falsch angezeigt werden, z.B. grad bei Norton Commander wenn die Linien als Buchstaben mit Umlauten angeziegt werden.

Schlussendlich blieb das ganze ein riesiges Chaos. Die erste 128 Zeichen blieben ASCII aber der Rest hat sich überall unterschieden. Wie konnte man das ganze vereinheitlichen?


== UTF-8 Codierung