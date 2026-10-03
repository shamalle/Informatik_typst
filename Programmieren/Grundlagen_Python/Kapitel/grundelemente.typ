#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup
#import "../../../config/conf.typ": shoutout

// #heading(numbering: none)[Grundelemente einer Programmiersprache]

Bisher haben wir lediglich mit den Befehlen aus dem ```py turtle```-Modul gearbeitet, um eine kleine Schildkröte zu steuern und Figuren zu generieren. Python kann jedoch viel mehr als nur dieses grafische Modul.\
Wie jede Programmiersprache folgt auch Python bestimmten Regeln und Muster, damit wir sinnvoll mit dem Computer arbeiten können. Diese Elemente werden wir uns genauer anschauen.

#outline-colorbox(
  title: "Grundelemente einer Programmiersprache",
  color: "purple",
  radius: 3pt,
  width: auto,
  inset: 6pt,
  )[
    #v(2mm)
    + *Variablen und Zuweisungen* \
      Der Computer muss sich Sachen merken können.

    + *Ein- und Ausgabe*\
      Der Computer muss Input entgegennehmen nehmen können und Output ausgeben können.

    + *Operatoren*\
      Der Computer muss wissen, was er mit den verschiedenen Elemente machen kann (rechnen, vergleichen, ...).

    + *Datentypen*\
      Der Computer hat Regeln, was er mit welchen Elementen machen darf.

    + *Kontrollstrukturen*\
      Der Computer muss Entscheidungen treffen und Dinge wiederholen können.

    + *Funktionen*\
      Der Computer muss Aufgaben bündeln und wiederverwenden können.
    
    #v(2mm)
  ]

All diese Elemente sind eng miteinander verbunden und manchmal ist es schwierig das eine zu verstehen, ohne die anderen. Darum versuchen wir in kleinen Etappen sie alle näher zu begreifen.

