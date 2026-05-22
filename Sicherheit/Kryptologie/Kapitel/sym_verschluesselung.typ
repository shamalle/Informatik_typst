#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Symmetrische Verschlüsselung

#grid(
  columns: (3fr, 1fr),
  gutter: 1.5em,
  [
    Bei den bisherigen Beispielen ging es immer um die Verschlüsselung von Buchstaben. Sie erinnern sich aber vielleicht noch aus dem ersten Semester GYM1, dass wir zwar am Computer Buchstaben tippen können, aber schlussendlich werden im Computer nicht Buchstaben gespeichert, sondern was anderes, resp. in einer anderen Form.

    Versuchen Sie die folgenden zwei Fragen zu beantworten:
  ],
  [
    #v(-25pt)
    #figure(
      image("../Bilder/human-computer.png", width: 95%),
    )
  ],
)

#grid(
  columns: (2fr, 0.8fr),
  gutter: 1.5em,
  [
    #exo(
      exercise: [
        - Wie speichert der Computer Daten?
        - Wie, ganz konkret, speichert der Computer Buchstaben und sonstige Zeichen? Wie nennt man diesen Code?
      ],
      solution: [
        - Als 1 und 0, also als Bit-Folgen. Anders ausgedrückt: im binären Zahlensystem. Ja, es ist etwas lange her vermutlich😅
        - Die auf unserer Tastatur getippten Zeichen werden als ASCII-Zeichen gespeichert. Das sind Zahlen mit einer Länge von 7 Bit.
      ],
    )
  ],
  [
    #v(10pt)
    #stickybox(rotation: 4deg)[
      #align(center)[
        🚨 *Erinnerung* 🚨\
        *Verschlüsselung* und *Codierung* sind nicht dasselbe!\
        #text(size: 7pt)[(Siehe 1. Seite im Skript).]
      ]
    ]
  ],
)

#v(10pt)

Dementsprechend werden wir in den folgenden Beispielen nicht mehr Buchstaben und Zahlen verschlüsseln, sondern Bit-Folgen; nämlich genau das, was der Computer auf Ihrer SSD auch wirklich abspeichert.

#text(size: 1.2em, weight: "bold")[Ablauf beim Verschlüsseln]

Das Verfahren zur Verschlüsselung eines Texts in der digitalen Welt sieht im Allgemeinen also folgendermassen aus:

1. Codierung des Klartexts in eine Folge von binären Zahlen: Klartext $->$ binärer Klartext

2. Verschlüsselung dieser Zahlenfolge: binärer Klartext $->$ binärer Geheimtext

(3. Decodierung des binären Geheimtexts: binärer Geheimtext $->$ Geheimtext)

Den Schritt 1 müssen Sie sowieso machen, egal, ob Sie einen Text verschlüsseln wollen oder nicht. Wie gesagt, der Computer kann nur 0 und 1 speichern. Also müssen Sie Buchstaben mit Hilfe des ASCII-Codes in eine Zahl umwandeln. Schritt 2 ist die eigentliche Verschlüsselung. Schritt 3 ist in der Praxis witzlos. Aus dem ASCII-Code 65 (Buchstabe A) kann nach der Verschlüsselung z.B. der ASCII-Code 437 entstehen. Das ist aber dummerweise kein ASCII-Code mehr…
Schritt 3 fällt also weg resp. wir wandeln den binären Geheimtext, falls er für uns Menschen lesbar sein muss, einfach in die hexadezimale Darstellung um, damit er kürzer wird.


#text(size: 1.2em, weight: "bold")[Ablauf beim Entschlüsseln]

Die Entschlüsselung geschieht ganz normal umgekehrt:
1. Hexadezimaler Geheimtext in binären Geheimtext umwandeln

2. Binärer Geheimtext mit dem Schlüssel entschlüsseln

3. Binärer Klartext mit der ASCII-Tabelle umcodieren in lesbare Buchstaben


