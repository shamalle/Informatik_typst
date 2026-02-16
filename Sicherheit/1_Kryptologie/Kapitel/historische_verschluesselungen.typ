#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

== Historische Verschlüsselungen

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    Verschlüsselung ist keine Erfindung der digitalen Welt. Bereits in der Antike bestand das Bedürfnis, Informationen geheim zu übermitteln, etwa im Militär, in der Politik oder im Handel. Aus diesem Bedarf heraus entstanden die ersten Verschlüsselungssysteme. Viele moderne Verschlüsselungsmethoden beruhen auf ähnlichen Prinzipien, sind jedoch deutlich weiterentwickelt. 

    //Die Beschäftigung mit diesen historischen Verfahren ermöglicht es, zentrale Grundideen der Kryptologie anhand von einfach anwendbaren Beispielen zu verstehen. Viele moderne Verschlüsselungsmethoden beruhen auf ähnlichen Prinzipien, sind jedoch deutlich weiterentwickelt. Gleichzeitig zeigen die frühen Systeme auch die Schwächen einfacher Verschlüsselungen. 

    Auf dieser Seite finden Sie zwei konkrete Beispiele von historisch bekannten Verschlüsselungsverfahren, die grossen Einfluss in der Geschichte hatten. Und auf den nächsten Seiten werden dann einfachere, für uns Anfänger verständlichere Verfahren vorgestellt, die die Entwicklung der Kryptographie massgeblich geprägt haben.

    #text(size: 1.2em, weight: "bold")[Zimmermann-Telegramm (1. Weltkrieg)]

    Im Januar 1917 verschickte der deutsche Aussenminister Arthur Zimmermann eine geheime Nachricht an Mexiko, das sogenannte Zimmermann-Telegramm. Darin schlug Deutschland ein Bündnis gegen die USA vor, falls diese ihre Neutralität im ersten Weltkrieg aufgeben würden. Mexiko sollte im Gegensatz dafür an die USA verlorene Gebiete zurückerhalten. Die Nachricht war verschlüsselt, wurde jedoch vom britischen Geheimdienst abgefangen und entschlüsselt. 

    #stickybox(
      rotation: -2deg,
    )[
      Die Briten kannten schon frühere deutsche Codes, weil ein Diplomat sein Codebuch verlor. Dieses Zufallswissen half, das Telegramm schneller zu entschlüsseln.
    ]
    #v(5pt)

    #align(center)[
    #figure(
      image("../Bilder/zimmermann_telegramm.jpeg", width: 95%),
      caption: [Das Telegram bestand nur aus Zahlenreihen.])
    ]
    
    Daraufhin empfahlen die Briten der USA ihre Neutralitätspolitik zu überdenken, was entscheidend dazu beitrug, die US-amerikanische Öffentlichkeit für den Kriegseintritt einzustimmen.

  ],
  [
    #text(size: 1.2em, weight: "bold")[Enigma-Verschlüsselung (2. Weltkrieg)]

    Im Zweiten Weltkrieg verschlüsselte Deutschland seine militärischen Funksprüche mit der Maschine Enigma. Sie arbeitete mit rotierenden Walzen und erzeugte sehr komplexe Codes, die als sicher galten. Die deutsche Führung nutzte sie für wichtige militärische Befehle. 

    #align(center)[
      #figure(
        image("../Bilder/enigma_device.jpg"),
        caption: [Die Enigma-Maschine war so klein, damit man sie praktisch unterwegs eingesetzt werden konnte.])
    ]

    Doch im britischen Codezentrum Bletchley Park gelang es Kryptologen, die Verschlüsselung systematisch zu brechen. Eine wichtige Rolle spielte dabei der Mathematiker Alan Turing. Darum nennt man die grossen Maschinen, die dazu gebaut wurden, die Enigma-Verschlüsselung zu knacken, auch "Turing-Bomben".
    
    #figure(
      image("../Bilder/enigma_bombe.png"),
      caption: [Über 200 solcher Turing-Bomben wurden eingesetzt, um die Enigma-Codes zu knacken.])

    #stickybox(
      rotation: 2deg,
    )[
      Da viele Nachrichten der deutschen Armee immer mit den gleichen Worten starteten ("Heil Hitler"), half dieses vorhersehbare Muster den Briten, die Verschlüsselungen zu knacken.
      // Durch das Knacken der Enigma-Verschlüsselung konnten sich die Allierten im zweiten Weltkrieg einen wichtigen Vorteil verschaffen, was den ganzen Krieg um schätzungsweise 2-4 Jahre verkürzte.
    ]

     Durch die Entschlüsselung erhielten die Alliierten entscheidende Informationen über die deutschen militärischen Pläne. Historiker gehen davon aus, dass dies den Krieg deutlich verkürzte.
  ]
)

