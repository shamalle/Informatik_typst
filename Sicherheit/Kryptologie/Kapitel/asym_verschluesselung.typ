#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Asymmetrische Verschlüsselung

In diesem Kapitel lernen Sie, was die asymmetrische Verschlüsselung ist. Es wird vorausgesetzt, dass Sie das vorherige Kapitel "Symmetrische Verschlüsselung" bearbeitet und verstanden haben.\
In diesem Kapitel verwenden wir in Beispielen Personen, um das Verfahren praktischer erklären zu können:


#grid(
  columns: (0.6fr, 0.4fr),
  gutter: 1.5em,
  [
    - Alice und Bob kommunizieren (geheim) miteinander, Alice sendet eine Nachricht, Bob empfängt sie.
    - Eve ist die Person mit bösen Absichten zwischen Alice und Bob. Sie möchte immer mitlesen können, wenn die beiden was Geheimes austauschen (engl.: *eaves* #h(-0.8mm)dropping).
    - Trent is eine vertrauenswürdige Person, eine dritte Stelle wie z.B. ein Notar oder eine Anwältin (engl.: *Tr* #h(-0.8mm)usted *Ent* #h(-0.8mm)ity)
  ],
  [
    #v(1mm)
    #align(horizon)[
      #figure(
        image("../Bilder/kryptofamilie.png"),
        caption: [Die Kryptofamilie wie sie in der Literatur standardgemäss verwendet wird.]
      )
    ]
  ]
)

#v(1mm)
#exo(
  exercise: [
    #v(-2mm)
    Formulieren Sie in Ihren eigenen Worten, warum der Begriff *symmetrische* Verschlüsselung so heisst. Was ist das Besondere daran?
  ],
  solution: [
    Symmetrisch bedeutet, dass zum Ver- und Entschlüsseln der gleiche Schlüssel verwendet wird. Das kann man sich wie den eigenen Haus- oder Wohnungsschlüssel vorstellen.
  ]
)
#v(2mm)

*Asymmetrische* Verschlüsselung haben wir dann, wenn wir zum Verschlüsseln einen anderen Schlüssel verwenden als zum Entschlüsseln. Das tönt auf den ersten Blick abstrus. Aber mit ein klein wenig Mathematik ist das eben möglich. 

/*
#v(3mm)
#text(size: 1.2em, weight: "bold")[Wozu brauchen wir denn überhaupt die asymmetrische Verschlüsselung?]
 
Die Frage, die man sich vermutlich zuerst stellen müsste ist, warum man denn nicht alles symmetrisch verschlüsseln kann? 
*/

#v(2mm)
#exo(
  exercise: [
    #v(-2mm)
    Was war noch ein Hauptproblem der symmetrischen Verschlüsselung?
  ],
  solution: [
    Der Schlüsseltausch ist das Hauptproblem! Wenn Alice und Bob miteinander verschlüsselt kommunizieren wollen, müssen sie den Schlüssel irgendwie austauschen. Wenn Alice in Australien und Bob in Alaska wohnen, dann wird das ein wenig umständlich oder teuer. Dementsprechend muss man Wege suchen, dass dieser Schlüsseltausch trotzdem klappt und vor allem sicher passiert. Und das Coole der asymmetrischen Verschlüsselung, dass wir den Schlüsseltausch über das nicht geschützte Internet übertragen können.
  ]
)

#v(2mm)

Die symmetrische Verschlüsselung hat aber auch viele Vorteile. Beispielsweise ist sie unglaublich schnell. Im Schnitt ist sie ungefähr 1000x schneller als die asymmetrische Verschlüsselung. Weist der Schlüssel eine genügend grosse Länge in Bit auf, dann ist sie mittels Brute-Force auch fast nicht zu knacken. Technisch ist das Ganze auch einfacher implementiertbar, wenn man nur mit einem einzigen Schlüssel hantieren muss.

Das Problem ist aber: Wenn jemand diesen Schlüssel kriegt, dann sind Alice und Bob aufgeschmissen. Die geheime Kommunikation ist komplett korrumpiert. Und dieses "Schlüssel in die Finger kriegen", also die Gefahr, dass jemand Unbefugtes (bei uns wäre das Eve) Zugriff auf den Schlüssel kriegt, isst besonders beim Schlüssel-Austausch ganz gross.



