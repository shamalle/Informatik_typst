#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Nicht-Stellenwertsysteme



#grid(
  columns: (1fr, 0.5fr),
  gutter: 1.5em,
  [
    Bevor wir uns mit Stellenwertsystemen beschäftigen, wollen wir kurz einen Blick auf andere Zahlensysteme werfen, die nicht auf dem Stellenwertprinzip basieren. 
    
    Menschen mussten schon vor Tausenden von Jahren Mengen und Zahlen darstellen. Eine Möglichkeit dafür waren die römischen Zahlen. Solche Ziffern sehen Sie heute noch an Gebäudefassaden oder auch auf Uhren. Bei den römischen Zahlen hat jedes Zeichen eine feste Bedeutung. So steht z.B. das Zeichen V für den Wert 5 oder das L für den Wert 50. Eine Auflistung der Zeichen und ihrer Werte sehen Sie in der @roman-table auf der rechten Seite.
    
    #table(
      columns: (auto, auto),
      stroke: 0.5pt,
      inset: 6pt,
      
      table.header(
        [*Zeichen*],
        [*Wert*],
      ),
        [I], [1],
        [V], [5],
        [X], [10],
        [L], [50],
        [C], [100],
    )
  ],
  [
    #figure(image("../Bilder/roman_number.jpg", height: 3cm), caption: "Römische Zahlen an einer Gebäudefassade")

    #figure(image("../Bilder/roman_numbers_table.png", height: 3.5cm), caption: "Übersicht der römischen Zahlen und ihrer Werte") <roman-table>
  ],
)




  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 0.8em,
    [#align(center)[#image("../Bilder/römische_uhr.png", height: 3cm)]],
    [#align(center)[#image("../Bilder/roman_numbers_table.png", height: 3cm)]]
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
