#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Nicht-Stellenwertsysteme

Bevor wir uns mit Stellenwertsystemen beschäftigen, wollen wir kurz einen Blick auf andere Zahlensysteme werfen, die nicht auf dem Stellenwertprinzip basieren. 


#grid(
  columns: (1fr, 0.5fr),
  gutter: 1.5em,
  [
    Menschen mussten schon vor Tausenden von Jahren Mengen und Zahlen darstellen. Eine Möglichkeit dafür waren die römischen Zahlen. Solche Ziffern sehen Sie heute noch an Gebäudefassaden oder auch auf Uhren. Bei den römischen Zahlen hat jedes Zeichen eine feste Bedeutung. So steht z.B. das Zeichen V für den Wert 5 oder das L für den Wert 50. Eine Auflistung der Zeichen und ihrer Werte sehen Sie in der @roman-table auf der rechten Seite.
    
    #text(
      size: 1.2em,
      weight: "bold",
      )[Wie funktioniert das römische Zahlensystem?]

    Sie sehen schnell, dass es für Zahlen wie z.B. die 2 oder die 9 kein eigenes Zeichen gibt. Das heisst aber nicht, dass man diese Zahl nicht darstellen kann. Jede Zahl, die man also darstellen möchte, muss durch eine Aneinanderreihung der sieben Zeichen im rechten Bild erstellt werden. 

    Wenn also die Zahl 2 geschrieben werden sollte, hat man einfach zwei Mal das Zeichen für 1 nebeneinander geschrieben. Das sieht dann so aus: II.
    
    Doch nicht jede Zahl wird so einfach gebildet. Nehmen wir die Zahl 9. In der römischen Schreibweise ist es dann: IX. Hierbei wird sozusagen von der 10, also dem X, genau 1 abgezogen, sodass 9 entsteht. Somit haben wir auch schon die zwei Regeln zum Aufschreiben von Zahlen im römischen Zahlensystem:
  ],
  [
    #figure(image("../Bilder/roman_number.jpg", height: 3cm), caption: "Römische Zahlen an einer Gebäudefassade welche 1914 bedeuten.")

    #figure(image("../Bilder/roman_numbers_table.png", height: 3.5cm), caption: "Übersicht der römischen Zahlen und ihrer Werte") <roman-table>
  ],
)

#outline-colorbox(
  title: "Regeln des römischen Zahlensystems",
  color: "blue",
  radius: 3pt,
  width: auto,
)[
  + Steht eine Zahl rechts neben einer gleichen oder größeren Zahl, dann werden die Werte *addiert*:

    - #text(fill: blue)[VI = 5 + 1 = 6]\
    - #text(fill: blue)[XX = 10 + 10 = 20]

  + Steht ein Zahlzeichen links neben einem höheren, so wird sein Wert *subtrahiert*:

    - #text(fill: blue)[IV = 5 - 1 = 4]\
    - #text(fill: blue)[XL = 50 - 10 = 40]

  + (Sonderregel) Die Zeichen der Fünferbündelung (V, L ,D) werden generell *nicht* in subtraktiver Stellung einem größeren Zeichen vorangestellt:

    - #text(fill: blue)[Also nicht VDI sondern CDXCVI].
  ]

Um eine römische Zahl in unser heutiges Dezimalsystem umzuwandeln, benötigst du nur die beiden Regeln für römische Zahlen und die jeweiligen Symbolbedeutungen. Hingegen um eine Dezimalzahl in eine römische Zahl umzuwandeln, dauert etwas länger, da man sich überlegen muss, welche der beiden Regeln man verwendet oder ob sogar beide verwendet werden müssen. Daher sehen Sie hier ein paar Beispiele:


#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #outline-colorbox(
      title: "Römische Zahl → Dezimalsystem",
      color: "purple",
      radius: 3pt,
      width: auto,
      )[
        - XVII entspricht der Zahl 17, da nach rechts gehend immer kleinere Zahlen stehen (Regel 1). Es wird also gerechnet: 10+5+1+1
        
        - IL entspricht 49. Man rechnet  50-1 (Regel 2).

        - XLII entspricht der Zahl 42. Hierbei werden beide Regeln angewandt. Zuerst 50-10 (Regel 2) und danach Regel 1, bei der dann 40+1+1 gerechnet wird.
      ]
  ],
  [
    #outline-colorbox(
      title: "Dezimalsystem → Römische Zahl",
      color: "purple",
      radius: 3pt,
      width: auto,
      )[
        - 19  umgewandelt ergibt XIX. Man rechnet: 10+10-1. Es werden dafür beide Regeln verwendet.

        - 102 umgewandelt ergibt CII. Man rechnet 100+1+1. Es wird Regel 1 angewendet.

        - 91 umgewandelt ergibt XCI. Der erste Wert ist 100, davon zieht man 10 ab, und addiert dann wieder 1.
      ]
  ]
)


Testen Sie nun selbst Ihr Wissen über das römische Zahlensystem in den folgenden Aufgaben:

#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  [
    #exo(
      title: [dasdf],
      exercise: [
        Welche der folgenden Zahlen ist die korrekte römische Schreibweise für die Zahl 496?
        #set enum(numbering: "a.")
          + XDVI
          + CCCCXXXXXXXXXIIIIII
          + CDXCVI
          + XD
      ],
      solution: [Korrekt ist Antwort c) CDXCVI.])
  ],
  [
    #exo(
      title: [dasdf],
      exercise: [
        Welche der folgenden Zahlen ist die korrekte römische Schreibweise für die Zahl 45?
        #set enum(numbering: "a.")
          + CMD
          + XLV
          + PVC
          + VLC
      ],
      solution: [Korrekt ist Antwort b) XLV.])
  ]
)






#grid(
  columns: (0.25fr, 1fr),
  gutter: 3em,
  [
    #rotate(-10deg)[
      #image("../Bilder/römische_uhr.png")
    ]
  ],
  [
    #exo(
      title: [],
      exercise: [Hello]
    )
  ]
)




Die Zahl, die man abbilden möchte, wird durch das Aneinanderreihen der Zeichen dargestellt. Dabei hängt der Wert eines Zeichens nicht von seiner Position ab. Die Zeichen stehen also immer für denselben Wert. Ein X bedeutet immer 10, egal wo es steht.