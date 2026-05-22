#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Häufigskeitsanalyse

#grid(
  columns: (0.8fr, 1fr),
  gutter: 1em,
  [
    Wir haben festgestellt, dass gewisse Verschlüsselungsverfahren einfacher zu knacken sind als andere. Die allgemeine monoalphabetische Substitution ist viel mühsamer, aufgrund ihres grossen Schlüsselraums. Trotzdem lässt sich mit einem Trick auch dieses Verfahren knacken.

    In der deutschen Sprache kommen manche Buchstaben deutlich häufiger vor als andere, zum Beispiel das E. Sie können die Verteilung der einzelnen Buchstaben in der Grafik rechts sehen.  Bei sehr kurzen Texten ist dieses Muster der Häufigkeit oft noch schwer zu erkennen, da die Buchstabenverteilung zufällig wirken kann.
  ],
  [
    #v(-5pt)
    #figure(
      image("../Bilder/deutsche_verteilung.png", width: 100%),
    )
  ],
)
#v(-5pt)
Je länger ein Text jedoch ist, desto stärker ähneln die Häufigkeiten der Buchstaben den typischen Durchschnittswerten der Sprache.

#v(5pt)
#grid(
  columns: (3fr, 1fr),
  gutter: 1em,
  [
    Dabei spielen nicht nur einzelne Buchstaben eine Rolle. Auch bestimmte *Buchstabenkombinationen* treten in Texten immer wieder besonders häufig auf. So enden viele deutsche Wörter im Plural auf -en, noch häufiger ist jedoch die Endung -er. Solche Zweierkombinationen nennt man Bigramme. Es gibt auch Trigramme, also Kombinationen aus drei Buchstaben. Das häufigste in der deutschen Sprache ist das “ich”.
  ],
  [
    #figure(
      image("../Bilder/buchstaben_kombinationen.png", width: 60%),
    )
  ],
)

Was hilft uns das jetzt bei Verschlüsselungen?

Beim der allgemeinen monoalphabetischen Substitution haben wir gesehen, dass das Herausfinden des Schlüssels bei einer so grossen Anzahl Möglichkeiten durch reines Ausprobieren kaum möglich ist. Da jeder Buchstabe aber einem anderen (zufällig) zugeordnet wird, ändern sich Sprachmuster nicht. Wenn also im Klartext viele E vorkamen, weil das der häufigste Buchstabe der deutschen Sprache ist und das E zu einem G wird, gibt es im Geheimtext halt dann viele G.

#figure(
  image("../Bilder/buchstaben_vorhernachher.png", width: 35%),
)

So kann man mit der Analyse der häufigsten Buchstaben (siehe Diagramm oben) und Aus-
probieren sehr schnell gewisse Texte entschlüsseln.
Zum Beispiel beim folgenden Beispiel wird zuerst der häufigste Buchstabe mit einem E
ersetzt und der zweithäufigste mit einem N. Und schon bald findet man dann so durch
Ausprobieren den Klartext EINE ENTE.

#figure(image("../Bilder/ente.png", width: 35%))

#exo(
  exercise: [
    Finden Sie eine Schwäche bei diesem Verfahren?

    Warum funktioniert dieses Verfahren nicht so gut bei gewissen Sätzen wie z.B. "Das Blut ist rot"?
  ],
  solution: [
    Wenn der Text sehr kurz ist, ist die Buchstabenverteilung oft zufällig und nicht nach Häufigkeit geordnet. Eine andere Schwäche sind (kurze) Sätze, bei denen fast keine der häufigsten Buchstaben vorkommen.
  ],
)
