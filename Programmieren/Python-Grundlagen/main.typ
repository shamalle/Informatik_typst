#import "/config/conf.typ": conf

#set document(
  title: [
    Python Grundlagen
  ],
  author: "GSM",
)

#show: conf.with(
  thema: "Programmieren",
)

#include "Kapitel/grundelemente_einer_programmiersprache.typ"

#include "Kapitel/variablen_und_zuweisungen.typ"

#include "Kapitel/eingabe_ausgabe.typ"

#include "Kapitel/datentypen.typ"

#include "Kapitel/operatoren.typ"

#include "Kapitel/kontrollstrukturen.typ"

#include "Kapitel/funktionen.typ"
