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
      
        *Variante 2* Dieser Weg führt Sie sicher zum richtigen Ergebnis. Falls es Ihnen aber zu umständlich ist, können Sie mit etwas Überlegen zum gleichen Ergebnis kommen. Sie überlegen sich einfach direkt, welche Zweierpotenzen Sie brauchen. Fangen Sie mit der grössten Zweierpotenz an, die kleiner oder gleich der Zahl ist, die Sie umrechnen möchten: In die 47 passt zum Beispiel *1* Mal die 32 rein und übrig bleibt 15. Die nächste Zweierpotenz, 16, passt nicht mehr rein (*0* Mal). Aber die 8 passt in 15 wieder *1* Mal rein und übrig bleibt 7. Dort passt die 4 wieder *1* Mal rein und übrig bleibt 3. Weiter passt die 2 wieder *1* Mal rein und im Rest 1 passt auch die 1 wieder *1* Mal rein. Die fetten Zahlen aufgeschrieben ergibt sich $101111_2$.
      ],
      [
        #image("../Bilder/example_decimal_to_binary.png")
      ]
    )
  ]

Hier folgen ein paar Aufgaben, damit Sie das Umrechnen vom Dezimalsystem ins Binärsysten und umgekehrt üben können.