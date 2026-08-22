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
        Rechnen wir mal nach. Für einen Buchstaben gibt es 1 Startimpuls, 5 Impulse (5 Bit) für das Zeichen und 1.5 Stoppimpulse (rein technisch, kein Bit, sondern eine Zeit). Das Ganze dauert 150ms. Wie lange dauert also ein einzelner Impuls?\ 
        Wie viele Zeichen kann man also pro Minute schreiben?],
      solution: [
        $150/7.5$ms $= 20$ms für die ersten 6 Impulse und $30$ms für den Stoppimpuls.\
        Eine Sekunde hat $1000$ms, dh. pro Sekunde können $1000/150 ≈ 6.67$ Zeichen geschrieben werden. Pro Minute bedeutet das $400$ Zeichen. Das ist nicht die schnellste Technologie aber sicher auch nicht so langsam, wie man sich das vielleicht vorstellt!
        ]
    )
  ],
  [
    #v(-2mm)
    #figure(image("../Bilder/telex_code_1.jpg"), caption: "Der Telex Code",)<telex-code>
  ]
)

#outline-colorbox(
  title: "Andere historische Textcodierungen",
  color: "purple",
  radius: 3pt,
  width: auto,
  )[
    Das Telex System war nicht das einzige, das es Menschen ermöglichte, Texte über weite Strecken zu senden. Sicher kennen Sie alle den *Morsecode*, bei dem Buchstaben aus einer Folge von Strichen und Punkten codiert werden. Auch der *Semaphorcode* im optischen Telegrafennetz ist ein interessantes Beispiel.
    ]

Was ist nun das Problem bei einer Technologie, bei dem die Zeichen mit 5 Bits übertragen werden?


== ASCII Codierung

== UTF-8 Codierungehm