/*
#v(7pt)
#grid(
columns: (0.5fr, 5.5fr),
gutter: 0.2em,
[
  #figure(
      image("../Bilder/caution.png", width: 50%))
],
[
  Damit es in diesem Skript nicht allzu mühsam wird, nehmen wir für die folgenden Beispiele lediglich das Wort HALLO, das wir betrachten werden und das Sie in den Übungen verschlüsseln werden.
]
)
*/

#v(7pt)

#exo(
  exercise: [
    Codieren Sie das Wort HALLO mit Hilfe einer ASCII-Tabelle und schreiben Sie die Bit-Folge als binäre Zahl.

    _Tipp:_ Verwenden Sie den hexadezimalen Code auf der ASCII-Tabelle zum Umrechnen ins binäre Zahlensystem und verwenden Sie pro Buchstabe 7 Bit.
  ],
  solution: [
    #table(
      columns: 6,
      align: center,
      [*Klartext*], [H], [A], [L], [L], [O],

      [*ASCII hex*], [48], [41], [4C], [4C], [4F],

      [*ASCII*], [1001000], [1000001], [1001100], [1001100], [1001111],
    )
  ],
)

#v(10pt)

#grid(
  columns: (1fr, 2fr),
  gutter: 1.5em,
  [
    #stickybox(rotation: -4deg)[
      #align(center)[
        Das Umrechnen von einer zweistelligen hexadezimalen Zahl in die binäre Zahl müssen Sie können; das wird vorausgesetzt (umgekehrt ebenfalls).
      ]
    ]
  ],
  [
    Beachten Sie, dass Sie jetzt eben mal nur eine Codierung vorgenommen haben. Diese Bit-Folge ist noch keine Verschlüsselung! Jede Person, die den ASCII-Code kennt, kann Ihren Klartext lesen. Aber diese Bitfolge ist das, was der Computer in Wirklichkeit im Speicher abspeichert resp. dann als Nachricht von der einen Person zur anderen übertragen soll. Erst jetzt sind wir bereit und können mit der Verschlüsselung des Klartextes beginnen.
  ],
)

#v(10pt)

== XOR-Verschlüsselung: Eine Verschlüsselung auf Bit-Ebene

Die einfachste Verschlüsselung auf Bit-Ebene (und die Einzige, die wir aus Gründen der Komplexität anschauen), ist die sog. XOR-Verschlüsselung.

Falls Sie Digitaltechnik noch nicht angeschaut haben, können Sie XOR noch gar nicht kennen. Wenn doch, dann ist es eine kleine Wiederholung. Unten finden Sie ein Beispiel das einmal binär addiert und einmal mit XOR gerechnet wird:

#outline-colorbox(
  title: "Beispiel: Binäre Addition und XOR",
  radius: 2pt,
  width: auto,
)[
  #grid(
    columns: (0.2fr, 0.25fr, 1fr),
    gutter: 2em,
    [

      #table(
        columns: (auto, auto),
        stroke: none,
        align: (center + horizon, center + horizon),
        table.header([], [*00111010*]),
        [
          *\+*
        ],
        [
          *01100001*
        ],
        table.hline(),
        [
        ],
        [
          *10011011*
        ],
      )
    ],
    [
      #table(
        columns: (auto, auto),
        stroke: none,
        align: (center + horizon, center + horizon),
        table.header([], [*00111010*]),
        [
          \XOR
        ],
        [
          *01100001*
        ],
        table.hline(),
        [
        ],
        [
          *01011011*
        ],
      )
    ],
    [
      #v(5pt)
      Die Regel für XOR ist ganz einfach: Immer, wenn zwei Mal die gleiche Ziffer verknüpft wird, kommt eine 0 heraus. Sind die beiden Ziffern unterschiedlich, dann kommt unten 1 raus.
    ],
  )
]

#text(size: 1.2em, weight: "bold")[(A) Verschlüsseln]

