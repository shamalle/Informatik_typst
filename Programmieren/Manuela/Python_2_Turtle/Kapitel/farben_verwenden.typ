#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo
#import "@preview/colorful-boxes:1.4.3": stickybox

= Farben verwenden

#grid(
  columns: (2fr, 1fr),
  gutter: 2em,
  [
    Die Turtlegrafik verwendet die sogenannten  *X11-Colors*. Dabei handelt es sich um eine *vordefinierte Liste von Farbnamen* die ursprünglich aus dem X Window System (X11) stammen. Jede Farbe hat einen fest zugeordneten RGB-Wert. Sie können die Farben im Internet unter #link("https://www.w3schools.com/colors/colors_x11.asp")[w3schools.com/colors/colors_x11.asp] nachschlagen.  Einige Beispiele sind: _yellow, gold, orange, red, maroon, violet, magenta, purple, navy, blue, skyblue, cyan, turquoise, blueviolet, lime, green, darkgreen, chocolate, brown, black, gray, white_, und noch viele mehr.
  ],
  [
    #align(center)[#image("../Bilder/kerze.png", width: 20%)]
  ],
)

#grid(
  columns: (1fr, 2fr),
  gutter: 2em,
  // align: (center, center),
  [
    #codly(header: [*Kerze zeichnen*], footer: [#align(right)[#link(
      "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhADOcMgAU4EAOppiZABYAKAGwAGAJSSZ8xQGF63YZvFhacYjcMRqwgO5RaxTQEZdBydiKAKrYmk4utO6emgCs_hCBEAAi9K4QYUayChDmlrTWYLhw3JaujpLE9GSaACzxxtkqaloxTg1mFlY2AEbcUADGANblEN0Dgz6tkuqqcAAqnDxwYWAAvgC6QA",
    )[🔗 *Programm öffnen*]]])
    ```py
    from gturtle import *
    setPenWidth(60)
    setPenColor("red")
    forward(100)
    penUp()
    forward(50)
    penDown()
    setPenColor("yellow")
    dot(40)
    setPenWidth(5)
    setPenColor("black")
    back(15)
    hideTurtle()
    ```
  ],
  [
    Wir wollen eine brennende rote Kerze zeichnen. Zuerst zeichnet man mit einem dicken roten Stift die Kerze selbst. Dann fährt man mit abgehobenem Stift ein wenig weiter und zeichnet mit dem Befehl ```py dot(40)``` einen gelb-gefüllten Kreis. Um den Docht zu malen, fährt man mit einem schwarzen, dünnen Stift leicht zurück.

    Dazu brauchen wir neue Befehle: ```py setPenColor()``` für die Stiftfarbe, ```py setPenWidth()``` für die Stiftdicke, ```py penUp()``` und ```py penDown()``` um den Stift hochzuheben und ihn wieder abzusenken.

    Zuletzt verstecken wir noch mit ```py hideTurtle()``` das Bild der kleinen Schildkröte.

    Bei den *Farbnamen* spielt die Gross-/Kleinschreibung keine Rolle, sie müssen aber in Anführungszeichen stehen.
  ],
)

