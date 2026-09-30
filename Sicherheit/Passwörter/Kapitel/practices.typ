#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Was macht ein gutes Passwort aus?

#grid(
  columns: (0.85fr, 0.15fr),
  gutter: 1.5em,
  [
    Wir wissen nun, wie Angreifer an Passwörter gelangen können und warum insbesondere unser E-Mail-Konto eine zentrale Rolle spielt. Doch wie können wir unsere Konten im Alltag besser schützen? Viele Sicherheitsprobleme entstehen nicht durch besonders ausgeklügelte Hackerangriffe, sondern durch ungünstige Gewohnheiten bei der Verwendung von Passwörtern.\
    In diesem Kapitel betrachten wir typische Fehler bei der Verwendung von Passwörtern und zeigen, welche sicheren Vorgehensweisen sich daraus ableiten lassen.
  ],
  [
    #image("../Bilder/good_bad.png")
  ]
)

Was macht nun ein Passwort sicher?

#grid(
  columns: (1fr, 0.5pt, 1fr, 0.5pt, 1fr),
  gutter: 1.3em,

  [
    #align(center)[
      #text(size: 1.1em, weight: "bold")[Länge]
    ]
    Je länger ein Passwort ist, desto grösser wird der mögliche Suchraum. Aktuelle Empfehlungen legen deshalb deutlich mehr Wert auf lange Passwörter als auf möglichst viele verschiedene Zeichentypen.
  ],

  rect(
    width: 0.8pt,
    height: 13%,
    fill: rgb("#2e79dd"),
  ),

  [
    #align(center)[
      #text(size: 1.1em, weight: "bold")[Zufälligkeit]
    ]
    Ein Passwort das vorhersehbar ist wie zum Beispiel der Lieblingsfussballverein sind für Angreifer mit Wörterbuchattacken einfach herauszufinden. Zufällige Zeichenketten erschweren das enorm.
  ],

  rect(
    width: 0.8pt,
    height: 13%,
    fill: rgb("#2e79dd"),
  ),

  [
    #align(center)[
      #text(size: 1.1em, weight: "bold")[Einzigartigkeit]
    ]
    Ein gutes Passwort nützt wenig, wenn es bei fünf verschiedenen Diensten verwendet wird. Jeder Dienst sollte daher ein eigenes Passwort haben, damit Credential Stuffing verhindert werden kann.
  ],
)

#exo(
  exercise: [
    #v(-2mm)
    Hier eine Frage bezüglich Unterschied längeres Passwort vs. versch. Zeichen oder so.
  ],
  solution: [
    #v(-2mm)
  ]
)

#v(4mm)

Im Folgenden finden Sie verschiedene Punkte, die man befolgen kann, die einerseits einfach umzusetzen sind und die Sicherheit eines Passworts massiv erhöhen. Nicht alle sind gleich sicher und ein paar der Methoden kann man kombinieren. 


#outline-colorbox(
  title: "Worttrick",
  color: "blue",
  radius: 3pt,
  width: auto,
)[
  #grid(
    columns: (0.08fr, 0.92fr),
    gutter: 1.2em,
    [
      #align(horizon)[
        #image("../Bilder/wort_trick.png")
      ]
    ],
    [
      Um ein langes Passwort zu erhalten, sich das aber auch noch merken zu können, kann man mehrere Wörter aneinander hängen. Am Besten ist es, wenn die Wörter zufällig gewählt werden und keinen offensichtlichen Zusammenhang haben. Zum Beispiel #text(size: 0.9em, font: "DejaVu Sans Mono")[FussballPasswortsicherheitBaum] oder #text(size: 0.9em, font: "DejaVu Sans Mono")[LampeTigerRahmVelo].
    ]
  )
  #text(weight: "bold")[Vorteil:] Man kann sich so das Passwort oft leichter merken als eine völlig zufällige Zeichenfolge.\
  #v(-2mm)
  #text(weight: "bold")[Nachteil:] Wenn die Wörter untereinander einen Zusammenhang haben, wird die Sicherheit deutlich eingeschränkt.
]

