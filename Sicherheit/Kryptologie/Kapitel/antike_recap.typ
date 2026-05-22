#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Kryptoanalyse der antiken Verschlüsselungsverfahren

Bis jetzt haben wir uns hauptsächlich mit der Kryptographie der antiken Verschlüsselungsverfahren beschäftigt. Das war eines der zwei Hauptgebiete der Kryptologie. Das andere war die Kryptoanalyse, also die Kunst, Verschlüsselungen zu knacken. Schauen wir uns doch die bisher gesehenen Verfahren an und überlegen, wie sicher sie sind.

#v(10pt)
_Verständnisaufgaben:_

#exo(
  exercise: [
    Überlegen Sie sich zu zweit für jedes der bisher gesehenen Verfahren eine mögliche Schwäche, die es angreifbar macht. Versuchen Sie anschliessend die Verfahren bezüglich ihrer Sicherheit zu ordnen: Welches scheint das Sicherste zu sein und welches das Schwächste? Warum?
  ],
  solution: [
    Wenn wir die Verfahren bezüglich ihrer Sicherheit ordnen und davon ausgehen, dass ein Angreifer nur durch reines Ausprobieren versucht, die Nachricht zu entschlüsseln, dann sind die Skytale und die Caesar-Verschlüsselung sehr unsicher. Mit Ausprobieren hat man hier sehr schnell Erfolg. Das scheint bei der allgemeinen monoalphabeteischen Substitution nicht ganz so einfach zu sein. Aber auch hier werden wir sehen, dass je nach Situation, etwas Geduld und logischem Denken das Verfahren ebenso von Hand geknackt werden kann. Wenn man die Rechenleistung von Computern hinzuzieht, sind hingegen alle Verfahren absolut unsicher.],
)

#exo(
  exercise: [
    Wir haben gesehen, dass Schlüsselräume sehr klein oder riesig sein können. Bedeutet, dass wenn ein Schlüsselraum riesig ist, dass das Verfahren automatisch zu 100% sicher ist? Kann man alle der bisher gesehenen Verfahren knacken oder nicht?
  ],
  solution: [
    Nein, der Schlüsselraum hilft vor allem wenn man durch reines Ausprobieren (Brute Force) den Schlüssel herausfinden möchte. Es gibt andere Methoden, wie man z.B. die allgemeine monoalphabetische Substitution knacken kann.],
)

#v(10pt)

Jetzt wo Sie sich schon ein paar Gedanken über die Sicherheit gemacht haben, versuchen Sie doch mal selbst diese Verschlüsselungen zu knacken. Das heisst, Sie bekommen in den folgenden Aufgaben *keinen* Schlüssel, sondern nur den Geheimtext.

#v(10pt)
_Praktische Aufgaben:_

#exo(
  exercise: [
    Folgende Geheimtext wurde mit dem Caesar-Verfahren erstellt: HLQH WROOH NODVVH. Die Verschiebung ist aber nicht bekannt. Finden Sie den Klartext heraus?
  ],
  solution: [EINE TOLLE KLASSE],
)

#exo(
  exercise: [
    Mit einer Skytale wurde ein Geheimtext geschrieben. Wenn man den Papierstreifen von oben nach unten liest, ergibt sich: GEOE UNRN TMG. Was könnte der Klartext sein?
  ],
  solution: [GUTEN MORGEN],
)

#grid(
  columns: (1.2fr, 0.6fr),
  gutter: 1em,
  [
    #exo(
      exercise: [
        Sie haben die verschlüsselte Nachricht rechts abgebildet abgefangen. Leider haben Sie keine weiteren Informationen ausser diesen Zettel. Können Sie die Nachricht trotzdem entschlüsseln? Wie gehen Sie vor?
      ],
      solution: [DER KLEINE RABE HAT HUNGER],
    )
  ],
  [
    #v(18pt)
    #figure(
      rotate(10deg)[
        #image("../Bilder/caesar_raetsel.png", width: 60%)],
    )
  ],
)

#grid(
  columns: (1.2fr, 0.6fr),
  gutter: 1em,
  [
    #exo(
      exercise: [
        Und wieder haben Sie eine verschlüsselte Nachricht bekommen. Leider haben Sie auch wieder keine weiteren Informationen ausser den Zettel. Können Sie die Nachricht trotzdem entschlüsseln?
      ],
      solution: [EIN STERN IN DER EISIGEN FERNE],
    )
  ],
  [
    #v(-12pt)
    #figure(
      rotate(10deg)[
        #image("../Bilder/amas_raetssel.png", width: 70%)],
    )
  ],
)
