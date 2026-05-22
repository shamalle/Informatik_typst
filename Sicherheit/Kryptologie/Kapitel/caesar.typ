#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

== Caesar Verschlüsselung

Der römische Feldherr Gaius Julius Caesar benutzte eine einfache Verschlüsselungsmethode, um seine militärischen Nachrichten zu schützen. Der römische Schriftsteller Sueton hat Folgendes überliefert:

_..., wenn etwas Geheimes zu überbringen war, ordnete er die Buchstaben so, dass kein Wort gelesen werden konnte: Um diese zu lesen, tauscht man den vierten Buchstaben, also D für A aus und ebenso mit den restlichen._

#v(5pt)

#outline-colorbox(
  title: "Verfahren",
  color: "purple",
  radius: 3pt,
  width: auto,
)[
  #grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    [
      Cäsar hat also jeden Buchstaben seiner Nachrichten durch den Buchstaben ersetzt, welcher im Alphabet drei Stellen weiter hinten steht. Der Buchstabe D, welcher für A eingesetzt wird, wird *Schlüssel* genannt. Er muss bekannt sein, um die Nachricht wieder entschlüsseln zu können.
    ],
    [
      #figure(
        image("../Bilder/caesar_schema.png", width: 90%),
      )
    ],
  )]

#v(5pt)

Zur einfachen Anwendung kann eine Caesar-Drehscheibe verwendet werden.

#grid(
  columns: (0.45fr, 1fr),
  gutter: 1em,
  [
    #figure(
      image("../Bilder/caesar_scheibe.jpg", width: 90%),
    )
  ],
  [
    Die Verschüsselung erfolgt, indem man auf der äusseren Scheibe den Klartextbuchstaben sucht und durch den Buchstaben des Geheimtextalphabets auf der inneren Scheibe ersetzt, welcher genau darunter steht.

    #outline-colorbox(
      title: "Beispiel",
      radius: 2pt,
      width: auto,
    )[
      Die Nachricht MORGEN UM ZEHN wird verschlüsselt zu PRUJHQ XP CHKQ.
    ]
    Heute wird jede Verschlüsselung, die auf einer Verschiebung des Alphabets beruht, eine Caesar-Verschlüsselung genannt.
  ],
)

#v(20pt)

#exo(
  exercise: [
    Verschlüsseln Sie den Klartext HEUTE IST FREITAG mit Verschiebung 11.
  ],
  solution: [SPFEP TDE QCPTELR],
)

#exo(
  exercise: [
    Entschlüsseln Sie den Geheimtext VAWKGFFWKUZWAFL mit Verschiebung 18.
  ],
  solution: [DIE SONNE SCHEINT],
)

#exo(
  exercise: [
    Wählen Sie selbst eine Verschiebung und verschlüsseln Sie einen Text mit diesem Schlüssel. Geben Sie den Geheimtext und den Schlüssel an eine andere Person weiter zum Entschlüsseln.
  ],
  solution: [Selbstüberprüfung],
)

#exo(
  exercise: [
    Beantworten Sie folgende Fragen:

    - Wie gross ist der Schlüsselraum in diesem Verfahren?

    //- Ist das Caesar-Verfahren sicher? Begründen Sie Ihre Antwort.

    //- Wir haben einen Text vor uns, der mit Caesar verschlüsselt wurde. Wir wissen aber nicht, um wie viel die Scheibe gedreht wurde. Wie können wir den Text trotzdem entschlüsseln?

    - Überlegen Sie sich, warum die Verschiebung um 13 eine besondere Eigenschaft hat. _Tipp_: Was passiert wenn ich einen Text zweimal mit Verschiebung 13 verschlüssele?
  ],
  solution: [
    - Es gibt 26 mögliche Verschiebungen, also 26 mögliche Schlüssel. Der Schlüsselraum hat also die Grösse 26. Hinweis. Die Verschiebung um 0 ist ja auch eine, auch wenn sie natürlich etwas witzlos ist.
    - Die Verschiebung um 13 ist insofern besonders, weil sie genau die Hälfte des Alphabets entspricht. Dadurch entsteht eine spezielle Eigenschaft: Wenn man zweimal mit 13 verschlüsselst erhältst man wieder den ursprünglichen Text.
  ],
)
