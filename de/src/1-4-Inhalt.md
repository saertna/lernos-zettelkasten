## Inhalte, Medien und Quellen

### Schreibstil

Damit lernOS Leitfäden möglichst [barrierefrei](https://de.wikipedia.org/wiki/Barrierefreiheit) nutzbar sind, sollte die Sprache so einfach verständlich wie möglich gehalten werden. Anglizismen und Fachbegriff sollten wo möglich vermieden werden. Verwende Fachbegriffe müssen immer in [Gemeinsprache](https://de.wikipedia.org/wiki/Gemeinsprache) erklärt werden. Fachbegriffe müssen wie im [lernOS Glossar](https://github.com/cogneon/lernos-core/blob/master/lernOS%20Glossary/de/lernOS-Glossary-de.md) definiert verwendet werden, um über alle lernOS Leitfäden eine einheitliche Begriffsverwendung zu gewährleisten. Werden in einem Leitfaden sehr viele Fachbegriffe eingeführt, empfiehlt sich ein Unterkapitel Glossar im Anhang des Leitfadens.

Im Kapitel Lernpfad wird eine direkte Ansprache der Lernenden mit "Du" verwendet, um zu aktivieren.

### Bilder

Ein Bild sagt mehr als 1000 Worte. Daher ist die Bebilderung von Leitfäden sehr sinnvoll. Auch bei Bildern sollten immer Quellen mit CC BY Lizenz verwendet werden. Vorzugsformat für Vektorgrafiken ist [SVG](https://de.wikipedia.org/wiki/Scalable_Vector_Graphics) (als PNG in den Leitfaden eingebunden), für Pixelgrafiken [PNG](https://de.wikipedia.org/wiki/Portable_Network_Graphics). Für die Erstellung und Bearbeitung von SVG-Vektor-Grafiken und den Export in PNG wird [Inkscape](https://inkscape.org) empfohlen, für Pixelgrafiken [Gimp](https://gimp.org).

### Audio und Video

Da die Produktionskette auch Textdokumente erzeugt, können in lernOS Leitfäden keine Audio- und Video-Inhalte eingebettet werden. Um trotzdem auf Audio- und Videoinhalte zu verweisen, können diese einfach im Text verlinkt werden.

### Markdown Syntax

Die Auszeichnungssprache Markdown lässt verschiedene Stile zu, die oft auch [Markdown Flavors](https://github.com/commonmark/commonmark-spec/wiki/markdown-flavors) genannt werden (z.B. kann man eine Aufzählung mit einem * oder einem - erzeugen). Für lernOS Leitfäden wird [Commonmark](https://commonmark.org) und die [Schreib- und Formatiersyntax von GitHub](https://docs.github.com/en/github/writing-on-github/basic-writing-and-formatting-syntax) verwendet. Für die Erstelleung eines lernOS Leitfadens kommt man mit einer überschaubaren Anzahl von Markdown-Auszeichnungen aus:

**Überschriften:**

```
# Überschrift Ebene 1
## Überschrift Ebene 2
### Überschrift Ebene 3
```

**Auszeichnung:**

So kann man **fetten Text** und *kursiven Text* erstellen:

```
**fett**
*kursiv*
```

**Listen:**

Listen können Nummeriert und unnummeriert sein:

```
- Listenpunkt 1
- Listenpunkt 2
```

- Listenpunkt 1

- Listenpunkt 2

Hinweis: Listen mit zwei Ebenen sind in Markdown möglich, werden aber von der Produktionskette nicht unterstützt.

```
- Erstens
- Zweitens
```

1. Erstens

2. Zweitens

Hinweis: die Liste muss nicht korrekt durchnummeriert sein. Theoretisch kann jede Zeile der Liste mit 1. beginnen.

**Links:**

So können Links auf Webseiten wie z.B. [lernos.org](https://lernos.org) gesetzt werden:

```
[Cogneon](https://lernos.org)
```

Hinweis: Links werden in den produzierten Textdokumenten (z.B. PDF) zu Fußnoten.

**Bilder:**

```
![Alternativtext](./images/bild.png)
```

![](https://raw.githubusercontent.com/cogneon/lernos/master/de/src/images/lernOS-Quick-Start-Guide-de-v03.png)

Hinweis: der Pfad zum Bild ist im Markdown immer relativ zum Verzeichnis anzugeben, in dem die Markdown-Datei liegt (i.d.R. Unterverzeichnis *images*).

**Tabellen:**

```
| Kopfzeile|Spalte 2|Spalte 3|
| :--- |:---:|---:|
| linksbündig | zentriert | rechtsbündig |
```

| Kopfzeile   | Spalte 2  | Spalte 3     |
| ----------- | --------- | ------------ |
| linksbündig | zentriert | rechtsbündig |

Hinweis: Tabellen sind in Markdown schwierig zu editieren und wo möglich zu vermeiden.

**Zitate:**

```
> Eine Investition in Wissen bringt immer noch die besten Zinsen.
> (Benjamin Franklin)
```

> Eine Investition in Wissen bringt immer noch die besten Zinsen.
> (Benjamin Franklin)

**Horizontale Linie:**

```
---
```

---

### Mehrsprachigkeit

lernOS Leitfäden sollten aus Gründen der Barrierefreiheit in möglichst vielen Sprachen vorliegen. Die Übersetzung von Leitfäden kann manuell, aber auch toolgestützt erfolgen. Hierfür wurden bereits folgende Tools verwendet:

* [Deepl](https://de.wikipedia.org/wiki/DeepL) - Online-Übersetzungsdienst
* [Microsoft Word](https://de.wikipedia.org/wiki/Microsoft_Word) - Online-Übersetzungsdienst als Teil von Office 365 (Überprüfen/Übersetzen/Dokument übersetzen)
