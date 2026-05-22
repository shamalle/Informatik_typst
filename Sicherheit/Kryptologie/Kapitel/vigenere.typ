#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Vigenère Verschlüsselung

Die Vigenère Verschlüsselung wurde vom Franzosen Blaise de Vigenère im 16. Jahrhundert erfunden und galt fast 300 Jahre lang als unknackbar.

#grid(
  columns: (4fr, 1fr),
  gutter: 1em,
  [


    #outline-colorbox(
      title: "Verfahren",
      color: "purple",
      radius: 3pt,
      width: auto,
    )[
      In diesem Verfahren wird nach jedem Buchstaben eine Caesar-Verschlüsselung durchgeführt. Dafür nutzt man ein Schlüsselwort.

      Sie erinnern sich vielleicht daran, dass man bei Caesar das Alphabet um eine Anzahl Stellen verschiebt. Der Buchstabe des Schlüsselworts gibt also jeweils an, um wie viele Stellen das Alphabet verschoben wird, damit A zu diesem Buchstaben verschlüsselt wird.
    ]
  ],
  [
    #v(-10pt)
    #figure(
      image("../Bilder/vigenere.png", width: 90%),
    )
  ],
)

#v(2pt)

Das Verfahren von Vigenère ist ein *polyalphabetisches* Verfahren. Die Verfahren, die wir bis jetzt gesehen haben, waren monoalphabetische. Was ist denn jetzt genau dieser Unterschied?

#v(5pt)

#grid(
  columns: (1fr, 3fr),
  gutter: 1em,
  [
    #v(-5pt)
    #figure(
      image("../Bilder/caesar_E.png", width: 90%),
    )
  ],
  [
    Beim Caesar Verfahren wird ein Buchstabe immer mit dem gleichen ersetzt. Mit der Drehscheibe links (Schlüssel: E) ergibt der Klartext HALLIHALLO den Geheimtext LEPPMLEPPS. Wir sprechen hier von einem Monoalphabet, weil der Buchstabe L im Klartext im Geheimtext immer zum P wird. Egal, wie oft er vorkommt.

    Bei einem polyalphabetischen Verfahren wie das von Vigenère, sehen wir am gleichen Klartext HALLIHALLO (Schlüssel: KEY) am Beispiel unten, dass das L nicht immer zum gleichen Buchstaben wird. Das erste L wird zu einem J, das zweite zu V, dann ein P und dann wieder J.
  ],
)

#outline-colorbox(
  title: "Beispiel",
  radius: 2pt,
  width: auto,
)[
  Nehmen wir mal folgendes Beispiel mit dem Schlüsselwort KEY. Weil das Schlüsselwort kürzer als HALLIHALLO ist, wiederholen wir es einfach so oft, bis es die gleiche Länge wie der Klartext hat. Bei jedem einzelnen Buchstaben muss man die Drehscheibe entsprechend neu drehen.
  #figure(
    image("../Bilder/vigenere_example.png", width: 80%),
  )
]

#v(10pt)

#exo(
  exercise: [
    Vergleichen Sie das Verfahren von Vigenère mit der allgemeinen monoalphabetischen Substitution: Kann man hier ebenfalls die Häufigkeitsanalyse anwenden und so versuchen, die Verschlüsselung zu knacken? Begründen Sie Ihre Antwort.
  ],
  solution: [Der entscheidende Punkt bei Vigenère ist die Änderung der Statistik bezüglich Buchstabenhäufigkeiten: Ein Klartextbuchstabe wird nicht eindeutig einem Geheimtextbuchstaben zugeordnet. Die typische Sprachverteilung (z. B. viele E, selten Q) wird im Geheimtext also somit verschleiert. Das macht die Häufigkeitsanalyse deutlich schwieriger. Das Vigenère-Verfahren ist nicht unknackbar: Wenn der Schlüssel kurz oder wiederholend ist, kann man ihn oft doch noch mit mathematischen Verfahren und der Hilfe eines Computeres knacken.],
)

//#exo(
//  exercise: [
//    Haben wir nun ein absolut sicheres Verfahren? Könnte man es knacken? Oder haben Sie eine Idee, wie man noch sicherer werden könnte?
//  ],
//  solution: []
//)

#exo(
  exercise: [
    Manchmal spricht man bei Vigenère nicht von der Caesar-Scheibe, sondern von der Vigenère-Tabelle (siehe die Tabelle unten). Begründen Sie, warum die Scheibe sowie auch die Tabelle zum selben Ergebnis führen.
  ],
  solution: [Die Caesar-Scheibe und die Vigenère-Tabelle sind eigentlich dasselbe. In der ersten Zeile der Tabelle ist eigentlich eine Verschiebung von 0. In der zweiten Zeile ist dann eine Verschiebung von 1, in der dritten Zeile eine Verschiebung von 2 usw. Das heisst, anstatt mithilfe einer Drehscheibe zu drehen kann man auch einfach die Zeile der Tabelle auswählen, die der Verschiebung entspricht.],
)

#figure(image("../Bilder/vigenere_table.png", width: 85%))

#exo(
  exercise: [
    Verschlüsseln Sie ein von Ihnen gewähltes Wort oder einen kurzen Satz mithilfe des Vigenère-Verfahrens. Sie dürfen selbst ein Schlüsselwort wählen. Tauschen Sie anschliessend ihren Geheimtext mit Ihrer/m Sitznachbar/in und entschlüsseln Sie in einen Klartext.
  ],
  solution: [_Selbstüberprüfung_],
)







