#import "../../config/conf.typ": conf, shoutout

#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox

#exo-setup(
  solution-mode: "end-section",
  exercise-label: "Aufgabe",
  solution-label: "Lösung",
  correction-label: "Hinweise",
  badge-style: "border-accent",
  badge-color: blue,
  solution-color: olive,
)

#set document(
  title: [
    Grundlagen
  ],
  author: "TaT",
)

#show: conf.with(
  thema: "Information und Daten",
)

//= Grundlagen

#grid(
  columns: (0.75fr, 1fr),
  gutter: 0.5em,
  [
    #image("Bilder/kommunikation_information.png")
  ],
  [
    _Stellen Sie sich vor:_\
    Sie treffen sich mit einem Freund. Als er Ihnen entgegekommt, zeigt er Ihnen wortlos mit der Hand ein Zeichen, wie dasjenige auf dem Bild rechts. Solange er die Bedeutung nicht erklärt, gibt es verschiedene Möglichkeiten, was er vermitteln wollte:

    - Er meint, dass Sie *zwei* Mates für ihn kaufen sollen.
    - Er möchte Ihnen den Buchstaben *V* zeigen.
    - Er war gestern am Fechtturnier und möchte Ihnen nun mit dem *Victory*-Symbol nun zeigen, dass er gewonnen hat.
    - Er zeigt Ihnen das *Peace*-Zeichen, das in den 60er Jahren bei den Hippies populär war.
  ],
)

Wir erkennen also, dass das Zeichen selber und die Interpretation davon zwei verschiedene Dinge sein können. Das Zeichen ist ganz klar und kann das Gegenüber selber nachmachen. Die Interpretation davon kann aber von Person zu Person unterschiedlich sein.

#outline-colorbox(
  title: "Information, Daten, Code und Informationskanal",
  color: "blue",
  radius: 3pt,
  width: auto,
)[
  #grid(
    columns: (1fr, 0.79fr),
    gutter: 1em,
    [
      Eine *Information* ist eine für eine Person in einem bestimmten Kontext verständliche Aussage.

      *Daten* sind Darstellungen von Informationen. Also die Zeichen, Symbole, Gesten, usw... Diese können gesendet, empfangen und verarbeitet werden.

      Ein *Code* ist eine "Sprache", die festlegt, wie die Information vom Sender in Daten übersetzt (*Codierung*) und vom Empfänger wieder zurückübersetzt (*Decodierung*) werden kann.

      Der *Informationskanal* ist das Medium, über das die Daten übertragen werden.
    ],
    [
      #align(horizon)[#image("Bilder/daten_information_austausch.svg")]

    ],
  )
]

#v(3mm)

#grid(
  columns: (1fr, 0.95fr),
  gutter: 1.5em,
  [Eine Informationsübertragung kann nur dann funktionieren, wenn Sender und Empfänger denselben Code verwenden. Bei zwischenmenschlicher Kommunikation ist dies in der Regel die gesprochene Sprache, aber manchmal auch Gesten, Mimik, usw. In solchen Fällen kann es sein, dass der Empfänger den Code erraten, was zu Missverständnissen führen kann.],
  [
    #v(1mm)
    #stickybox(rotation: 3deg)[
      #align(center)[
        🚨 *Wichtig* 🚨
        #v(-2pt)
        Bei einem Code darf keine Information verloren gehen und eine Rückumwandlung muss möglich sein.
      ]]
  ],
)

#outline-colorbox(
  title: "Beispiele: Braille und QR",
  color: "purple",
  radius: 3pt,
  width: auto,
)[
  #grid(
    columns: (1fr, 0.5fr),
    gutter: 1em,
    [
      *Braille* ist eine Blindenschrift, bei der Buchstaben und Zeichen durch ertastbare Muster aus sechs erhabenen Punkten dargestellt werden. Es handelt sich um einen Code, weil es eine festgelegte Sprache ist, die definiert, wie Informationen zwischen Sender und Empfänger übertragen werden. Jedem Schriftzeichen ist genau ein Braille-Zeichen zugeordnet. Dadurch geht keine Information verloren und der ursprüngliche Text kann eindeutig wiederhergestellt werden.
    ],
    [
      #align(horizon)[#image("Bilder/braille.svg", width: 100%)]
    ],
  )
  #v(3mm)
  #grid(
    columns: (0.2fr, 1fr),
    gutter: 1em,
    [
      #v(-1.5mm)
      #align(horizon)[#image("Bilder/qrcode_lerbermatt.ch.png")]
    ],
    [Ein *QR-Code* ist ein quadratisches Muster aus schwarzen und weissen Feldern, das Informationen wie Texte oder Internetadressen maschinenlesbar speichert.
      Ein QR-Code ein Code, weil er Informationen nach festgelegten Regeln in ein anderes Format umwandelt. Die schwarzen und weissen Felder stehen dabei nicht zufällig für Daten, sondern folgen einer genau definierten Codierung. Ein QR-Code kann deshalb von einem Scanner gelesen und wieder in die ursprünglichen Informationen zurückübersetzt werden.],
  )
]

