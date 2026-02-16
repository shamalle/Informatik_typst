#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Grundlagen der Kryptologie

#grid(
  columns: (1fr, 1.15fr),
  gutter: 1em,
  [
    Manchmal möchte man Informationen nur mit bestimmten Personen teilen. Beispielsweise soll nur ein Mitschüler den Text auf einem Zettelchen verstehen, nicht aber der Lehrer, der das Zettelchen vielleicht abfängt. Seit langem gibt es daher die Idee, eine Nachricht so zu verschlüsseln, dass nur der intendierte Empfänger sie entziffern kann.\
    Dieses Gebiet der Informatik nennt sich *Kryptologie* und beinhaltet die Teilgebiete *Kryptographie* und *Kryptoanalyse*.
  ],
  [
    #image("../Bilder/kryptologie_begriffe.png")
  ]
 )

Gerade in der digitalen Welt spielt dieses Verfahren eine zentrale Rolle: Sensible Daten wie Passwörter müssen geschützt übertragen werden, damit Unbefugte keinen Zugriff darauf erhalten. Dabei beschränkt sich die Verschlüsselung nicht nur auf geschriebene Texte, sondern kann ebenso auf digitale Audiodateien, Videos oder den Programmcode von Software angewendet werden.

Wir fangen mit den wichtigsten Grundbegriffen an, welche wir am Beispiel im untenstehenden Bild erläutern werden.
#v(8pt)

#grid(
  columns: (1fr, 0.95fr), 
  gutter: 1.5em,
  [
    #outline-colorbox(
      title: "Begriffe mit Alice und Bob",
      color: "purple",
      radius: 3pt,
      width: auto,
      )[
        #set enum(numbering: "a.")
      
      Alice möchte Bob einen Text geheim übermitteln, damit ihn keine Drittperson verstehen kann.

      + Die ursprüngliche, verständliche Nachricht wird *Klartext* genannt. Im Beispiel ist das "Hallo Bob".

      + Nun wandelt Alice den Text in eine unverständliche Nachricht um. Diese Veränderung nennt man *Verschlüsselung*. So wird der Text "Hallo Bob" zu "Kdoor Ere". Der *Schlüssel* ist die geheime Information, mit der die Nachricht mit einem gewählten Verfahren unverständlich gemacht wird.

      + Die verschlüsselte Form der Nachricht, in diesem Fall "Kdoor Ere" nennt man *Geheimtext*.

      + Bei der *Entschlüsselung* wird der Geheimtext mithilfe des passenden Schlüssels wieder in den Klartext zurückverwandelt. So kann Bob die Nachricht verstehen, während eine Drittperson ohne den Schlüssel nur den unverständlichen Geheimtext sieht.
      ]
  ],
  [
    #v(10pt)
    #image("../Bilder/grundbegriffe_alice_bob.png")
    #v(10pt)
    #stickybox(fill: rgb("#ffb6a6"), rotation: 4deg)[
      #align(center)[
        🚨 *Wichtig* 🚨
        #v(-2pt)
        Damit eine Kommunikation wie die zwischen Alice und Bob funktionieren kann, müssen beiden denselben Schlüssel (die gleiche Information) haben! 
      ]
    ]
  ]
)
#v(5pt)

#grid(
  columns: (0.13fr, 1fr),
  gutter: 1em,
  [
    #image("../Bilder/schluesselraum.png")
  ],
  [
    #v(4pt)
    In der Kryptologie werden wir mehrmals dem Begriff *Schlüsselraum* begegnen. Der Schlüsselraum bezeichnet die Menge aller möglichen Schlüssel, die bei einem Verschlüsselungsverfahren verwendet werden können.
  ]
)
#v(10pt)

#text(size: 1.2em, weight: "bold")[Kleiner Rückblick...]

Im ersten Jahr des Gymnasiums haben Sie den Begriff Codierung kennengelernt. Die Begriffe Codierung und Verschlüsselung werden im manchmal gleich verwendet, bezeichnen in der Informatik jedoch unterschiedliche Konzepte.

#align(center)[
  #table(
    columns: (auto, auto),
    stroke: none,
    align: (center + horizon, center + horizon),
    table.hline(),
    table.header([*Codierung*], [*Verschlüsselung*]),
    table.hline(),
    [Bei der Codierung werden Daten nach festen, allgemein bekannten Regeln umgewandelt. Das Ziel ist, Daten *einheitlich, platzsparend oder maschinenlesbar* zu machen (z.B. ASCII, UTF-8).], [Bei einer Verschlüsselung wird eine Nachricht gezielt unlesbar gemacht, sodass sie nur mit einem geheimen Schlüssel wieder verständlich wird. Das Ziel ist der *Schutz der Information vor Unbefugten*.],
    table.hline(),
  )]