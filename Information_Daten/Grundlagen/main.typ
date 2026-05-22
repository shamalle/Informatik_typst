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
    Information und Daten - Grundlagen
  ],
  author: "MeT",
)

#show: conf.with(
  thema: "Information und Daten",
)

= Grundlagen

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
  ]
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
            
          ]
        )
      ]

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

#exo(
  title: [Ver- und Entschlüsselung],
  exercise: [Erklären Sie in Ihren eigenen Worten, warum folgender Ausdruck wahr ist: "You can have data without information, but you cannot have information without data."],
  solution: []
)

#exo(
  title: [Ver- und Entschlüsselung],
  exercise: [Erklären Sie in Ihren eigenen Worten am Beispiel vom Anfang (Bild oben mit dem Handzeichen), was hier mit "Daten" und "Information" gemeint ist."],
  solution: []
)


// Lösungen
#pagebreak()

#set heading(numbering: none)
#set page(columns: 2)

= Lösungen

#codly(zebra-fill: luma(240))
#exo-print-solutions(title: none) // Print collected solutions