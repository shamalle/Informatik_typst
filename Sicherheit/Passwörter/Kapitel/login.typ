#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Login mit Account und Passwort

#grid(
  columns: (0.65fr, 0.35fr),
  gutter: 1em,
  [
    Um die Funktionen eines Passworts zu verstehen, betrachten wir folgende Leitfrage an einem konkreten Beispiel:
    
    #text(size: 1.1em, weight: "bold")[Woher weiss Instagram, dass sich wirklich Max mit seinem Konto anmelden möchte?]
    ],
  [
    #v(-5mm)
    #image("../Bilder/login_max_instagram.png")
  ]
)

Stellen wir uns vor, Max möchte sich auf seinem Handy bei Instagram anmelden. Er gibt seinen Benutzernamen und sein Passwort ein. Instagram überprüft die Angaben und gewährt ihm anschliessend Zugriff auf sein Konto. Doch was passiert dabei eigentlich?

#pad(left: 3mm)[
  #text(size: 1.1em, weight: "bold")[a) Identifikation]

  Zuerst muss Max angeben, wer er ist. Zum Beispiel gibt er seinen Benutzernamen oder seine E-Mail-Adresse ein. Das nennt man *Identifikation*. Die Identifikation beantwortet also die Frage: _Wer behauptest du zu sein?_

  #text(size: 1.1em, weight: "bold")[b) Authentifizierung]

  Nur zu behaupten, dass man Max ist, reicht natürlich nicht. Sonst könnte sich jeder als Max ausgeben. Instagram muss deshalb überprüfen, ob Max tatsächlich derjenige ist, für den er sich ausgibt. Daher gibt Max also sein Passwort an. Das nennt man *Authentifizierung*. Die Authentifizierung beantwortet also die Frage: _Kannst du beweisen, dass du wirklich Max bist?_\
  Ein Passwort ist dabei ein sogenannter *Authentifizierungsfaktor*. Es zur Kategorie "Etwas, das (nur) du weisst".

  #text(size: 1.1em, weight: "bold")[b) Autorisierung]

  Wenn Instagram erfolgreich überprüft hat, dass Max wirklich Max ist, stellt sich eine weitere Frage: _Was darf Max jetzt machen? _\
  Max darf beispielsweise seine eigenen Fotos ansehen, Nachrichten lesen oder Beiträge veröffentlichen. Er darf aber nicht einfach die privaten Nachrichten eines anderen Benutzers lesen oder dessen Konto verändern. Das nennt man *Autorisierung*. Die Autorisierung beantwortet also die Frage: _Was darfst du tun?_
]
#v(3mm)

#outline-colorbox(
      title: "Beispiele von Authentifizierungsfaktoren",
      color: "purple",
      radius: 3pt,
      width: auto,
    )[
      #set enum(numbering: "a.")

      Ein Passwort ist nur ein möglicher Authentifizierungsfaktor. Es gibt noch weitere Möglichkeiten, um die Authentifizierung durchzuführen. Dabei unterscheidet man zwischen 3 Kategorien:

      #grid(
        columns: (0.7fr, 0.3fr),
        gutter: 1em,
        [
          #text(size: 1.1em, weight: "bold")[Etwas, das du weisst]
          #v(-2mm)
          Dazu gehören zum Beispiel Passwörter, PINs, Sicherheitsfragen oder Muster. 

          #text(size: 1.1em, weight: "bold")[Etwas, das du besitzt]
          #v(-2mm)
          Dazu gehören zum Beispiel Schlüssel, Smartphones oder Authenticator-Apps.

          #text(size: 1.1em, weight: "bold")[Etwas, das du bist]
          #v(-2mm)
          Dazu gehören zum Beispiel ein Fingerabdruck, die Iris oder das Gesicht. Diese Kategorie wird auch als Biometrie bezeichnet.
        ],
        [
          #grid(
            columns: (1fr, 1fr),
            gutter: 5mm,

            // Linke Spalte
            image("../Bilder/authentication_pin_biometric.jpg", width: 100%),

            // Rechte Spalte
            stack(
              dir: ttb,
              spacing: 2mm,
              image("../Bilder/authenticator.png", width: 100%),
              image("../Bilder/iris_scanner.png", width: 100%),
            ),
          )
        ]
      )

      Diese Faktoren können auch kombiniert werden. Wenn Max z.B. neben seinem Passwort noch einen Code aus einer Authenticator-App eingeben muss, verwendet er zwei Faktoren - auch *Multi-Faktor-Authentifizierung* (MFA) genannt. Das erhöht die Sicherheit, da ein Angreifer nun beide Faktoren kennen muss, um sich als Max auszugeben.
    ]

#v(2mm)

Jetzt haben wir geklärt, wie Instagram sich sicher sein kann, dass sich auch wirklich Max anmelden möchte. Nun stellt sich aber schon die nächste Frage: Wenn Instagram mein Passwort kennen muss, muss Instagram es dann auch irgendwo speichern?