#v(5mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      exercise: [
        Ergänzen Sie das untenstehende Programm so, dass die Schildkröte ein regelmässiges Sechseck zeichnet und wählen Sie für jede Seite eine andere Farbe.
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhADOcMgAU4EAOppiZABYAKAKwBKSTPmKAwvW7DN4sLTjEr-iNWEB3KLWKaAHAAYHtNCzqZJoAbL5gAL4AukA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        setPenWidth(5)
        setPenColor("red")
        forward(80)
        right(60)
        ...
        ```
        #image("../Bilder/hexagon.png")
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhADOcMgAU4EAOppiZABYAKAKwBKSTPmKAwvW7DN4sLTjEr-iNWEB3KLWKaAHAAYHtNCzqZJoAbL4GsgoQpua0lmAARtzscPaSTrSu7l7hEP6BwWEOhlExFla4cNzmzmmOLm4ePn4BQaG5JSZm5WAsNop1GVlNufltRRFG0d1xVqgsihSDDdnNkmOFHZFdsfEAxrhQEMuZjTktBe0O6qpwACqcPHCaumAAvgC6QA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        setPenWidth(5)
        setPenColor("red")
        forward(80)
        right(60)
        setPenColor("blue")
        forward(80)
        right(60)
        setPenColor("yellow")
        forward(80)
        right(60)
        setPenColor("green")
        forward(80)
        right(60)
        setPenColor("magenta")
        forward(80)
        right(60)
        setPenColor("cyan")
        forward(80)
        right(60)
        hideTurtle()
        ```
      ],
    )
  ],
  [
    #exo(
      exercise: [Zeichnen Sie gefüllte Kreise mit den Farben ```py "red"```, ```py "yellow"```, ```py "blue"``` und ```py "magenta"```. Zeichnen Sie weitere drei Kreise mit Farben Ihrer Wahl, die Sie unter #link("https://www.w3schools.com/colors/colors_x11.asp")[w3schools.com/colors/colors_x11.asp] finden.

        #image("../Bilder/vier_kreise.png")],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEm00LABZkAFAE4ADAEpJAZzhkACnAgBhet2GLxYWnGKXNEYvSUA2DZOrCA7lFrFFr-x19QxMzWgswXDhuM087SUcXNwgPWm9ff2Sgg2NTc0sAI252OHiHJ0z7VPS_AO1dHND8lCgWQwoyxMr3Lx9arIaQvPDLAGNcKAgAFk6KupTejPnsobCI0bl6UdNyUrB7Lvnqvu6IFdy1wuK4ADc0U11ZpPs5NGI4ABVOHjhFdTAAL4AXSAA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        right(90)
        setPenColor("red")
        dot(60)
        forward(60)
        setPenColor("yellow")
        dot(60)
        forward(60)
        setPenColor("blue")
        dot(60)
        forward(60)
        setPenColor("magenta")
        dot(60)
        forward(60)
        setPenColor("cyan4")
        dot(60)
        forward(60)
        setPenColor("chocolate")
        dot(60)
        forward(60)
        setPenColor("blueviolet")
        dot(60)
        hideTurtle()
        ```
      ],
    )

    #exo(
      exercise: [
        Zeichnen Sie eine Verkehrsampel. Das schwarze Rechteck können Sie mit der Stiftbreite 80 zeichnen.

        #image("../Bilder/ampel.png", width: 30%)
      ],
      solution: [
        #codly(footer: [#align(right)[#link(
          "https://webtigerpython.ethz.ch/Graphics/Turtle/gturtle#?code=NobwRAdghgtgpmAXGGUCWEB0AHAnmAGjABMoAXKJMAMwCcB7GAAgHMyBXWsgGzibRjZ6XJgCoAOhEkBnOGQAKcCAHU0xMgAsAFAA4ADAEpJ1YQHcotYloCM-oxFpoWGsjbuTsSgKrYt9k7TmljaGHkoAIvSmEH4ycooQAML03MJa4mC0cMQZ9sT0rgBsoRCeED6xEAFBVu6lEVEx9rIKSsmptOlguHDcqaa5kvlFJWUV_mYWtaMN0ZUtCe1pGdwCcIMQw1rF9hpqcAAqnDxwfmAAvgC6QA",
        )[🔗 *Programm öffnen*]]])
        ```py
        from gturtle import *
        setPenWidth(80)
        forward(180)
        right(180)
        penUp()
        forward(10)
        penDown()
        setPenColor("red")
        dot(60)
        penUp()
        forward(80)
        penDown()
        setPenColor("yellow")
        dot(60)
        penUp()
        forward(80)
        penDown()
        setPenColor("lime")
        dot(60)
        hideTurtle()
        ```
      ],
    )
  ],
)
