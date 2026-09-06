#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Angriffe

#grid(
  columns: (0.89fr, 0.11fr),
  gutter: 1em,
  [
    Wir haben nun gesehen, wie Passwörter gespeichert und bei einem Login überprüft werden. Im Kapitel vorhin haben wir schon ein paar Mal erwähnt, wie Angreifer vorgehen können. Aber (leider) gibt es eine Vielzahl an Methoden. Wir unterscheiden deshalb verschiedene Arten von Angriffen und werden ein paar in diesem Kapitel thematisieren. 
  ],
  [
    #v(-3.5mm)
    #image("../Bilder/hacker.png")
  ]
)

== Brute Force

Beginnen wir mit der einfachsten Idee: Ein Angreifer probiert möglichst viele mögliche Passwörter aus. Dieses Vorgehen nennt man *Brute Force* (dt.: rohe Gewalt).

#grid(
  columns: (0.85fr, 0.15fr),
  gutter: 1em,
  [
    Stellen wir uns vor, Nina verwendet eine viertstellige PIN, um ihr Handy zu sperren. Ein Angreifer könnte hier systematisch ausprobieren und alle Möglichkeiten (Brute Force) durchgehen: $0000$, $0001$, $0002$, $0003$, ... , $9999$ bis er irgendwann auf die richtige Kombination kommt.\
    Bei $4$ Ziffern gibt es insgesamt $10^4=10\'000$ Möglichkeiten. Hört sich zwar nach viel an, ein Computer kann solche Verfahren aber sehr schnell durchführen.

    Die Anzahl der möglichen Passwörter hängt also unter anderem von der Länge und von der Anzahl möglicher Zeichen ab. Wenn ein Passwort aus 26 Kleinbuchstaben besteht, gibt es bei:
  ],
  [
    #v(-2mm)
    #box(
      clip: true,
      radius: 8pt,
    )[#image("../Bilder/4_pin.jpg")]
  ]
)
#v(-2mm)
- $1$ Zeichen $arrow$ $26$ Möglichkeiten
- $2$ Zeichen $arrow$ $26^2 = 676$ Möglichkeiten
- $8$ Zeichen $arrow$ $26^8 = 208\'827\'064\'576$ Möglichkeiten 

Allgemein gilt: $"Anzahl Möglichkeiten" = "Anzahl möglicher Zeichen" ^ "Passwortlänge"$. Man erkennt dadurch schnell, dass jedes zusätzliche Zeichen den Suchraum massiv vergrössert.