#outline-colorbox(
  title: "Leetspeak",
  color: "blue",
  radius: 3pt,
  width: auto,
)[
  #grid(
    columns: (0.08fr, 0.92fr),
    gutter: 1.2em,
    [
      #align(horizon)[
        #rotate(-8deg)[
          #image("../Bilder/leetspeech.png")
        ]
      ]
    ],
    [
      #align(horizon)[
        Eine weitere Möglichkeit ist Leetspeak. Dabei werden Buchstaben durch Zahlen und Sonderzeichen ersetzt. Zum Beispiel wird #text(size: 0.9em, font: "DejaVu Sans Mono")[Passwort] zu #text(size: 0.9em, font: "DejaVu Sans Mono")[P4\$\$w0rt]. 
      ]
    ]
  )
  #text(weight: "bold")[Vorteil:] Aus einem einfachen Wort kann auf diese Weise ein komplizierter aussehendes Passwort entstehen.\
  #v(-2mm)
  #text(weight: "bold")[Nachteil:] Diese Ersetzungen sind für Angreifer nicht unbekannt. Eine moderne Wörterbuchattacke probiert meist z.B. nicht nur #text(size: 0.9em, font: "DejaVu Sans Mono")[Passwort] aus, sondern #text(size: 0.9em, font: "DejaVu Sans Mono")[P4\$\$w0rt], #text(size: 0.9em, font: "DejaVu Sans Mono")[P\@\$\$w0rt], #text(size: 0.9em, font: "DejaVu Sans Mono")[P\@55w0rt] etc aus.  Zusätzlich braucht es meist etwas mehr Zeit, so eine Folge einzutippen und Vertippen kann schnell passieren.
]

#outline-colorbox(
  title: "Satztrick",
  color: "blue",
  radius: 3pt,
  width: auto,
)[
  #grid(
    columns: (0.08fr, 0.92fr),
    gutter: 1.2em,
    [
      #align(horizon)[
        #image("../Bilder/satz_trick.png", width: 110%)
      ]
    ],
    [
      Eine weitere Möglichkeit ist, sich einen Satz auszudenken und daraus ein Passwort aus den Anfangsbuchstaben abzuleiten. Das ist eventuell sogar noch einfacher zu merken als mehrere, zusammenhanglose Wörter. Aus #text(size: 0.9em, font: "DejaVu Sans Mono")[Heute Nachmittag aum 16:30 Uhr gehe ich ins Fussballtraining!] wird dann das Passwort #text(size: 0.9em, font: "DejaVu Sans Mono")[HNu16:30giiF!].
    ]
  )
  #text(weight: "bold")[Vorteil:] Man kann sich den ursprünglichen Satz leichter merken als eine zufällige Zeichenfolge aber das resultierende Passwort bleibt trotzdem eine für Aussenstehende scheinbar zusammenhanglose Folge von Zeichen.\
  #v(-2mm)
  #text(weight: "bold")[Nachteil:] Es besteht das Risiko, dass durch den Satztrick ein zu kurzes Passwort entsteht. Achte also immer auf eine ausreichende Zeichenanzahl. Auch hier ist das Vertippen schnell passiert.
]

#outline-colorbox(
  title: "Passwortmanager",
  color: "blue",
  radius: 3pt,
  width: auto,
)[
  #grid(
    columns: (0.08fr, 0.92fr),
    gutter: 1.2em,
    [
      #align(horizon)[
        #image("../Bilder/password_manager.png", width: 115%)
      ]
    ],
    [
      Das Hauptproblem beim Durchsetzen eines hohen Sicherheitsstandard besteht darin, dass wir uns für alle Dienste lange, zufällige und immer wieder andere Passwörter merken sollen... Das ist kaum möglich. Dafür gibt es *Passwortmanager*. Das ist ein Programm, das Passwörter sicher speichert und auf Wunsch neue, zufällige Passwörter erzeugt.
    ]
  )

  So muss man sich nicht alle Passwörter merken sondern stattdessen nur ein Master-Passwort für den Passwortmanager. Solche Manager können als eigenständige Apps oder direkt als Funktion eines Browsers angeboten werden. Natürlich wird somit er Passwortmanager selbst zu einem besonders wichtigen Konto. Das heisst auch hier sollte ein langes, schwer zu erratenes, einzigartiges Passwort verwendet werden, das zusätzlich mit MFA geschützt wird.
]