#grid(
  columns: (0.4fr, 0.5fr),
  gutter: 1.5em,
  [
    Denken Sie dran: bei der Übertragung der eigentlichen Nachricht wird der Schlüssel natürlich nicht übertragen. Dieser wird nur für die Ver- und Entschlüsselung benötigt. Aber Bob muss halt einmalig in den Besitz des Schlüssels kommen, sonst kann er die Nachrichten von Alice nicht lesen.
  ],
  [
    #v(1mm)
    #stickybox(rotation: 2deg)[
      #align(center)[
        #v(-1.5mm)
        🚨 *Wichtig* 🚨\
        Das Erstellen eines symmetrischen Schlüssels ist nicht schwierig und auch nicht gefährlich. Aber ihn der gewünschten Person zu überreichen, *DAS* ist das Hauptproblem der symmetrischen Verschlüsselung
      ]
    ]
  ]
)
#v(2mm)

Angenommen Alice steckt den erstellten Schlüssel in einen Umschlag und will ihn Bob senden. Der Umschlag mit dem handgeschriebenen Schlüssel könnte ja geklaut werden bei der Übergabe. Oder man lässt den Umschlag per Kuriert (Post, DHL, ...) senden. Aber ist dieser vertrauenswürdig? Ein direktes Treffen für den Austausch ist vielleicht auch nicht machbar, falls Alice im Wunderland wohnt und Bob hier in der Schweiz... Ein solches Treffen braucht Zeit und kostet.

#text(size: 1.2em, weight: "bold")[Wäre es nicht praktisch, wenn man diesen Schlüssel gar nicht mehr austauschen müsste?]

Und das ist die Idee der asymmetrischen Verschlüsselung. Beide haben jetzt nämlich 2 Schlüssel: Einer ist geheim und darf (muss) nicht ausgetauscht werden und der zweite Schlüssel darf (muss) man austauschen. Dieser ist aber nicht geheim.
- Den geheimen Schlüssel nennt man *privaten Schlüssel* und
- den nicht-geheimen Schlüssel nennt man *öffentlicher Schlüssel* (den kann man frei an alle verteilen sogar).

Aber wie soll das nun jetzt gehen? Für das brauchen wir ein paar Konzepte, die wir zuerst kennenlernen müssen.

#outline-colorbox(
  title: "Kerkhoffs' Prinzip",
  color: "blue",
  radius: 3pt,
  width: auto,
  inset: 6pt,
  )[
    "_Die Sicherheit eines Kryptosystems darf nicht von der Geheimhaltung des Algorithmus abhängen. Die Sicherheit gründet sich nur auf die Geheimhaltung des Schlüssels._"\
    Das bedeutet, die guten Verfahren sind zwar global bekannt, das sollte sie aber nicht knackbar machen, da der Schlüssel das schwer zu knackende Geheimnis ist.
  ]

#outline-colorbox(
  title: "Hash-Funktion",
  color: "blue",
  radius: 3pt,
  width: auto,
  inset: 6pt,
  )[

    #grid(
      columns: (0.7fr, 0.3fr),
      gutter: 1em,
      [
        Eine Hash-Funktion ist eine sogenannte Einwegsfunktion. Eine Einwegfunktion ist eine Funktion, die man leicht in eine Richtung machen kann, aber nur sehr schwer rückgängig machen kann.

        Beispiel Spaghetti:\
        Man hat einen Haufen ungekochter Spaghetti. Sobald man sie für die vorgesehene Zeit ins kochende Wasser gibt, werden sie gar. Aber wenn die Spaghetti einmal gekocht sind, ist es sehr schwierig, genau den ursprünglichen Zustand wiederherzustellen. Man kann sie nicht einfach wieder „ungekocht machen“.
      ],
      [
        #align(horizon)[
          #image("../Bilder/hash_visualised.png")
        ]
      ]
    )
]
#v(2mm)

== RSA und die Primfaktorzerlegung <chapter-rsa>

Wir schauen uns ein einfaches Beispiel einer asymmetrischen Verschlüsselung an: RSA. Dieses Verfahren wurde 1977 erfunden und gilt heute immer noch als sicher (wenn man gewisse Vorkehrungen trifft)!\
RSA wurde von den drei Wissenschaftlern Ronald *R* #h(-0.8mm)ivest, Adi *S* #h(-0.8mm)hamir und Leonard *A* #h(-0.8mm)dleman entwickelt und ist von der Idee her eigentlich unglaublich einfach. Das Verfahren ist öffentlich (Kerkhoff's Prinzip) und einfach anwendbar. Um RSA zu knacken, werden Sie aber lange brauchen...

