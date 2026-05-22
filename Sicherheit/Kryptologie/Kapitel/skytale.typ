#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

== Skytale Verschlüsselung

Die Skytale ist eines der ältesten bekannten Verschlüsselungsgeräte und wurde im antiken Sparta (ca. 5. Jahrhundert v. Chr.) verwendet, vor allem für militärische Nachrichten. Da es sich vom altriechischen Wort σκυτάλη (skytálē) für Stab ableitet, wird es nicht englisch ausgesprochen, sondern eher wie «Skü-ta-le».

#v(5pt)

#outline-colorbox(
  title: "Verfahren",
  color: "purple",
  radius: 3pt,
  width: auto,
)[
  #grid(
    columns: (1.3fr, 1fr),
    gutter: 1em,
    [
      Die sendende Person wickelt einen Streifen aus Pergament oder Leder spiralförmig um die Skytale und schreibt die Nachrichct längs des Stabes auf das aufgewickelte Band. Auf dem abgewickelten Streifen, welcher der empfangenden Person übermittelt wird, steht nun eine scheinbar sinnlose Buchstabenfolge. Die Botschaft kann nun mit einer Skytale vom selben Durchmesser wieder entziffert werden.
    ],
    [
      #figure(
        image("../Bilder/skytale_image.png", width: 80%),
      )
    ],
  )
]

Die Skytale ist ein Beispiel einer Verschlüsselung durch *Transposition*.  Das heisst, dass die Zeichen des Geheimtextes nicht ersetzt, sondern nur umgestellt werden. Der Klar- und Geheimtext haben die gleichen Zeichen (Buchstaben). Sie sind nur anders angeordnet (umgestellt).

#v(10pt)

#exo(
  exercise: [
    Verschlüsseln Sie selbst eine kurze Geheimbotschaft mit Hilfe einer Skytale (vorne liegen Klopapierrollen und Papierstreifen).

    _Partnerarbeit_: Tauschen Sie zu zweit Ihre Geheimtexte aus und versuchen Sie jeweils die Nachricht Ihres Gegenübers zu entschlüsseln.
  ],
  solution: [Selbstüberprüfung],
)

#exo(
  exercise: [
    Beantworten Sie folgende Fragen:

    - Was ist der Schlüssel in diesem Verfahren?

    - Wie viele verschiedene mögliche Schlüssel (=Schlüsselraum) gibt es?

    // - Schätzen Sie das Verfahren als sicher ein? Begründen Sie Ihre Antwort.
  ],
  solution: [
    - Der Schlüssel ist der Durchmesser der Skytale, da die Nachricht nur mit einer Skytale mit demselben Durchmesser entschlüsselt werden kann.

    - Es gibt so viele mögliche Schlüssel, wie es verschiedene Durchmesser von Skytalen gibt. Theoretisch gesehen wären ja unendlich viele Durchmesser möglich, aber in der Praxis gab es damals einfach eine Hand voll verschiedener Skytalen, die üblich waren.
  ],
)