#v(2mm)
#exo(
  exercise: [
    #v(-2mm)
    Berechne, wie viele verschiedene Kombinationen möglich sind.

    #align(center)[
      #table(
        columns: (auto, auto, auto, auto),
        align: (right, left, center, center),
        stroke: none,
        inset: 5pt,

        [#text(weight: "bold", fill: rgb("#1c90d0"))[Passwort]],
        [#text(weight: "bold", fill: rgb("#1c90d0"))[Mögliche Zeichen]],
        [#text(weight: "bold", fill: rgb("#1c90d0"))[Länge]],
        [#text(weight: "bold", fill: rgb("#1c90d0"))[$\#$ Kombinationen]],

        // Linie unter der Kopfzeile
        table.hline(
          y: 1,
          stroke: 1pt + rgb("#1c90d0"),
        ),

        [abcdf], [Kleinbuchstaben],
        [4], [?],
        [123abc], [Kleinbuchstaben + Ziffern], [6], [?],
        [Informatik], [Klein- und Grossbuchstaben], [10], [?],
        [H3ll0], [Klein- und Grossbuchstaben + Ziffern], [5], [?],


        // Vertikale Linie zwischen den Spalten
        table.vline(
          x: 1,
          start: 1,
          end: 6,
          stroke: 0.5pt + rgb("#1c90d0"),
        )
      )
    ]
  ],
  solution: [
    #v(-2mm)
  ] 
)
#v(2mm)

Bei Brute-Force kann man zwischen zwei Situationen noch weiter unterscheiden: Online und offline Brute Force Angriffe:

#text(size: 1.1em, weight: "bold")[Online]
#v(-1mm)
Der Angreifer versucht sich direkt beim Dienst anzumelden. Er versucht also einen ersten Login-Versuch z.B. bei Intagram mit Ihrem Benutzernamen. Vermutlich wird dann "Passwort falsch" erscheinen. Also geht der Angreifer weiter zum nächsten Login-Versuch usw.\
Der Dienst kann die Attacke erschweren, indem er:

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.5em,
  [
    #v(-1mm)
    - die Anzahl der Loginversuche begrenzt,
    #v(-1.5mm)
    - zwischen Versuchen wartet,
    #v(-1.5mm)
    - verdächtige Anmeldungen blockiert,
    #v(-1.5mm)
    - ein Captcha verlangt.

    #v(1.5mm)
    #figure(
      image("../Bilder/captcha_examples.png", width: 60%),
      caption: [Beispiele verschiedener Captchas, die das automatische Aufrufen mittels Algorithmen verlangsamen oder verhindern sollen.]

    )
  ],
  [
    #v(-3mm)
    #stickybox(rotation: 2deg)[
      #align(center)[
        *Wichtiger Unterschied* \
        #v(-1mm)
        Bei einem Online-Angriff muss der Server jeden Versuch bearbeiten. Bei einem Offline-Angriff kann der Angreifer die gestohlenen Daten selbst untersuchen.
      ]
    ]
    #v(3mm)
    #text(size: 1.1em, weight: "bold")[Offline]
    #v(-1mm)

    Anders sieht es aus, wenn der Angreifer eine Datenbank mit Passwort-Hashes gestohlen hat. Dann muss er nicht mehr bei Instagram jedes Mal nachfragen, sondern kann auf seinem Computer rechnen (haben wir weiter oben schon mal gesehen). Er stiehlt also den Hash. Dann probiert er ein Passwort am eigenen Computer aus, berechnet davon den Hash und vergleicht es mit dem gestohlenen Wert.
  ]
)



== Wörterbuchattacken

Brute Force hat allerdings ein Problem: Menschen wählen ihre Passwörter nicht zufällig. Es wäre sehr ineffizient, zuerst Millionen völlig zufällige Kombinationen auszuprobieren, wenn viele Menschen klassische Passwörter wählen, wie wir schon weiter oben gesehen haben: _passwort, 1234, qwertz, ..._

Ein Angreifer kann deshalb eine Liste mit häufig verwendeten Passwörtern verwenden. Das nennt man eine *Wörterbuchattacke*. Dabei wird nicht unbedingt nur ein normales Wörterbuch verwendet, sondern diese Listen beinhalten auch:

#grid(
  columns: (0.3fr, 0.3fr, 0.3fr),
  gutter: 1.5em,
  [
    - häufig verwendeten Passwörter
    - Namen
  ],
  [
    - Orte
    - häufigen Zahlenfolgen
  ],
  [
    - Geburtstage
    - bekannten Passwortmuster
  ]
)

#grid(
  columns: (0.7fr, 0.3fr),
  gutter: 1.5em,
  [
    #v(2mm)
    Zusätzlich können Varianten ausprobiert werden: sommer, Sommer, Sommer1, Sommer!, Sommer2026, ... Der Angreifer versucht also, möglichst gut vorherzusagen, welches Passwort ein Mensch gewählt haben könnte.

    Öffentlich zugängliche Informationen, entweder über Webseiten oder Social Media Profilen, können diese Attacken noch zusätzlich unterstützen. Wenn Max also auf seinem öffentlichen Instagram-Profil Informationen über seinen Geburtstag, Lieblingsverein, Hund und seine Freundin teilt, kann ein Angreifer diese Informationen benutzen, um das Wörterbuch geschickt zu erweitern:

    - Max*19032012
    - YBbesteVerein
    - Bello123
  ],
  [
    #align(horizon)[
      #figure(
        image("../Bilder/max_dictionary_attack.png"),
        caption: [Max hat auf Social Media viele Informationen über sich geteilt.]
      )
    ]
  ]
)

