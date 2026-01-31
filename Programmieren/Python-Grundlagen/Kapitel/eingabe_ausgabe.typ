= Ein- und Ausgabe

Damit wir mit dem Computer arbeiten können, braucht eine Programmiersprache zwei Dinge: Wir müssen *Eingaben* (*Input*) machen können, und der Computer muss diese verarbeiten und uns danach *Resultate* (*Output*) *zurückgeben*.

In Python gibt es zwei Funktionen (Befehle) dafür.

#table(
  columns: 2,
  stroke: none,
  [```py print()```], [Damit können Sie beliebige Sachen in die Kommandozeile (Ausgabefenster) ausdrucken lassen.],
  [```py input()```], [Damit fragt der Computer nach einem Input vom Benutzer.]
)

```py
erste_zahl = input("Erste Zahl:")
zweite_zahl = input("Zweite Zahl:")
print(erste_zahl + zweite_zahl)
```