Oben haben Sie gehört, dass es Einwegfunktionen gibt, die kaum rückgängig zu machen sind. Jetzt gibt es aber ganz bestimmte solcher Funktionen, die eine Hintertür aufweisen: wenn man ein Geheimnis kennt (z.B. einen Schlüssel), dann ist auch der Rückweg einfach.

#v(2mm)
#exo(
  exercise: [
    #v(-2mm)
    Stellen Sie sich in diesem Zusammenhang ein Auto vor. Nehmen Sie an, Sie zerlegen das Auto in all seine Einzelteile. Werden Sie es wieder zusammenbauen können? Ich bezweifle es, ausser… Unter welchen Umständen können Sie das Auto wieder zusammenbauen?
  ],
  solution: [
    Unter der Voraussetzung, dass Sie den Bauplan dafür haben. Der Bauplan ist quasi das Geheimnis. Ohne das Geheimnis wird es praktisch unmöglich sein, mit Bauplan hingegen recht einfach (vorausgesetzt, Sie können den Bauplan lesen).
  ]
)
#v(2mm)

#grid(
  columns: (0.6fr, 0.4fr),
  gutter: 1.5em,
  [
    Bei RSA handelt es sich vereinfacht gesagt um die folgende Einwegfunktion: *Multiplikation zweier Primzahlen*.\
    Moment mal... Warum soll das eine Einwegfunktion sein? Ich kann ja z.B. $5 dot 11$ rechnen und sehe sehr schnell, dass die Zahl $55$ das Produkt von $5$ und $11$ ist...
  ],
  [
    #v(-4mm)
    #stickybox(rotation: 2deg)[
      #align(center)[
        #v(-1.5mm)
        Zuerst schauen wir uns eine vereinfachte Darstellung an. Die konkrete mathematische Implementation anhand eines Beispiel finden Sie weiter hinten (siehe ...)
      ]
    ]
  ]
)
#v(-2mm)
Natürlich sieht man so etwas sehr schnell, wenn wir so kleine Primzahlen verwenden. Die Idee dieser Einwegfunktion ist aber, dass die Primzahlen sehr sehr gross sind, nämlich unterdesssen $2048$ Bit (oder sogar $4096$ Bit) und das ist extrem viel!
#v(2mm)

#outline-colorbox(
  title: "Primfaktorzerlegung aus der Sicht der Mathematik",
  color: "blue",
  radius: 3pt,
  width: auto,
  inset: 6pt,
  )[
      _Es ist bisher kein effizientes Faktorisierungsverfahren bekannt, um die Primfaktorzerlegung einer beliebigen Zahl zu erhalten._ (Wikipedia)

      Wen es interessiert: wir sprechen von einer Komplexität von O($2^n$). n entspricht der Anzahl der Bits der Zahl. Wir haben also ein exponentielles Wachstum der Laufzeit, was Brute-Force Angriffe kaum möglich macht.
]
#v(1mm)

Als Vergleich: eine zufällige Primzahl (als Dezimalzahl dargestellt, damit Sie sich halbwegs die Grösse der Zahl vorstellen können) mit $1024$ Bit sieht so aus:

$936950333541586133319374328156026905133609948018135942835074179311774155863689643134002204062192$\
$368968143842076467785012126774060444425636648500204594938113053491089997241976228842945405739713$\
$930172527119471513696498017229054066079688769796201862414862866104930957984035712109098568764530$\
$85197838255273465203$

Eine andere Primzahl mit einer Länge von $1024$ Bit? Hier ein weiteres Beispiel:

$128493332700216091436367685694701156169893837656053246200898511812494220340496566453122528415923$\
$481164128373915479939013014080524308477493708397123774720443109754276842890150326747382925239493$\
$053521329044218626682837070703808098556891444705338673743843898936787137809028982280727840098591$\
$544604410782251993281$

In der Praxis werden aber sogar heute Zahlen mit $2048$ Bit oder sogar $4096$ Bit verwendet! Und falls Sie sich jetzt fragen, wie viele Primzahlen es mit einer solchen Länge eigentlich gibt... Es sind sehr viele.