#v(2mm)
#exo(
  exercise: [
    #v(-2mm)
    Ordne die folgenden Angriffe richtig zu: Brute Force oder Wörterbuch-Attacke?

    #align(center)[
      #table(
        columns: (auto, auto, auto),
        align: (right, center, center),
        stroke: none,
        inset: 5pt,

        [#text(weight: "bold", fill: rgb("#1c90d0"))[Versuch]],
        [#text(weight: "bold", fill: rgb("#1c90d0"))[Brute Force]],
        [#text(weight: "bold", fill: rgb("#1c90d0"))[Wörterbuch-Attacke]],

        // Linie unter der Kopfzeile
        table.hline(
          y: 1,
          stroke: 1pt + rgb("#1c90d0"),
        ),

        [$000000$, $000001$, $000002$, ...], [$square.stroked$], [$square.stroked$],
        [password, hallo, qwertz, ...], [$square.stroked$], [$square.stroked$],
        [Sommer2026!, Sommer2027!, ...], [$square.stroked$], [$square.stroked$],
        [a, b, c, d, e, ...], [$square.stroked$], [$square.stroked$],


        // Vertikale Linie zwischen den Spalten
        table.vline(
          x: 1,
          start: 1,
          end: 6,
          stroke: 0.5pt + rgb("#1c90d0"),
        )
      )
    ]
  ],
  solution: [
    #v(-2mm)
  ]
)
#v(2mm)

== Rainbow Tables

Haben wir vorher schon in Abschnitt 2 gesehen.

== Credential Stuffing

#grid(
  columns: (0.65fr, 0.35fr),
  gutter: 1.5em,
  [
    Bisher haben wir betrachtet, wie ein Angreifer ein Passwort herausfinden kann. Aber manchmal muss er das gar nicht.\
    Stellen wir uns vor, eine Webseite wird gehackt. Das ist übrigens gar nicht so unwahrscheinlich :(

    Entweder hat der Angreifer selbst die Seite gehackt und somit von allen Benutzern direkt den Namen und Passwort oder er kauft solche gestohlenen Daten im Darknet. Der Angreifer weiss nun, dass z.B. Max auf der Webseite das Passwort "Sommer2026!" verwendet.\
    Vielleicht verwendet Max dasselbe Passwort auch bei anderen Diensten?
  ],
  [
    #v(-6mm)
    #figure(
      image("../Bilder/credential_stuffing.png"),
      caption: [Der Angreifer versucht die gleichen Credentials bei anderen Diensten]
    )
  ]
)

 Beim *Credential Stuffing* versucht der Angreifer nun einfach bei weiteren Diensten mit demselben Email/Benutzernamen und Passwort die Konten von Max zu hacken. Zum Beispiel bei Instagram, Discord, Gmail, usw. Mit einem Computer und automatisierten Programm kann man auf tausenden von Seiten extrem schnell diese Login-Versuche durchführen .



#pagebreak()
== Phishing

Nicht jeder Angreifer versucht, ein Passwort technisch zu berechnen. Manchmal versucht er stattdessen, den Menschen zu täuschen. 

