#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo

= ⭐️ Figuren füllen (freiwilliges Zusatzkapitel)

#grid(
  columns: (4fr, 1fr),
  gutter: 2em,
  [
    Die Schildkröte kann sich an ihre Bewegung erinnern, um so  eine von ihr gezeichnete *geschlossene Figur mit einer Farbe zu füllen*.

    Um eine Figur auszufüllen, sagen wir zuerst der Schildkröte mit ```py startPath()```, dass sie sich ausgehend vom aktuellen Ort die nachfolgend gezeichnete Figur merken soll. Mit dem Befehl ```py fillPath()``` wird der jetzige Ort mit dem Startort verbunden und die eingeschlossene Fläche ausgefärbt. Mit ```py setFillColor()``` kann man die Füllfarbe angeben (sagt man nichts, so ist sie standardmässig schwarz).
  ],
  [
    #image("../Bilder/zusatzaufgabe.png", width: 100%)
  ],
)

#grid(
  columns: (1.7fr, 2fr, 1.7fr),
  gutter: 2em,
  align: horizon,
  [
    #codly(header: [*Ausgefüllter Stern*], footer: [#align(right)[#link(
      "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEkBnOGQBiabtwDC9bsIAU4lFBZwIFHQEoZcgAoG1G2tt37DUEzIpdz5ABabTEWnGxw5EwArIiSTBFM1MSaAIwAbAAMPpFMXHEALBk-1Erc7mRePmAAvgC6QA",
    )[🔗 *Programm öffnen*]]])
    ```py
    from gturtle import *
    setFillColor("magenta")
    startPath()
    repeat 5:
        forward(160)
        right(144)
    fillPath()

    ```
  ],
  [
    #grid(
      columns: (1fr, 1fr),
      gutter: 2em,
      align: horizon,
      [
        #image("../Bilder/stern.png", width: 100%)
      ],
      [
        #image("../Bilder/kreis.png", width: 100%)
      ],
    )

    Wir können mit der Schildkröte einen gefüllten Kreis als Vieleck mit sehr vielen Seiten zeichnen.
  ],
  [
    #codly(header: [*Kreis als Vieleck*], footer: [#align(right)[#link(
      "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEkBnOGQBiabtwDC9bsIAU4sNwFwdAShkUuABXIALTcYi042OOSYBGAEwAGRJKa-m1YQB3KFpiTQBmWz8mWjQWSzIIwyZJaiVuCzJrW0s0YjgAFU4eOBswAF8AXSA",
    )[🔗 *Programm öffnen*]]])
    ```py
    from gturtle import *
    setFillColor("lime")
    startPath()
    repeat 120:
        forward(3)
        right(3)
    fillPath()
    hideTurtle()
    ```
  ],
)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      exercise: [
        Um den dargestellten 6er-Stern zu zeichnen, dreht die Schildkröte abwechslungsweise 140 und 80 Grad. Zeichnen Sie diese Figur.
        #image("../Bilder/6er-stern.png", width: 35%)
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEkALNMTgAVTjzgAKAJSTJAZzhkAYmm7cAwvW7DV4sLjjH6Ad2uaIusgAU4EMxdpWbdhZOYC7aFFzu5NIakrRw2HDkTABsiJJMGUzUwg5QtMSqABwADC6ZTLRoLNJkqgCMACyl6ZnZtLn5Rc0Q5bzUtSUu1EbckWTR6mAAvgC6QA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        hideTurtle()
        setFillColor("yellow")
        startPath()
        repeat 6:
            forward(80)
            right(140)
            forward(80)
            left(80)
        fillPath()
        ```
      ],
    )
  ],
  [
    #exo(
      exercise: [
        Zeichnen Sie zwei gefüllte Halbkreise. Wenn Sie die Schildkröte vor dem Zeichnen mit ```py hideTurtle()``` verstecken, wird das Bild viel schneller gezeichnet.
        #image("../Bilder/halbkreise.png", width: 45%)
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEkBnOGQBiabtwDC9bsIAU4sLTjEdAShlyACnAhqNtbbv1HJkgBZpicACqcecTcakRpCi5TcidfST1sOHImAEYADgAGREkmNKZqYQB3KFpiTVi_dKZaNBYnMgK_aiVuELIwvxkgsnrGiLgomITk1PTM2hy8qr603mpKwska5TbwiDAAXwBdIA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        setFillColor("red")
        hideTurtle()
        startPath()
        repeat 180:
            forward(1)
            right(1)
        fillPath()
        startPath()
        repeat 180:
            forward(1)
            left(1)
        fillPath()
        ```
      ],
    )
  ],
)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      exercise: [
        Diese lustige Figur besteht aus gefüllten und nicht gefüllten Kreisen. Zeichnen Sie sie wie im Beispiel mit Vielecken.
        #image("../Bilder/augen.png", width: 40%)
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEkBnOGQBiabtwDC9bsIAU4sNwFwdAShlyACnAhqNtbWABG3KAGMA1kcmSAFmmJwAKpw8cJrGUhDSFFym5J4hkrRw2HDkTADMAGwADIiSTHlM1MIA7lC0xJoAjKH5TLzUZJWhCUkpGdm5-YW0JWWNHXm0aCyeDVWS1Erc0WSxofGJyWRpWTkQNV095QBM1fl1o00LrSv9BcWl27sDQyN9EGAAvgC6QA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        setFillColor("lime")
        hideTurtle()
        startPath()
        repeat 360:
            forward(1)
            left(1)
        repeat 360:
            forward(1)
            right(1)
        fillPath()
        repeat 360:
            forward(2)
            left(1)
        repeat 360:
            forward(2)
            right(1)
        ```
      ],
    )
  ],
  [
    #exo(
      exercise: [
        Zeichnen Sie das angegebene Bild der gefüllten Treppe.
        #image("../Bilder/treppe-gefuellt.png", width: 40%)
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEkBnOGQBiabtwDC9bsIAU4sC1pw4UsAEoZcgAqG1G2tt37DO01IgALNMTgAVTjzibnGQouc3JXAMl9bDhyJgBmREkmZKZqYQB3KFpiTQBWAAZnFKZaNBZXMk0ATkKklLTaTOy82ohi3mpKmudqJW5QsnDjMABfAF0gA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        setFillColor("green")
        hideTurtle()
        startPath()
        repeat 3:
            forward(50)
            right(90)
            forward(50)
            left(90)
        fillPath()
        ```
      ],
    )
  ],
)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      exercise: [
        Zeichnen Sie das rote Kreuz mit zwei repeat-Schleifen.
        #image("../Bilder/rotes-kreuz.png", width: 30%)
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEkBnOGQBiabtwDC9bsIAU4sLTjEdAShlyACnAhqNtbbv1HJkgBZpicACqcecTcakRpCi5TcidfST1sOHImABZESSYkpkjosiYAZgSIZNymamEAdyhaYk0ADgAGPzzk2jQWJzJNAE5qxOTeamaARiq_aiVuELIwwzAAXwBdIA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        setFillColor("red")
        hideTurtle()
        startPath()
        repeat 4:
            repeat 3:
                forward(80)
                right(90)
            left(180)
        fillPath()
        ```
      ],
    )
  ],
)