#outline-colorbox(
  title: "Ein kleiner Rückblick",
  color: (
    stroke: rgb("#666666"),
    fill: none,
  ),
  radius: 3pt,
  width: auto,
  inset: 6pt,
  )[
    #v(2mm)

    Kleine Repetition:  Wie viele Zahlen können wir mit 8 Bit darstellen?

    Und wenn wir wissen wollen, wie viele Zahlen mit 8 Bit es gibt, die an erster Stelle ganz links eine 1 aufweisen, also konkret alle Zahlen zwischen 128 und 255, dann sind das 128 Stück:

    #grid(
      columns: (1fr, 1fr),
      gutter: 1em,
      [
        $ 2^8 -2^7 = 256 - 128 = 128 $
      ],
      []
    )

    Wenn Sie wissen wollen, wie viele Primzahlen zwischen 128 und 255 liegen, dann können Sie die Formel für die sogenannte _Primzahldichte_ verwenden. Das ist lediglich eine Schätzung (das Berechnen von Primzahlen ist sehr mühsam und es gibt keine einfache Formel dafür):

    #grid(
      columns: (1fr, 1fr),
      gutter: 1em,
      [
        $ "Anzahl Primzahlen" = frac("Anzahl Zahlen", ln("Anzahl Zahlen")) $
      ],
      [
        #v(-1.7mm)
        Die Formel gibt in diesem Fall 26 zurück. In Wirklichkeit hat es 23 Primzahlen zwischen 128 und 256. Für eine Schätzung ist das ziemlich okay.
      ]
    )

    #v(2mm)

    Bei RSA geht es einerseits um die Multiplikation zweier Primzahlen, andererseits um die Primfaktorzerlegung dieses Produkts, also das Zurückrechnen auf diese beiden Primzahlen. Bei 55 war das sehr einfach, weil die Zahl klein ist.

    Zerlegen Sie doch mal von Hand (nur mit Taschenrechner)   $ 37901$ in Primfaktoren. Stoppen Sie dabei die Zeit.

  

    Wenn Sie ein wenig systematisch vorgehen, sind Sie recht schnell. Mit Hilfe von Excel haben Sie es in $30$ Sekunden herausgefunden. Die beiden Faktoren lauten:

    $ 151 dot 251 = 37901 $

    Der springende Punkt ist aber, dass die Multiplikation schneller geht als die Faktorisierung. Mit einem Taschenrechner haben Sie die Multiplikation sehr schnell durchgeführt. Diese dauert so lange, wie Sie für das Eintippen der Zahlen benötigen. Die Faktorisierung geht deutlich länger. Und eben: dafür gibt es keine Formel, sondern nur langsame Algorithmen.
    #v(2mm)
]

Zurück zu RSA. Wir haben vorhin nicht von Zahlen gesprochen mit einer Länge von $8$ Bit, sondern mit einer Länge von $1024$ Bit. Wenn wir mit der oben genannten Formel berechnen, wie viele Primzahlen mit einer solchen Länge (genau $1024$ Bit) existieren, erhalten wir:
#v(-2mm)
$ "Anzahl Primzahlen" = frac(2^24-2^23, ln(2^24-2^23)) = 1.3 dot 10^305 "Primzahlen" $

#v(-2mm)
#grid(
  columns: (0.6fr, 0.4fr),
  gutter: 1em,
  [
    #exo(
      exercise: [
        #v(-2mm)
        Wie viele Atome im ganzen Universum gibt es eigentlich? Vergleichen Sie die Zahl mit der Anzahl der Primzahlen mit einer Länge von 1024 Bit.
      ],
      solution: [
        Atome gibt es «nur» etwa $10^80$, Primzahlen mit einer Länge von $1024$ Bit jedoch $10^305$..!
      ]
    )
  ],
  [
    #v(2.5mm)
    #stickybox(rotation: 2deg)[
      #align(center)[
        #v(-1.5mm)
        Beachten Sie, dass wir hier nur von Primzahlen mit einer exakten Länge von 1024 Bit reden. Diejenigen mi einer Länge von 1023 Bit, 1022 Bit, ... fehlen dabei sogar!
      ]
    ]
  ]
)
#v(2mm)

Und warum ist das relevant? Weil ich so unmöglich rasch jede Primzahl testen kann, ob sie zur Faktorisierung geeignet ist.\
#v(2mm)
/*
_Hinweis_: Es kann sein, dass diese superlangsamen Algorithmen mit Hilfe von Quantencomputern zukünftig effizient gelöst werden können. Deshalb hat man nun Angst, weil dann wären viele kryptografische Verfahren recht schnell zu brechen.
*/

#text(size: 1.2em, weight: "bold")[Testen wir jetzt die Multiplikation / Zerlegung mit unseren beiden 1024 Bit Primzahlen:]

