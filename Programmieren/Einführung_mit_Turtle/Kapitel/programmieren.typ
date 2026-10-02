#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup
#import "../../../config/conf.typ": shoutout

= Was ist "Programmieren"?

Ein Computer ist zunächst einfach mal eine Maschine, die wahnsinnig schnell arbeiten (rechnen) kann. Damit Sie ein Spiel spielen können, muss irgend jemand dem Computer also sagen, was er denn genau zu rechnen habe. Ihr Hund versteht Sie nicht, wenn Sie mit ihm sprechen wie mit einem Kollegen - genauso versteht der Computer Sie nicht, wenn Sie ihm Ihre Wünsche einfach in normalem Text schreiben. Es braucht in beiden Fällen eine *formalisierte Sprache*.

Wir geben dann Kommandos - sowohl dem Hund (Sitz!) als auch dem Computer (forward()).



#shoutout[
  Dem Computer beibringen, was die einzelnen Kommandos bedeuten sollen und danach die richtigen Kommandos in der richtigen Reihenfolge hinschreiben - das nennt man *programmieren*.
]

#v(3mm)

#grid(
  columns: (0.65fr, 0.35fr),
  gutter: 1.2em,
  [
    Diese Kommandos sind also in einer Sprache geschrieben, so wie wir auch z.B. Deutsch, Französisch, Mandarin oder Spanisch sprechen. Und wie es auf der Welt viele verschiedene Sprachen gibt, gibt es auch in der Welt der Computer viele Programmiersprachen (siehe @programming-languages).
    
    Wir schauen uns in diesem Kurs die Programmiersprache *Python* vertieft an, da sie einfach für Einsteiger ist und viele Anwendungsgebiete hat. Doch worin unterscheiden sich die verschiedenen Sprachen und warum gibt es so viele?

    
  ],
  [
    #figure(
      box(
        stroke: 0.3pt,
        inset: 2pt,
        image("../Bilder/programmiersprachen_horizontal.png")
      ),
      caption: "Logos von Programmiersprachen"
    ) <programming-languages>
  ]
)

#v(1mm)

#shoutout[
  Programmiersprachen unterscheiden sich ähnlich wie unsere gesprochenen Sprachen voneinander: Es gibt verschiedene *Regeln* (Grammatik, Rechtschreibung, Aufbau eines Satzes, ...). Es gibt so viele Sprachen, weil sich je nach Situation, was man programmieren möchte, eine besser eignet als die andere.
]

#v(1mm)
    
Zum Beispiel wenn man Programme für Android-Geräte entwickelt, braucht man oft die Programmiersprache "Kotlin". Wenn man hingegen mehrheitlich statistische Berechnungen machen möchte, braucht man eher die Sprache "R".

#v(2mm)

#grid(
  columns: (0.2fr, 0.8fr),
  gutter: 1.2em,
  [
    #image("../Bilder/conversation_human_robot.png")
  ],
  [
    #align(horizon)[
      Programmieren bedeutet also, einer Maschine Befehle zu ersteilen und sie damit zu steuern. Wie wir aber auch im letzten Thema gelernt haben, speichert der Computer alle Informationen in Form von 0 und 1. Alles (egal ob Texte, Bilder oder Musik) wird im Inneren des Computers als eine lange Folge von 0 und 1 dargestellt.Doch für uns Menschen wäre es mühsam, mit einem Computer direkt in dieser Sprache aus lauter 0 und 1 zu sprechen. 
    ]
  ]
)

Darum wurden Programmiersprachen entwickelt. Sie dienen als *Übersetzungsschicht* zwischen Mensch und Maschine. Wir können damit Anweisungen in einer Sprache formulieren, die für uns verständlich ist - und der Computer kann sie dann Schritt für Schritt in seine „Sprache“ aus 0 und 1 umsetzen.

#shoutout[
  Damit das funktioniert, brauchen wir eine *Entwicklungsumgebung*. Das ist ein Programm, das uns beim Schreiben, Testen und Ausführen von Code hilft. So können wir dem Computer Befehle geben, ohne uns um die komplizierten Binärcodes kümmern zu müssen.
]

#v(2mm)

Hier sehen Sie zum Beispiel vier Mal das gleiche Programm, aber in verschiedenen Programmiersprachen geschrieben:

#grid(
  columns: (0.5fr, 0.5fr),
  gutter: 1em,
  [
    #codly()
    ```py
    x = int(input("Zahl: "))
    y = x * x
    print("Quadrat:", y)
    ```

    #codly()
    ```rust
    let mut s = String::new();
    std::io::stdin().read_line(&mut s).unwrap();
    let x: i32 = s.trim().parse().unwrap();
    println!("Quadrat: {}", x * x);
    ```
  ],
  [
    #codly()
    ```java
    Scanner s = new Scanner(System.in);
    int x = s.nextInt();
    int y = x * x;
    System.out.println("Quadrat: " + y);
    ```

    #codly()
    ```r
    x <- as.integer(readline("Zahl: "))
    y <- x * x
    print(paste("Quadrat:", y)
    ```
  ],
)