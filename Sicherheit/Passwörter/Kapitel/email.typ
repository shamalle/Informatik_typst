#import "@preview/codly:1.3.0": codly
#import "@preview/colorful-boxes:1.4.3": colorbox, outline-colorbox, stickybox
#import "@preview/exercise-bank:0.3.0": exo, exo-print-solutions, exo-setup

= Zentrales Login: Unser Email

Finden Sie, Ihr E-Mail Account ist wichtig? Die meisten Menschen unterschätzen die zentrale Funktion des eigenen E-Mail-Kontos gewaltig. E-Mail wird nicht nur zum Schreiben und Empfangen von Nachrichten verwendet. Für viele andere Online-Dienste ist die E-Mail-Adresse gleichzeitig ein wichtiger Bestandteil der Anmeldung und der Kontowiederherstellung. Der Grund, warum unser E-Mail-Konto deshalb sicherheitstechnisch von grosser Bedeutung ist, wird in diesem Kapitel genauer erläutert.

#v(3mm)

Stellen wir uns vor, Max hat sein Instagram-Passwort vergessen. Dafür gibt es bei fast allen Online-Diensten die Möglichkeit mit dem Button "Passwort vergessen". Nun musst Instagram irgendwie überprüfen, dass es sich wirklich um Max handelt, dem sein eigenes Passwort nicht wieder in den Sinn kommt. Die häufigste Möglichkeit besteht meistens darin, dass ein Link / Aktivierungscode an die hinterlegte E-Mail Adresse gesendet wird. Max muss dabei sein altes Passwort gar nicht kennen, sondern kann ein neues bestimmen. Die E-Mail-Adresse dient also als eine Art Schlüssel zur Wiederherstellung des Kontos.

#figure(
  image("../Bilder/aktivierungslink_horizontal.png"),
  caption: "Typische Verlaufskette beim Vergessen des Passworts bei einem Online-Login."

)

#v(4mm)

Jetzt schauen wir uns die Situation mal aus der Sicht des Angreifers an. Sobald dieser Zugriff auf das Mailkonto hat, kann er nicht nur verstaubte, uninteressante Mails lesen. Sondern sieht er auch sehr schnell, wo Max überall ein Konto hat und kann anschliessend genau diesen "Passwort vergessen"-Ablauf reproduzieren. Zum Beispiel hat Max ein Konto nun bei Discord. Der Angreifer kann also bei Discord angeben dass Max angeblich sein Passwort vergessen hat. Noch bevor Max merkt, dass ein Mail mit einem Aktivierungslink an ihn versendet wird, wartet der Angreifer schon bereit in seinem E-Mail-Postfach, fängt die Mail ab und setzt ein neues Passwort. Max ist ausgeschlossen aus seinem eigenen Konto.

#v(4mm)

#figure(
  image("../Bilder/mail_zentral.png", width: 65%),
  caption: "Ein Zugang zum Mail-Konto ermöglicht weitere Zugänge zu anderen Online-Diensten."
)

#v(4mm)

Unser Mail-Konto fungiert also wie ein Schlüsselbund und ist oftmals das Eintrittstor in weitere Konten, die wir online haben. Daher sollte es besonders gut geschützt werden. Wichtige Massnahmen sind zum Beispiel:

