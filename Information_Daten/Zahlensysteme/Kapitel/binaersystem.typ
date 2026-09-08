#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Binärsystem

Vielleicht haben Sie schon einmal gehört, dass der Computer nicht in unserem Dezimalystem rechnet, sondern in einem anderen Zahlensystem. Vielleicht haben Sie es aber auch so nie direkt gehört sondern eher den Ausdruck: "Der Computer kennt nur 0 und 1".

Der Computer rechnet also nur mit 2 Zuständen: On /Off, Strom fliesst/Strom fliesst nicht, wahr/falsch oder eben anders gesagt: 0 oder 1. Die Zahl "2" so wie wir sie kennen, gibt es in seinem System nicht. Wie kann es aber sein, dass wir trotzdem mit dem Computer rechnen können und er uns auch uns bekannte Zahlen anzeigt? Das heisst, irgendwie muss es ja möglich sein, unsere Dezimalzahlen auch in seinem Zweiersystem, dem sogenannten *Binärsystem*, darzustellen. Wir gehen ähnlich vor wie mit dem Beispiel vom Kapitel vorher (siehe oben, 222 = 2 $dot$ 100 + 2 $dot$ 10 + 2 $dot$ 1).


#outline-colorbox(
  title: "Aufbau des Binärsystems",
  color: "blue",
  radius: 3pt,
  width: auto,
)[
  Zahlen im Binärsystem bestehen nur aus den Ziffern *0* und *1*. Da es sich um ein Stellenwertsystem mit der Basis 2 handelt (2 verschiedene Ziffern), hat jede Stelle einen Wert, der eine Zweierpotenz ist. Wir fangen ganz rechts mit der $2^0$ Stelle an, dann folgt die $2^1$ Stelle, die $2^2$ Stelle, die $2^3$ Stelle usw. Jede Stelle ist also ein Vielfaches von 2 und wir fangen von rechts an zu zählen. Schauen wir uns dafür ein Beispiel an:

  #grid(
    columns: (1fr, 0.8fr),
    gutter: 1.5em,
    [
    Die Zahl 1111 im Binärsystem schreiben wir analog wie das Beispiel von oben (222) auf. Aber anstatt Zehnerpotenzen, welche im Dezimalsystem verwendet werden, benutzen wir Zweierpotenzen. Somit ergibt sich der Wert 8+4+2+1=15.
    ],
    [ 
      #image("../Bilder/stellenwert_zweierpotenzen.png")
    ]
  )

  Sich zurechtzufinden, in welchem System man sich befindet, kann am Anfang etwas schwierig sein. Damit wir also von der gleichen Zahl sprechen, ist es üblich, die Basis des Zahlensystems direkt hinter die Zahl (tief) zu schreiben:

  - Die Zahl $1111_2$ bedeutet also nicht die Tausendeinhundertelf, wie wir sie kennen, sondern die binäre Zahl 1111 (gesprochen: Einseinseinseins), die im Dezimalsystem den Wert 15 hat.
  - Die Zahl $1111_10$ bedeutet also die Tauseneinhundertelf, wie wir sie kennen. Im Binärsystem sieht die Zahl anders aus, nämlich: $10001010111_2$. Für uns sind Dezimalzahlen so selbstverständlich, dass man die Basis 10 oft weglässt.
]

Jetzt haben wir eigentlich schon alles, was man über das Binärsystem wissen muss. Sie dürfen gerne  gleich weiter zu den nächsten Aufgaben springen und versuchen, diese zu lösen. Wenn Sie zuerst ein paar Beispiele sehen möchten, wie man vom Dezimalsystem ins Binärsystem und umgekehrt rechnet, können Sie sich die folgenden Beispiele anschauen. 

#outline-colorbox(
  title: "Binärsystem → Dezimalsystem",
  color: "purple",
  radius: 3pt,
  width: auto,
  )[
    Das ist der einfachere Weg. Wenn Sie eine binäre Zahl haben, schreiben Sie sich einfach von rechts her die Zweierpotenzen auf und addieren Sie die Werte, die mit einer 1 markiert sind. Das sieht dann wie folgt aus:

    #align(center)[
      #image("../Bilder/example_binary_to_decimal.png")
      ]
    ]

#outline-colorbox(
  title: "Dezimalsystem → Binärsystem",
  color: "purple",
  radius: 3pt,
  width: auto,
  )[

    #grid(
      columns: (0.5fr, 0.3fr),
      gutter: 1.5em,
      [
        *Variante 1* Für diese Umrechnung braucht es etwas mehr Zeit. Um von einer Dezimalzahl ins Binärsystem zu kommen, teilen Sie die Zahl immer wieder durch 2 und notieren Sie sich jeweils den Rest. Die Reste, die Sie aufschreiben, ergeben dann rückwärts aufgelistet die binäre Zahl. Das sieht dann wie folgt aus:
      
        *Variante 2* Dieser Weg führt Sie sicher zum richtigen Ergebnis. Mit etwas Übung geht es aber auch schneller: Überlegen Sie sich direkt, welche Zweierpotenzen Sie benötigen.
        Beginnen Sie mit der grössten Zweierpotenz, die kleiner oder gleich der Zahl ist. Bei 47 ist das 32. Die 32 passt *1*-mal hinein, es bleibt 15 übrig. Die nächste Zweierpotenz, 16, passt nicht mehr hinein (*0*-mal). Die 8 passt wieder *1*-mal hinein, es bleibt 7. Danach passen auch die 4, die 2 und die 1 jeweils *1*-mal hinein.
        
        Die fettgedruckten Ziffern ergeben somit direkt die Binärzahl $101111_2$.
      ],
      [
        #image("../Bilder/example_decimal_to_binary.png")
      ]
    )
  ]

#v(5mm)

#grid(
  columns: (1fr, 0.8fr),
  gutter: 2em,
  [
    #stickybox(rotation: -3deg)[
      #align(center)[
        *Wichtig!*
        #v(-2pt)
        Damit man den Überblick bei so langen binären Zahlen nicht verliert, ist es üblich, die Zahlen in Viererblöcke zu unterteilen. Von rechts nach links zählt man jeweils vier ab und macht dann einen Hochstrich. Wenn der linke Block nicht voll ist, füllt man ihn mit 0 auf.

        #table(
          columns: (auto, auto, 0.6cm, auto, auto),
          align: (right, left, center, right, left),
          stroke: none,
          
          [10010111],    [→ 1001\'0111],      [], [11011],       [→ 0001\'1011],
          [10111001101], [→ 0101\'1100\'1101], [], [111],         [→ 0111],
        )
      ]]
  ],
  [
    #exo(
      title: [],
      exercise: [
        Rechnen Sie die folgenden Binärzahlen ins Dezimalsystem um:
        #set enum(numbering: "a.")
          + $1001_2$
          + $0001\'0010_2$
          + $1011_2$
          + $1000\'0001_2$
          + $1010\'0000_2$
          + $0100\'0110_2$
      ],
      solution: [a) 9, b) 18, c) 11, d) 129, e) 160, f) 70])
  ]
)

#v(3mm)

#grid(
  columns: (1fr, 0.8fr),
  gutter: 1.5em,
  [
    #exo(
      title: [],
      exercise: [
        Am Bahnhof in St. Gallen sehen Sie folgende Uhr am Gebäude
        
        #image("../Bilder/binary_watch.png")

        Können Sie die Uhrzeit auf dem Bild ablesen? Versuchen Sie die aktuelle Zeit ebenso in dieser Darstellung zu schreiben.
          
      ],
      solution: [Die Uhrzeit auf dem Bild ist 17:09 Uhr und 23 Sekunden.])
  ],
  [
    #v(2.5mm)
    #exo(
      title: [],
      exercise: [
        Wandeln Sie folgende Zahlen in eine binäre um: 
        #set enum(numbering: "a.")
          + 15
          + 96
          + 19
          + 131
          + 72
          + 128
      ],
      solution: [a) 1111, b) 0110\'0000, c) 0001\'0011, d) 1000\'0011, e) 0100\'1000, f) 1000\'0000])

    #v(5mm)

    #exo(
      title: [],
      exercise: [
        Warum darf man bei einer binären Zahl zwar von links her mit 0 auffüllen, aber nicht von rechts her?
      ],
      solution: [Wenn man von links her mit 0 auffüllt, ändert sich der Wert der Zahl nicht. Zum Beispiel wenn man bei der Zahl $11_2$ von links eine 9 auffüllt, kommt ja nur $0 dot 4$ hinzu. Wenn man hingegen von rechts eine 0 anhängt wird aus $11_2 = 1 dot 2 + 1 dot 1 = 3$ dann die Zahl $110_2 = 1 dot 4 + 1 dot 2 + 0 dot 1 = 6$.)]
      )
  ]
)

#v(2mm)

#exo(
  title: [],
  exercise: [
    Für diese Aufgabe brauchen Sie ein Set von Zauberkarten und arbeiten in einem Zweierteam. Jemand von Ihnen ist der/die Zauberer/Zauberin (*ZA*), die andere Person ist Zuschauer (*ZU*). Bestimmen Sie, wer welche Rolle bekommt und ZA kann bei der Lehrperson nach einem Stapel Karten fragen.\
    *Ab hier liest nur noch ZA die Anweisungen und ZU schaut nicht mehr auf das Blatt!*

    Anweisungen an *ZA*:

    1. Mische die 6 Karten zufällig und lege sie auf einen Stapel.
    2. Fordere *ZU* auf, sich eine Zahl zwischen 0 und 63 auszudenken, nicht zu verraten und verdeckt auf einen Zettel zu schreiben.
    3. Decke nacheinander die 6 Karten auf und frage jeweils *ZU*, ob sich die ausgedachte Zahl darauf befindet.
      - Falls "Ja", lege die Karte auf deine linke Seite und zähle immer die erste Zahl auf dieser Karte dazu.
      - Falls "Nein", lege die Karte auf deine rechte Seite und ignoriere sie.
    4. Wenn du jetzt alle Karten durchgefragt hast und jeweils die Zahlen addiert hast von den "Ja"-Karten, verkünde diese Summe an *ZU*. Es sollte die Zahl sein, die auf dem Zettel notiert worden ist.

    _Falls es nicht funktioniert hat, hast entweder du dich verrechnet oder ZU hat dir eventuell eine falsche Antwort geliefert._

    Warum funktioniert dieser Zaubertrick? Können Sie ihn erklären?
  ],
  solution: [Die Antworten von ZU geben die binäre Darstellung der Zahl an. Falls die Zahl auf der Karte steht, ist die Ziffer 1, falls nicht, ist die Ziffer 0. Die Summe der Zahlen auf den Karten, die mit "Ja" beantwortet wurden, ergibt dann die Zahl, die sich ZU ausgedacht hat. Die Zahlen, die man sich nämlich ausdenkt, findet man nur auf denen Karten, mit der man die Zahl als Summe von Zweierpotenzen darstellen kann.]
)

== Im Binärsystem rechnen und zählen

Wie im Dezimalsystem auch, kann man im Binärsystem auch rechnen. Ihr Computer macht das schliesslich ständig. Als kleine Repetition schauen wir uns zuerst nochmals die Addition im Dezimalsystem an:

#grid(
  columns: (0.6fr, 0.4fr),
  gutter: 1.5em,
  [
    Man schreibt die zu addierenden Zahlen übereinander und fängt von rechts her in Spalten zu addieren. Wenn die Summe einer Spalte grösser als 9 ist, schreibt man die Einerstelle auf und merkt sich die Zehnerstelle als kleine 1 auf der nächsten Spalte (Übertrag). Also bei $7+8=15$ schreibt man sich die 5 auf und eine kleine 1 auf der nächsten Spalte. So geht man von rechts nach links, bis es nichts mehr zu addieren gibt.
  
  ],
  [
    #v(2mm)
    #image("../Bilder/addition_decimal.png")
  ]
)

Im Binärsystem gibt es eigentlich die analogen Regeln auch. Im Dezimalsystem gibt es 10 Ziffern (von 0 bis 9) und sobald etwas grösser ist, gibt es einen Übertrag. Analog gibt es im Binärsystem nur 2 Ziffern (0 und 1) und sobald etwas grösser als 1 ist, gibt es einen Übertrag. 

#grid(
  columns: (0.7fr, 0.3fr),
  gutter: 1.5em,
  [
    #image("../Bilder/addition_binary.png")
  ],
  [
    #v(-4mm)
    #outline-colorbox(
      title: "Regeln der Addition",
      color: "blue",
      radius: 3pt,
      width: auto,
      )[
        - $0+0=0$
        - $0+1=1$
        - $1+0=1$
        - $1+1=0$ _Übertrag_ $1$
      ]
  ]
)

Hinweis: Auch Subtraktion, Multiplikation und Division sind im Binärsystem möglich. Da sie nach denselben Regeln wie im Dezimalsystem funktionieren, beschränken wir uns hier auf die Addition.

#v(3mm)


#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #stickybox(rotation: -3deg)[
      #align(center)[
        *Bemerkung 🔍*

        #v(-2pt)

        In der Informatik nennt man eine einzelne binäre Ziffer ein *Bit*. 8 Bits ergeben ein *Byte*.

        #v(-4pt)

        #table(
          columns: (auto, auto, auto),
          column-gutter: 10pt,
          align: (left, left, left),
          stroke: none,
          [*Beispiele:*], [101], [→ 3 Bit],
          [], [1011'0011], [→ 1 Byte],
        )
      ]
    ]
  ], 
  [
    #exo(
      exercise: [
        Addieren Sie die folgenden binären Zahlen:
        #set enum(numbering: "a.")
          + $11_2 + 1110_2$ 
          + $1100_2 + 0011_2$ 
          + $11111_2 + 00001_2$
          + $1111\'1111 + 0000\'0001$ aber der Computer hat nur Platz für 8 Bits (1 Byte)?
      ],
      solution: [a) $10001$, b) $1111$, c) $100000$, d) $0000\'0000$ (eigentlich mit Übertrag 1, aber weil es nicht mehr gespeichert werden kann, löscht der Computer diesen Übertrag. Der Wertebereich fängt wieder von vorne an.] 
    )
  ]
)

#v(3mm)