Alles klar, jetzt wollen wir weiterfahren und wirklich etwas mit XOR verschlüsseln. Für das nehmen wir wieder unser Beispielklartext HALLO und schauen die ASCII Codierung davon an. So sieht es ja der Computer. Jetzt brauchen wir noch ein Schlüsselwort (ähnlich wie bei Vigenère), z.B. VELO2 und schauen auch hier die ASCII Codierung davon an. Dann können wir mal folgende Tabelle aufstellen:

#grid(
  columns: (3fr, 2fr),
  gutter: 1em,
  [
    #table(
      columns: 6,
      align: center,
      stroke: 0.5pt,

      [*Klartext*], [H], [A], [L], [L], [O],

      [*ASCII*],
      table.cell(fill: rgb("DCEEFF"))[1001000],
      table.cell(fill: rgb("DCEEFF"))[1000001],
      table.cell(fill: rgb("DCEEFF"))[1001100],
      table.cell(fill: rgb("DCEEFF"))[1001100],
      table.cell(fill: rgb("DCEEFF"))[1001111],

      [*Schlüssel*], [V], [E], [L], [O], [2],

      [*ASCII*],
      table.cell(fill: rgb("DCEEFF"))[1010110],
      table.cell(fill: rgb("DCEEFF"))[1000101],
      table.cell(fill: rgb("DCEEFF"))[1001100],
      table.cell(fill: rgb("DCEEFF"))[1001111],
      table.cell(fill: rgb("DCEEFF"))[0110010],
    )
  ],
  [
    #v(8pt)
    #stickybox(rotation: 4deg)[
      #align(center)[
        🚨 *Erinnerung* 🚨\
        Bis jetzt wurde noch nichts verschlüsselt, sondern nur codiert!
      ]
    ]
  ],
)

Um jetzt den Klartext mit dem Schlüssel zu verschlüsseln müssen wir einfach Schritt für Schritt durch die ASCII Werte, Spalte für Spalte gehen und mit XOR verknüpfen (die blauen Zellen).

#v(5pt)

#exo(
  exercise: [
    Versuchen Sie es gleich selbst an diesem Beispiel von oben. Verknüpfen Sie Schritt für Schritt die zwei ASCII Werte mit XOR. Die ersten drei Spalten habe ich Ihnen farbig markiert:

    #table(
      columns: 6,
      align: center,

      [*Klartext*],
      [#highlight(fill: yellow)[1]#highlight(fill: rgb("A7F3E0"))[0]#highlight(fill: rgb("F9A8D4"))[0]1000],
      [1000001],
      [1001100],
      [1001100],
      [1001111],

      [*Schlüssel*],
      [#highlight(fill: yellow)[1]#highlight(fill: rgb("A7F3E0"))[0]#highlight(fill: rgb("F9A8D4"))[1]0110],
      [1000101],
      [1001100],
      [1001111],
      [0110010],

      [*Geheimtext*],
    )

  ],
  solution: [
    0011110 0000100 0000000 0000011 1111101
  ],
)

#v(5pt)

Wenn Sie die Aufgabe gemacht haben, sollten Sie jetzt den Geheimtext als als Binärzahl haben. Wir wissen nicht, was diese binäre Zahlen für Zeichen sind. Das ist aber nicht sonderlich schlimm, weil der Geheimtext häufig gar nicht sinnvoll als ASCII-Zeichen dargestellt werden, resp. nicht als für uns lesbares ASCII-Zeichen in Form von Buchstaben, Zahlen oder Sonderzeichen. Warum nicht? Schauen Sie nochmals die folgende Tabelle an:

#v(5pt)

