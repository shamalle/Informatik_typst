#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox
#import "@preview/codly:1.3.0": codly
#import "@preview/exercise-bank:0.3.0": exo

= Datentypen

Wenn der Computer mit Variablen zu tun hat, muss er wissen, zu welchem Typ sie gehören. Wenn er zum Beispiel weiss, dass es sich um einen Text handelt, dann weiss er auch sofort, dass nicht alle Operatoren funktionieren werden.


#table(
  columns: (auto, auto, auto),
  stroke: none,
  align: (left + horizon, center + horizon, left + horizon),
  inset: (x: 0% + 5pt, y: 0% + 6pt),
  table.hline(),
  table.header([*Name*], [*Abkürzung*], [*Beschreibung*]),
  table.hline(),
  [*Integer*],
  [```py int```],
  [Das ist der Datentyp für *ganze Zahlen*. Alle Zahlen in einem Programm, die keine Dezimalstellen haben, sind ganze  Zahlen.],

  [*Float*],
  [```py float```],
  [Floats sind Zahlen mit *Dezimalstellen*, welche auch Gleitkommazahlen genannt werden. Jede Zahl, die Dezimalstellen in einem Programm hat, gehört zu diesem Datentyp.],

  [*String*],
  [```py str```],
  [Strings sind Ketten von beliebigen Zeichen. Einfacher gesagt: *Text*. Alles, was in einem Programm in Anführungszeichen geschrieben steht, ist vom Datentyp String.],

  [*Boolean*],
  [```py bool```],
  [Boolean sind *Wahrheitswerte*. Davon gibt es nur zwei: ```py True``` und ```py False```.],
  table.hline(),
)

#grid(
  columns: (2fr, 1fr),
  gutter: 2em,
  align: horizon,
  [
    #outline-colorbox(
      title: "Datentypen",
      color: "purple",
      radius: 3pt,
      width: auto,
    )[
      Variablen gehören in Python jeweils einem *Datentyp* an. Dieser bestimmt dann, was man alles mit der Variable tun kann. Man kann zum Beispiel bei einem String nicht dividieren.

      Wenn Sie eine Variable ```py x``` haben, können wir mit dem Befehl ```py print(type(x))``` den Datentyp herausfinden.
    ]
  ],
  [
    #codly(header: [*Datentyp herausfinden*])
    ```py
    alter = 17
    print(type(alter))
    name = "harry"
    print(type(name))
    ```
  ],
)

#grid(
  columns: (2fr, 3fr),
  gutter: 2em,
  align: horizon,
  [
    #codly(header: [*Bestimmter Datentyp als Input*])
    ```py
    inputInt("Ganze Zahl eingeben:")
    inputFloat("Zahl eingeben:")
    inputString("Bitte Text eingben:")
    ```
  ],
  [
    Nicht alle Datentypen sind miteinander kompatibel. Zum Beispiel kann Python einen Integer und einen String nicht miteinander addieren. Einen Integer mit einem Float hingegen schon. Darum wollen wir bei den Inputs meistens nur ganz bestimmte Datentypen zulassen.
  ],
)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  align: horizon,
  [
    Manchmal möchte man Datentypen "ineinander umwandeln". Z.B. wenn man in einer ```py print```-Ausgabe Text und Zahlen verknüpfen möchte (um beides auf derselben Zeile darzustellen).  Zwei Texte lassen sich mit einem ```py +``` aneinanderhängen (siehe Zeile 1). Mit Text und Zahl funktioniert dies aber nicht (siehe Zeile 3), denn dies führt zu einem Fehler. Man kann die Zahl ```py x``` jedoch mit ```py str(x)``` in einen Text umwandeln um mit ```py print``` auszugeben (Zeile 4) oder Text und Zahl (ohne Umwandlung) mit einem Komma trennen (Zeile 5).
  ],
  [
    #codly(header: [*Text und Zahlen im Output kombinieren*], highlighted-lines: (
      (1, green.lighten(60%)),
      (3, red.lighten(60%)),
      (4, green.lighten(60%)),
    ))
    ```py
    print("hallo" + " wie gehts?")
    x = 5
    print("Das Resultat lautet " + x)
    print("Das Resultat lautet " + str(x))
    print("Das Resultat lautet ", x)
    ```
  ],
)

#v(2mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #exo(
      exercise: [
        Passen Sie den Output von der Aufgabe mit dem Anhalteweg so an, dass er wie folgt aussieht:

        #align(center)[#box(fill: luma(220), inset: 5pt, radius: 3pt)[Der Anhalteweg ist 40.0 Meter lang]]
      ],
      solution: [
        #codly(header: [*Diese Zeile ist anzupassen*], offset: 4)
        ```py
        print("Der Anhalteweg ist " + str(anhalteweg) + " Meter lang")
        ```

        #codly(header: [*Alternative*], offset: 4)
        ```py
        print("Der Anhalteweg ist", anhalteweg, "Meter lang")
        ```
      ],
    )
  ],
  [
    #exo(
      exercise: [
        Gegeben sind verschiedene Variablen. Bestimmen Sie zuerst ohne Computer, welchem Datentyp sie jeweils zugehören und überprüfen Sie Ihre Lösung dann mit WebTigerPython.

        #grid(
          columns: (1fr, 1fr, 1fr, 1fr),
          gutter: 1em,
          inset: (x: 1em, y: 0em),
          align: center,
          [```"2+3"```], [```2+3```], [```2.0+3```], [```2.0+3.0```],
          [```"2"*3```], [```"2"+"2"```], [```"True"```], [`True`],
        )
      ],
      solution: [
        #grid(
          columns: (1fr, 1fr),
          gutter: 1em,
          [```"2+3"``` $->$ ```py str```], [```2+3``` $->$ ```py int```],
          [```2.0+3``` $->$ ```py float```], [```2.0+3.0``` $->$ ```py float```],
          [```"2"*3``` $->$ ```py str```], [```"2"+"2"``` $->$ ```py str```],
          [```"True"``` $->$ ```py str```], [`True` $->$ ```py bool```],
        )
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
        Welche der untenstehenden Ausdrücke sind gültig in Python?

        #grid(
          columns: (auto, auto, auto),
          align: center,
          gutter: 1em,
          inset: (x: 1em, y: 0em),
          [`3**2+4**2`], [`("go"*3)+"yes"`], [`3.14*10*10`],
          [`"go"+3`], [`"go"*3`], [`3.14+10`],
        )
      ],
      solution: [
        Nur ```py "go"+3``` ist ungültig. Alle anderen sind gültig.
      ],
    )
  ],
  [
    #exo(
      exercise: [
        Erklären Sie in Ihren eigenen Worten, warum `print("15+10")` nicht das gleiche gibt wie `print(15+10)`.
      ],
      solution: [
        Alles in Anführungszeichen wird als Text behandelt. Deswegen ist für Python der Ausdruck ```py "15+10"``` reiner Text und wird nicht berechnet. Der Ausdruck ```py print("15+10")``` liefert den Output `15+10` (als Text) und der Ausdruck ```py print(15+10)``` liefert `25` (als Zahl).
      ],
    )
  ],
)