Max bekommt z.B. folgende Nachricht: „Dein Gmail-Konto wurde aufgrund verdächtiger Anmeldeversuche sicherheitshalber gesperrt. Bitte melde dich innerhalb von 24 Stunden an, um dein Konto zu entsperren.“. Oder eine Mail wie in 

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1.5em,
  [
    #v(-2mm)
    @phishing-example.
    Dazu gibt es meist einen Link, den das potentielle Opfer aufrufen sollte. Sobald nun Max also auf diesen Button mit diesem Link klickt, öffnet sich eine Webseite, die fast genau so aussieht, wie die von Instagram. Dort gibt er wie bei einem normalen Login-Versuch seinen Benutzernamen und Passwort ein.\
    Doch die Webseite gehört nicht Instagram. Sobald die Credentials von Max eingegeben wurden, werden die an den Angreifer übermittelt. Das nennt man *Phishing*.\
    Der Angreifer musste hier das Passwort also gar nicht selbst herausfinden. Max hat es ihm selbst gegeben.

    Phishing ist eines der häufigsten Angriffe in der Arbeitswelt und kann Firmen (aufgrund Fehler von Mitarbeitenden) mehrere Millionen Franken kosten. Heutzutage wird Fishing sogar noch erweitert - man nennt es *Quishing*. Das ist sozusagen Phishing über manipulierte QR-Codes.
  ],
  [
    #figure(
      box(
        stroke: 0.5pt + rgb("#1c90d0"),
        inset: 5pt,
      )[
        #image("../Bilder/phishing_example_instagram.png")
      ],
      caption: [Ein klassisches Phishing-Mail für einen Instagram-User]
    ) <phishing-example>
  ]
)

#v(-2mm)
#text(size: 1.1em, weight: "bold")[Typische Warnzeichen]
#v(-1mm)
Phishing-Nachrichten versuchen häufig, Druck oder Unsicherheit zu erzeugen, wie zum Beispiel:

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1em,
  [
    - „Ihr Konto wird heute gelöscht.“
    - „Dringende Sicherheitsüberprüfung erforderlich.“
  ],
  [
    - „Sie haben eine Zahlung erhalten.“
    - „Klicken Sie sofort hier.“
  ]
)

Die meisten Phishing-Versuche geschehen über Mail. Aber nicht alle. Folgende Punkte sollte man immer überprüfen:

- Woher kommt die Nachricht? Ist diese Mail die offizielle Mail der Firma, für die sie sich ausgibt?
- Ist die Adresse der Webseite wirklich korrekt, wenn man schon auf den Link geklickt hat?
- Wird unnötiger Zeitdruck erzeugt?
- Wird nach einem Passwort oder Code gefragt?

#v(4mm)

#grid(
  columns: (0.52fr, 0.48fr),
  gutter: 1.5em,
  [
    #figure(
      image("../Bilder/phishing_example_post.jpg"),
      caption: [Phishing-Mail am Beispiel der Schweizer Post. Markiert finden Sie einige auffällige Punkte, an denen man die Attacke erkennt.]
    )
  ],
  [
    #align(horizon)[
      #figure(
        image("../Bilder/quishing.jpg"),
        caption: [Quishing ist aktuell in der Schweiz ein grosses Thema. Falsche QR-Codes an Parkautomaten.]
      )
    ]
  ]
)
#v(2mm)

#exo(
  exercise: [
    #v(-2mm)
    Wir haben verschiedene Möglichkeiten kennengelernt, wie ein Angreifer an ein Passwort (oder allgemeiner an eine Information) gelangen kann. Nenne die verschiedenen Möglichkeiten, wie ein Passwort in die Hände eines Angreifers gelangen kann. 
  ],
  solution: [
    #v(-2mm)
    - Reines Ausprobieren (Brute Force)
    - Das Passwort gehört zu eines der häufigst benutzten Passwörter (Wörterbuchattacke)
    - Der Angreifer vergleicht einen gestohlenen Passwort-Hash mit vorberechneten Hashes (Rainbow Tables)
    - Der Angreifer verwendet bereits bekannte Zugangsdaten bei einem anderen Dienst (Credential Stuffing)
    - Der Angreifer täuscht den Benutzer und bringt ihn dazu, sein Passwort selbst einzugeben (Phishing)
  ]
)

== Was passiert bei einem Datenleck?