#grid(
  columns: (3.1fr, 2fr),
  gutter: 1.5em,
  [
    #table(
      columns: 6,
      align: center,

      [*Klartext*], [1001000], [1000001], [1001100], [1001100], [1001111],

      [*Schlüssel*], [1010110], [1000101], [1001100], [1001111], [0110010],

      [*Geheimtext*], [0011110], [0000100], [0000000], [0000011], [1111101],

      [*In HEX*], [1E], [04], [00], [03], [7D],
    )
  ],
  [
    #v(-2pt)
    #exo(
      exercise: [
        Finden Sie mit einer ASCII-Tabelle heraus, um welche Zeichen es sich hier handelt:\
        1E, 04, 00, 03, 7D. Was fällt Ihnen auf?
      ],
      solution: [
        Folgende Zeichen liest man aus der ASCII-Tabelle:
        #table(
          columns: 5,
          align: center,
          [1E], [04], [00], [03], [7D],

          [RS], [EOT], [NUL], [ETX], [}],
        )
        Das einzige sichtbare Zeichen ist das letzte, nämlich eine schliessende geschweifte Klammer. Alle anderen Zeichen sind zwar korrekte ASCII-Zeichen, aber es handelt sich um sog. Steuerzeichen, die man in der Regel gar nicht sieht.
        Im Internet (z.B. Wikipedia) finden Sie schöne Listen aller (historischen) Steuerzeichen. Zu Zeiten von TELEX und ähnlichem wurden die verwendet. Heutzutage sind sie zwar aus Kompatibilitätsgründen noch im ASCII-Code enthalten, werden aber nur noch selten verwendet.
      ],
    )
  ],
)

An der Prüfung müssen Sie also den binären Geheimtext nicht noch in lesbare Zeichen umwandeln. Verschlüsselt ist verschlüsselt und reicht uns.

#v(7pt)

#exo(
  exercise: [
    Kleine Zusatzüberlegung: Unter welchen Umständen ist ein Zeichen im Geheimtext 00?
  ],
  solution: [
    Dann, wenn das Zeichen im Schlüssel dem Zeichen im Klartext entspricht.
  ],
)

#text(size: 1.2em, weight: "bold")[(B) Entschlüsseln]

Im vorherigen Abschnitt haben wir folgenden Geheimtext erhalten: 0011110 0000100 0000000 0000011 1111101.

Natürlich müsste man das ja wieder entschlüsseln können und damit den Klartext zurückbekommen. Da wir hier von *symmetrischen Verschlüsselungen* sprechen, müsste das mit dem gleichen Schlüssel klappen, den man bei der Verschlüsselung gebraucht hat (bei asymmetrischen Verfahren braucht man verschiedene Schlüssel zum Ver- und Entschlüsseln!).

#v(7pt)

#exo(
  exercise: [
    Versuchen Sie selbst nun das vorher Gemachte rückgängig zu machen und den Geheimtext zu entschlüsseln! Damit Sie kein Durcheinander bekommen, können Sie gerne folgende Tabelle als Darstellungshilfe verwenden und ausfüllen:

    #grid(
      columns: (3.5fr, 2fr),
      gutter: 1em,
      [
        #table(
          columns: 6,
          align: center,

          [*Geheimtext*], [0011110], [0000100], [0000000], [0000011], [1111101],

          [*Schlüssel*], [1010110], [1000101], [1001100], [1001111], [0110010],

          [*Klartext\ (binär)*], [], [], [], [], [],

          [*In HEX*], [], [], [], [], [],

          [*Klartext\ (ASCII)*], [], [], [], [], [],
        )
      ],
      [
        #v(-1pt)
        Schritt für Schritt:

        1. Entschlüsseln Sie den Geheimtext, indem Sie wiederum die beiden Zeilen XOR-verknüpfen.
        2. Sie können die binären Zahlen im Klartext auch gleich als HEX-Zahl aufschreiben
        3. Und in der letzten Zeile schreiben Sie die passenden ASCII-Zeichen auf.
      ],
    )


  ],
  solution: [
    *Klartext (binär):* 1001000 1000001 1001100 1001100 1001111

    *In Hex:* 48 41 4C 4C 4F

    *ASCII:* H A L L O

    Haben Sie irgendwo eine falsche XOR-Verknüpfung drin, dann werden Sie nicht die korrekten Zeichen kriegen. Wenn aber alles geklappt hat, dann kriegen Sie in der Tat den Klartext, also unser HALLO wieder raus
  ],
)