#grid(
  columns: (0.65fr, 0.35fr),
  gutter: 1.2em,
  [
    Multiplizieren wir  mal die beiden 1024 Bit Primzahlen mithilfe von Thonny:\

    Dann werden Sie feststellen, dass die Berechnung instantan erfolgt, also ohne jegliche sichtbare Rechenzeit. Je nach PC geht es vielleicht max. 1 Sekunde.\
    
    Jetzt schauen wir uns das Gegenteil an. Betrachten wir das Produkt:
  ],
  [
    #v(-1mm)
    #image("../Bilder/primzahlen1024_multipliziert.png")
  ]
)

$12039187093133746325769310445114673175921413498759569170599002029178948215763265638284685609293$\
$91229857063345795367941921384124390438025927119145668803718750829599589156243976344836157343188$\
$32012612864138274141135591249891942480801467423640161065027280453385552999713495205541142706525$\
$31089517029027669833256273624896559379969221290456443100347628566150350962614048198415911345431$\
$51073026531975117053025698905797833450813227495317057938643229791948929599942276926812580957998$\
$00352799464443092720083290653663804496111591528539755887470078189657756794284270949841808205008$\
$72778779665243304465754969955248694794743301043$

#v(2mm)
#exo(
      exercise: [
        #v(-2mm)
        Zerlegen Sie diese Zahl in ihre Primfaktoren. Fragen Sie doch dazu vorher z.B. ChatGPT, ob er Ihnen einen schnellen Algorithmus für die Faktorisierung einer Zahl liefern kann. Welche Antwort kriegen Sie?
      ],
      solution: [
        Meine Frage an ChatGPT hat so gelautet:
        «Gibt es einen schnellen Algorithmus, um die Multiplikation zweier Primzahlen (also das Produkt) wieder zu faktorisieren?»

        Seine Antwort:\
        Nein, es gibt keinen schnellen Algorithmus zur Faktorisierung des Produkts zweier großer Primzahlen. Genau das ist die Grundlage vieler moderner Kryptosysteme, wie RSA.\
        [blabla ...]\
        *Fazit:* Solange keine revolutionären neuen Algorithmen oder leistungsfähigen Quantencomputer existieren, bleibt die Faktorisierung großer Primzahlen extrem schwer und wird als sicherheitskritische Grundlage in der Kryptographie genutzt.
      ]
)
#v(2mm)

Unser Fazit: Multiplikation ist sehr einfach, Faktorisierung unglaublich schwer. Die obige Zahl in ihre Primfaktoren zu zerlegen, dauert voraussichtlich länger, als unser Universum exisiter, also mehr als $4.5$ Milliarden Jahre!

#v(2mm)
#exo(
  exercise: [
    #v(-2mm)
    Erinnern Sie sich an die erwähnte Hintertür einer Einwegsfunktion, die ganz am Anfang von @chapter-rsa erwähnt wurde? Was ist nun bei der Faktorisierung die Hintertür? Wann ist diese ganz einfach?
  ],
  solution: [
    Die Faktorisierung ist dann ganz einfach, wenn wir einen der beiden Primfaktoren kennen.
    Eben: 55 in Primfaktoren zerlegen ist schwierig. Wenn wir aber die Zahl 5 kennen (den einen der beiden Primfaktoren), dann müssen wir nur eine ganz einfache Division machen: 55 geteilt durch 5, und schon kriegen wir 11 für den zweiten Primfaktor.
    Haben Sie 11 gegeben, dann dividieren wir einfach 55 geteilt durch 11, und schon kriegen wir 5 als zweiten Primfaktor.\
    Also ist einer der beiden Primfaktoren das Geheimnis/die Hintertür.
    
  ]
)
#v(2mm)

Das Spezielle an RSA ist nun, dass wir diese Hintertür, also das Geheimnis nicht mit der anderen Person auszutauschen brauchen. Das ist genau der Unterschied zur symmetrischen Verschlüsselung. Dort müssen wir den Schlüssel austauschen. Hier ist das nicht nötig. Wie das funktioniert, sehen wir gleich.
#v(2mm)

== Das Konzept von RSA (und anderen aymmetrischen Verfahren)

Nun schauen wir das Grundprinzip von RSA resp. von jedem asymmetrischen Verschlüsselungsverfahren mit Hilfe von Analogien an, damit Sie das Prinzip verstehen.\