/*
#box(
  fill: rgb(211, 211, 211, 100),
  inset:10pt,
  radius: 3pt,
  [
    #grid(
      columns: (0.08fr, 1fr),
      gutter: 1em,
      [
        #align(horizon)[
          #align(center)[
            #box(
              fill: rgb("#ffffff"),
              outset: 5pt,
              radius: 3pt,
              [
                #image("../../global/Bilder/shoutout.png",width: 30pt)
              ]
            )
          ]
        ]
      ],
      [
        #align(horizon)[
          Die Informationsübertragung kann nur funktionieren, wenn SEnder und Empfänger denselben Code verwenden. Eine wichtige Bedingung an einen Code ist, dass keine Information verloren gehen darf und eine Rückumwandlung möglich sein muss.
        ]
      ]
    )
  ]
)

#shoutout("Hello")

#shoutout[Hello]
*/


#exo(
  title: [Ver- und Entschlüsselung],
  exercise: [Erklären Sie in Ihren eigenen Worten, warum folgender Ausdruck wahr ist: "You can have data without information, but you cannot have information without data."],
  solution: [Man kann Daten haben, ohne ihre Bedeutung zu verstehen (also ohne Information). Informationen können aber nur über Daten übermittelt oder dargestellt werden und existieren deshalb nicht ohne Daten.

    Beispiel: Die Zeichenfolge 3F7A9 sind Daten. Wer den Code oder den Zusammenhang nicht kennt, kann daraus keine Information gewinnen. Sobald bekannt ist, dass es sich um einen Türcode handelt, wird aus denselben Daten eine verständliche Information.],
)

#exo(
  title: [Ver- und Entschlüsselung],
  exercise: [Sie haben folgendes Beispiel eines Satzes, der mit Braille dargestellt wird. Geben Sie an, was hier die Information ist, was die Daten sind, was der Code und der Informationskanal ist.
    #align(center)[#image("Bilder/braille_frosch.svg", width: 70%)]],
  solution: [Die Information ist der Satz "ein kleiner Frosch". Die Daten sind die einzelnen Braille-Zeichen. Der Code ist die Braille-Schrift und der Informationskanal hier ist das Blatt Papier das Sie vor sich liegen haben.],
)

#v(10mm)


#text(
  size: 1.2em,
  weight: "bold",
)[Und was hat das jetzt alles mit Informatik zu tun?]


#grid(
  columns: (1fr, 0.38fr),
  gutter: 1em,
  [
    Der Computer versteht weder Deutsch noch Englisch oder andere natürliche Sprachen. Er verarbeitet ausschliesslich Daten, die nach genau festgelegten Regeln codiert sind. Damit der Computer weiss, was wir eingeben oder anzeigen möchten, müssen Texte, Zahlen, Bilder oder Töne in eine Form übersetzt werden, die er verarbeiten kann. Umgekehrt müssen die vom Computer verarbeiteten Daten wieder so decodiert werden, dass wir Menschen daraus Informationen gewinnen können.
  ],
  [
    #v(-10mm)
    #align(horizon)[#image("Bilder/conversation_human_robot.png", width: 100%)]
  ],
)

In diesem Abschnitt im Unterricht (_Information und Daten_) lernen wir also verschiedene Codes kennen, die in der Informatik verwendet werden. Sie werden unter anderem sehen, wie Zahlen im Binärsystem dargestellt werden, wie Texte codiert werden und wie Bilder im Computer gespeichert sind.

// Lösungen
#pagebreak()

#set heading(numbering: none)
#set page(columns: 2)

= Lösungen

#codly(zebra-fill: luma(240))
#exo-print-solutions(title: none) // Print collected solutions