#v(7pt)

Jetzt haben Sie gesehen, wie die Verschlüsselung und Entschlüsselung mit XOR funktioniert. Daher hier ein paar Fragen, um das Gelernte zu reflektieren:

#v(7pt)

#exo(
  exercise: [
    - Können Sie jeweils einen Vor- und Nachteil einer symmetrischen Verschlüsselung (gleicher Schlüssel zum Ver- und Entschlüsseln) nennen?
    - In einer vorherigen Aufgabe habe ich Sie gefragt, unter welchen Umständen im Geheimtext eine 00 rauskommt. Jetzt denken Sie diesen Aspekt weiter: Welche Implikation hat das darauf, wenn Sie einen Geheimtext mit Hilfe eines Schlüssels entschlüsseln wollen?
  ],
  solution: [
    - *Vorteil*: Man muss nicht mit 2 Schlüsseln hantieren und hat so sicher eine einfachere Grundlage.
    - *Nachteil*: Das Ganze ist etwas unsicherer, weil es halt nur einen Schlüssel braucht. Ein Angreifer muss nur den Schlüssel herausfinden und kann dann nicht nur entschlüsseln, sondern ungemerkt auch zwischen den Parteien mitschreiben oder Nachrichten fälschen.
    - Immer dort, wo Sie im Geheimtext eine 0 haben, können Sie einfach den Schlüssel abschreiben. Sie sparen sich also allenfalls ein wenig Zeit, ohne eine XOR-Verknüpfung machen zu müssen. Das gilt natürlich auch für den umgekehrten Weg, also für die Verschlüsselung.
  ],
)

#v(7pt)

== Blockchiffre

Im vorherigen Beispiel war der Schlüssel gleich lang wie die Nachricht respektive wie der Klartext. Dies ist in der Realität aber nur schwer durchzusetzen. Wissen Sie noch, was wir bei Vigenère gemacht haben, als das Schlüsselwort nicht gleich lang wie der Klartext war? Richtig, wir haben das Schlüsselwort einfach immer wiederholt, bis es die gleiche Länge wie der Klartext hatte.

Wählen wir also mal einen viel kürzeren Schlüssel als vorher: JA. Das ergibt also zuerst mal folgende Tabelle:





#grid(
  columns: (2.8fr, 2fr),
  gutter: 1em,
  [
    #table(
      columns: 6,
      align: center,
      [*Klartext*], [H], [A], [L], [L], [O],

      [*ASCII*], [1001000], [1000001], [1001100], [1001100], [1001111],

      [*Schlüssel*],
      [J],
      [A],
      table.cell(fill: rgb("D3D3D3"))[],
      table.cell(fill: rgb("D3D3D3"))[],
      table.cell(fill: rgb("D3D3D3"))[],

      [*ASCII*],
      [1001010],
      [1000001],
      table.cell(fill: rgb("D3D3D3"))[],
      table.cell(fill: rgb("D3D3D3"))[],
      table.cell(fill: rgb("D3D3D3"))[],
    )
  ],
  [
    #v(2pt)
    Man sieht schnell, dass der Schlüssel nur die ersten zwei Buchstaben des Klartexts abdeckt und drum der grau eingefärbte Teil leer bleibt.

    Also wiederholen wir den Schlüssel so lange, bis alle Zeichen des Klartexts abgedeckt sind.
  ],
)

Also ergibt sich dadurch die folgende Tabelle:

#grid(
  columns: (2.8fr, 2fr),
  gutter: 1em,
  [
    #table(
      columns: 6,
      align: center,
      [*Klartext*],
      table.cell(fill: rgb("DCEEFF"))[H],
      table.cell(fill: rgb("DCEEFF"))[A],
      table.cell(fill: rgb("FFFD74"))[L],
      table.cell(fill: rgb("FFFD74"))[L],
      table.cell(fill: rgb("DCEEFF"))[O],

      [*ASCII*],
      table.cell(fill: rgb("DCEEFF"))[1001000],
      table.cell(fill: rgb("DCEEFF"))[1000001],
      table.cell(fill: rgb("FFFD74"))[1001100],
      table.cell(fill: rgb("FFFD74"))[1001100],
      table.cell(fill: rgb("DCEEFF"))[1001111],

      [*Schlüssel*],
      table.cell(fill: rgb("DCEEFF"))[J],
      table.cell(fill: rgb("DCEEFF"))[A],
      table.cell(fill: rgb("FFFD74"))[J],
      table.cell(fill: rgb("FFFD74"))[A],
      table.cell(fill: rgb("DCEEFF"))[J],

      [*ASCII*],
      table.cell(fill: rgb("DCEEFF"))[1001010],
      table.cell(fill: rgb("DCEEFF"))[1000001],
      table.cell(fill: rgb("FFFD74"))[1001010],
      table.cell(fill: rgb("FFFD74"))[1000001],
      table.cell(fill: rgb("DCEEFF"))[1001010],
    )
  ],
  [
    Diese farbig markierten Bereiche nennt man Blöcke. Deshalb sprechen wir auch von einer *Blockchiffre*. Ein Block ist einfach genau so lang wie der Schlüssel, resp. allenfalls auch kürzer, wenn am Schluss noch was übrig bleibt (im Beispiel der zweite gelbe Block).
  ],
)

So, und jetzt würde man genau gleich vorgehen wie so wie wir schon gesehen haben. Bit für Bit mit XOR verknüpfen.

#exo(
  exercise: [
    Schreiben Sie die XOR-Verknüpfung des Klartexts HALLO mit dem Schlüssel JA von oben.
  ],
  solution: [
    Geheimtext (binär): 0000010 0000000 0000110 0001101 0000101
  ],
)

Jetzt sollten Sie einen anderen Geheimtext erhalten als vorher; natürlich einfach, weil der Schlüssel auch ein anderer ist. Als erstes hatten wir ja VELO2 als Schüssel, diesmal jedoch JAJAJ.

#v(7pt)

== Zwei Betriebsmodi zum Verschlüsseln von Blöcken

Wenn der Schlüssel nicht so lang ist wie die Nachricht selbst, dann haben wir eben mehrere Blöcke, wie wir das oben gesehen haben.
Es gibt nun zwei Modi, wie man die Verschlüsselung vornehmen kann.

#text(size: 1.2em, weight: "bold")[(A) Electronic Code Book (ECB)]

Das ist der Verschlüsselungsmodus, den Sie gerade kennengelernt haben. Hier werden die einzelnen Blöcke unabhängig voneinander XOR-verknüpft (oder allenfalls auch mit einer anderen kryptografischen Funktion, aber wir schauen wie gesagt hier nur XOR an). Das kann man schematisch so darstellen:

#v(10pt)

#figure(
  image("../Bilder/electronic_code_book.svg", width: 95%),
)

#v(10pt)

Diesen Betriebsmodus müssen wir hier also nicht noch mal anschauen, weil Sie vorhin genau das gemacht haben. Unsere drei Blöcke oben (die blau und gelb markierten) können wir unabhängig voneinander verschlüsseln.

*Vielleicht merken Sie es schon: Wir haben so eine ähnliche Unsicherheit drin, weil man so Wiederholungen feststellen kann, welche einem beim Knacken des Schlüssels helfen können.*

#v(7pt)

#text(size: 1.2em, weight: "bold")[(B) Cipher Block Chaining (CBC)]

Das schauen wir uns (vielleicht) das nächste Mal zusammen an.