#grid(
  columns: (0.65fr, 0.35fr),
  gutter: 1em,
  [
    Das Grundprinzip asymmetrischer Verschlüsselung beruht darauf, dass jede Person, die damit arbeitet, zwei Schlüssel hat:

    - einen *privaten* Schlüssel, den sie geheim hält: #box(baseline: 0.2em)[#image("../Bilder/private_key.png", width: 1em)]
    - einen *öffentlichen* Schlüssel, der verteilt werden kann: #box(baseline: 0.2em)[#image("../Bilder/public_key.png", width: 0.85em)]

    Lassen Sie sich hier nicht verwirren. Sie sehen richtig, das ist wirklich jeweils ein Schloss und ein Schlüssel. So funktioniert einfach die Analogie recht gut.
  ],
  [
    #v(-5mm)
    
    #figure(
      image("../Bilder/character_public_private_key.png"), 
      caption: [3 Personen mit ihren jeweils\ öffentlichen und privaten Schlüsseln] 
    ) <characters-with-keys>
  ]
)

Man spricht von einem *Schlüsselpaar*, wenn man die beiden Schlüssel einer Person betrachtet. Jede Person besitzt ein eigenes Schlüsselpaar, so auch Bob. Die beiden Schlüssel, die dieses Schlüsselpaar bilden, sind mathematisch verwandt. Der private Schlüssel lässt sich jedoch nicht in sinnvoller Zeit aus dem öffentlichen Schlüssel berechnen.\
Bobs öffentlicher Schlüssel entspricht also einem Bügelschloss. Bobs privater Schlüssel ist der Schlüssel, der zum Bügelschloss passt. Das Schloss kann (in geöffneter Form natürlich) frei in der Welt herumgeschickt werden. Das ist nicht geheim. Oder das Schloss kann bei einer vertrauenswürdigen Stelle (Trent) deponiert werden, wo es von Alice abgeholt werden kann. Den Schlüssel aber behält Bob stets für sich.

#text(size: 1.2em, weight: "bold")[Analogie erklärt]

Das mit dem Vorhängeschloss und dem dazu passenden Schlüssel ist lediglich eine Analogie, damit Sie sich das Ganze merken können. In echt sind die Schlüssel einfach Zahlen oder Buchstaben. Erinnern Sie sich an Vigenère oder ein anderes Verschlüsselungsverfahren? Dort war der Schlüssel ja auch eine Buchstabenfolge. Das ist hier natürlich auch so.

Damit die Analogie funktioniert, müssen Sie sich vorstellen, dass jede Person quasi beliebig viele identische Vorhängeschlösser (öffentliche Schlüssel) hat, aber nur einen einzigen Schlüssel (privater Schlüssel). Der Schlüssel passt zu allen Schlössern. Die @characters-with-keys stellen Sie sich also besser so vor:

#align(center)[
  #figure(
    image("../Bilder/character_public_private_key_corrected.png", width: 45%),
    caption: [Jede Person hat beliebig viele identische öffentliche Schlüssel,\
    aber nur einen einzigen privaten Schlüssel.]
  )
]
#v(2mm)

Untersuchen wir nun mal RSA bezüglich den Standard-Sicherheitszielen der Kryptologie. 

#outline-colorbox(
  title: "Sicherheitsziele der Kryptologie",
  color: "blue",
  radius: 3pt,
  width: auto,
  inset: 6pt,
  )[
    #v(1mm)
      *Sicherheitsziele* beschreiben, was bei der sicheren Kommunikation von Nachrichten gewährleistet werden soll. In unserem Beispiel: Standards, die sich also Alice und Bob bei ihrer Kommunikation wünschen:

      - *Vertraulichkeit*: Niemand Unbefugtes soll mitlesen können.
      - *Integrität*: Die Daten wurden bei der Übermittlung nicht unbemerkt verändert.
      - *Authentizität*: Der Empfänger muss sich sicher sein, dass die Nachricht auch wirklich vom Sender stammt.
      - *Verbindlichkeit*: Der Sender kann nicht abstreiten, die Nachricht gesendet zu haben.

      _In unserem Beispiel konkret würde das wie folgt aussehen:_\
      Die Kommunikation zwischen Alice und Bob ist vertraulich, wenn Eve die Nachricht nicht mitlesen kann. Sie ist integer, wenn Eve also nichts an der Nachricht manipulieren konnte und authentisch, wenn Bob mit 100% Sicherheit weiss, dass die Nachricht von Alice kommt. Verbindlich ist die Nachricht, wenn Alice die Nachricht z.B. unterschreibt.
      #v(2mm)
]

