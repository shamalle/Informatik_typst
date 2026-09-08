#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

== Allgemeine monoalphabetische Substitution

Bei der Caesar-Verschlüsselung wird jedem Buchstaben durch eine Verschiebung ein anderer zugewiesen. Was, wenn man jetzt nicht durch eine Verschiebung einen Buchstaben zuweist?

#v(5pt)

#outline-colorbox(
  title: "Verfahren",
  color: "purple",
  radius: 3pt,
  width: auto,
)[
  Bei der allgemeinen monoalphabetischen Substitution wird jedem Buchstaben des Alphabets ein anderer Buchstabe (zufällig) zugeordnet. Das könnte wie folgt aussehen:
  #figure(image("../Bilder/amas_schema.png", width: 90%))
  Um Missverständnisse zu vermeiden, nennen wir das obere Alphabet das Klartext-Alphabet und das untere (das, was zufällig erstellt wird) das Geheimtext-Alphabet. Das Geheimtext-Alphabet ist der Schlüssel in diesem Verfahren.
]

#v(5pt)

Im Gegensatz zu den vorherigen Verschlüsselungsverfahren, werden hier Buchstaben nicht nur verschoben. Sie werden durch andere Buchstaben ganz ersetzt. Darum handelt es sich hier um eine Verschlüsselung durch *Substitution*.

#outline-colorbox(
  title: "Beispiel",
  radius: 2pt,
  width: auto,
)[
  Mit dem obigen Schlüssel wird der Klartext EIN KLEINER HUND zum Geheimtext SZD PUSZDSV RKDT. Der Schlüssel ist QEHTSIYRZJPUGDXFMVBAKNLWCO.
]

#v(10pt)

Wir haben jetzt schon mehrmals vom Schlüsselraum geredet. Wie viele mögliche Schlüssel gibt es denn bei der allgemeinen monoalphabetischen Substitution? Diese Zahl muss man sich durch eine Überlegung herleiten. Fangen wir mit dem ersten Buchstaben A an. Wir können ihm irgendeinen beliebigen Buchstaben zuordnen. Davon haben wir 26 zur Auswahl. Wenn wir nun dem Buchstaben B einen zuordnen wollen, haben wir aber nur noch 25 zu Auswahl, weil einer ja schon an A vergeben wurde. Wenn wir nun zu C kommen, gibt es nur noch 24 zur Auswahl. Und das geht so weiter.

#v(5pt)
#figure(image("../Bilder/amas_schluesselraum.png"))
#v(5pt)

Daraus ergibt sich 26 Möglichkeiten $dot$ 25 Möglichkeiten $dot$ 24 $dot$ 23 $dot$ ... $dot$ 3 $dot$ 2 $dot$ 1. Wenn Sie das im Taschenrechner eingeben, ergibt das 403'291'461'126'605'635'584'000'000 Möglichkeiten für eine Verschlüsselung! Das ist ein sehr grosser Schlüsselraum.

#v(10pt)

//#exo(
//  exercise: [
//  Beantworten Sie folgende Fragen:

//  - Ist dieses Verfahren sicher?

//  - Könnte man es knacken? Und wenn ja, wie?


//  ],
//  solution: []
//)


#exo(
  exercise: [
    Verschlüsseln Sie den Klartext HALLO WIE GEHTS mit dem Schlüssel EIPCVTFHKRLNGJOYZQXWBDMASU.
  ],
  solution: [
    #v(-2mm)
    HENNO MKV FVHWX
  ],
)

#exo(
  exercise: [
    Entschlüsseln Sie den Geheimtext TQVKWEF KXW KJTOQGEWKL WEF mit dem Schlüssel aus Aufgabe 7.
  ],
  solution: [
    #v(-2mm)
    FREITAG IST INFORMATIK TAG
  ],
)

#exo(
  exercise: [
    Das Caesar-Verfahren und die allgemeine monoalphabetische Substitution sind miteinander verwandt. Man sagt, das Eine ist der Spezialfall vom Anderen. Können Sie in Ihren eigenen Worten erklären, was damit gemeint ist?
  ],
  solution: [
    #v(-2mm)
    Die Caesar Verschlüsselung ist ein Spezialfall der allgemeinen monoalphabetischen Substitution, weil sie auch eine monoalphabetische Substitution ist. Es ist nicht eine ganz zufällige Zuordnung der Buchstaben, sondern genau die Zuordnung die sich durch eine Verschiebung ergibt.],
)
