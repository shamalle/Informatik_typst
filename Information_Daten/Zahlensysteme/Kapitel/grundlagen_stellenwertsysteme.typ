#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Grundlagen eines Stellenwertsystems

In einem Stellenwertsystem hängt der Wert einer Ziffer davon ab, an welcher Stelle sie steht. Die Zahlen, die wir jeden Tag benutzen sind ein Beispiel für ein Stellenwertsysten. Wir nennen es das *Dezimalsystem*, weil es auf der Zahl 10 basiert (_lateinisch: decem = zehn_).

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    Im Dezimalsystem bedeutet die Zahl 222 beispielsweise:
    
    222 = 2 $dot$ 100 + 2 $dot$ 10 + 2 $dot$ 1
  
    Obwohl dreimal dieselbe Ziffer verwendet wird, hat jede Stelle eine andere Bedeutung: Die rechte 2 steht für Einer. Die mittlere 2 steht für Zehner und die linke 2 steht für Hunderter.
  ],
  [#v(-3.5mm) 
  #image("../Bilder/stellenwert_example.png")]
)

Jede Stelle ist also ein Vielfaches von 10 und wir fangen von rechts an zu zählen. Im Gegensatz zum römischen System bedeutet also eine 2 an der linken Stelle nicht dasselbe wie eine 2 an der rechten Stelle. Die linke 2 ist 100 mal so viel wert wie die rechte 2. Wir sagen, es handelt es sich um ein Stellenwertsystem mit der Basis 10.

Der grosse Vorteil eines Stellenwertsystems ist, dass mit wenigen verschiedenen Ziffern sehr viele Zahlen dargestellt und einfach verarbeitet werden können. Wenn wir uns also nochmals das Beispiel von vorher anschauen, können wir das mathematisch sauber aufschreiben, mit den richtigen Zehnerpotenzen:

#align(center)[
  #image("../Bilder/stellenwert_zehnerpotenzen.png", width: 60%)
]

#grid(
  columns: (1fr, 0.3fr),
  gutter: 1.5em,
  [ 
    Aber warum benutzen wir eigentlich das System, das auf 10 basiert? Die Antwort ist einfach: Wir haben 10 Finger und darum wirkt das für uns am natürlichsten. Was wäre aber, wenn wir eine Zeichentrickfigur wären, die 4 Finger an jeder Hand hat? Dann würden wir wahrscheinlich ein Zahlensystem benutzen, das auf 8 basiert. Auch dieses System hat einen Namen: *Oktalsystem* (_lateinisch: octo = acht_). 

    Und wie viele "Finger" haben Computer? Glauben Sie, er rechnet auch in Zehnerpotenzen?
  ],
  [
    #image("../Bilder/octalsystem.jpg")
  ]
)





