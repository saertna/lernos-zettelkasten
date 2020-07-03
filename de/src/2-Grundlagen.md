
# Grundlagen
## Die Grundidee der lernOS Leitfäden

Ein lernOS Leitfaden hilft selbstgesteuerten, lebenslang Lernenden ein Thema oder eine Fähigkeit im Rahmen eines Learning Sprints (3 Monate) zu erlernen. Die Lernenden lernen dabei allein, im Lerntandem oder in einem Learning Circle (4-5 Personen). Der zeitliche Aufwand über den Sprint sollte maximal zwei Stunden pro Woche betragen. Die Woche 0 und 12 im Sprint sind immer für Planung und Retrospektive vorgesehen, in Woche 4 und 8 findet ein sog. Boxenstopp (Pitstop) zur Zwischenreflexion des Lernprozesses statt. Die Wochen 1-11 können mit Übungen (mindestens 11), [Katas](https://de.wikipedia.org/wiki/Kata_(Programmierung)) genannt, gefüllt werden.

Die Grundstruktur der lernOS Leitfäden ist immer gleich: das Kapitel "Über lernOS" erklärt die Grundlagen von lernOS (in allen Leitfäden gleich). Das Kapitel "Grundlagen" enthält theoretische Hintergründe und Informationen, die für das Verständnis des Leitfaden-Themas relevant sind. In diesem Kapitel wird viel auf andere verfügbare Quellen und Literatur verwiesen (Hub- oder Kurationsfunktion). Das Kapitel "Lernpfad" enthält die Katas (Übungen) des Leitfadens. Jede Kata wird in einem eigenen Kapitel beschrieben, das maximal zwei Druckseiten lang sein sollte (Sushi-Card-Prinzip). Ein Leitfaden kann mehr als einen Lernpfad enthalten. Das Kapitel Anhang enthält mindestens die "Änderungshistorie", oft auch ein Kapitel mit Danksagungen (z.B. um Beitragende zu nennen)

Ein lernOS Leitfaden steht immer unter der [Creative Commons Namensnennung 4.0 International Lizenz](https://creativecommons.org/licenses/by/4.0/deed.de) (CC BY). Die Lizenz gilt auch für im Leitfaden  verwendete Bilder. Alle Inhalte müssen auch in bearbeitbaren  Quellformaten vorliegen (bei Bildern z.B. PNG und SVG). Die Inhalte eines lernOS Leitfaden werden als [Repository auf GitHub](https://github.com) verwaltet, um offenen Zugang und einfach Wiederverwendung zu gewähleisten.

## Inhaltlicher Aufbau eines lernOS Leitfadens

High Level Struktur ([Blog](https://cogneon.de/2019/04/30/wie-schreibt-man-einen-lernos-guide-einige-vorueberlegungen-zu-einer-anleitung/), Beschreibung der High Level Struktur dort veraltet):

* Über lernOS
* Grundlagen
* Lernpfad
* Anhang

WIki-Seite zur [Kata-Dokumentation](https://github.com/cogneon/lernos-core/wiki/How-to-write-a-lernOS-Guide).

## Schreibstil in lernOS Leitfäden

Direkte Ansprache (Du, da auch Solo-Lernende).

Siehe [lernOS Glossar](https://github.com/cogneon/lernos-core/blob/master/lernOS%20Glossary/de/lernOS-Glossary-de.md).

## Technische Infrastruktur für lernOS Leitfäden

lernOS Leitfäden werden in der Auszeichnungssprache [Markdown](https://de.wikipedia.org/wiki/Markdown) erstellt und auf [GitHub](https://de.wikipedia.org/wiki/GitHub) verwaltet. Aus den Markdown-Quellen werden über die lernOS Produktionskette weitere Zielformate wie PDF, Word, E-Book etc. generiert. Diese Generierung kann zentral auf GitHub (noch nicht verfügbar) oder auf dem eigenen Rechner erfolgen. Generiert man die Zieformate auf dem eigenen Rechner, ist ein Toolset notwendig, das im folgenden beschrieben wird. Wir versuchen, [Open Source Software](https://de.wikipedia.org/wiki/Open_Source) zu verwenden, wo möglich.

### lernOS Leitfaden Toolset für Windows 10

- [Atom](https://atom.io) - [Markdown-](https://en.wikipedia.org/wiki/Markdown)Editor zum Schreiben des eigentlichen Inhalts.
- [Calibre](https://calibre-ebook.com) - E-Book-Management-Software, um das Cover hinzuzufügen und aus dem epub-Format auch das mobi-Format (für Kindle) zu erzeugen.
- [Github Desktop](https://desktop.github.com) - Client um die Quellen von [lernOS Repositories](https://github.com/simondueckert/lernos) auf GitHub mit dem lokalen Rechner zu synchronisieren.
- [ImageMagick](https://www.imagemagick.org) - Extraktion der ersten Seite der PDF-Version, um daraus das Cover der E-Book-Version zu erstellen.
- [Ghostscript](https://www.ghostscript.com/index.html) - Generierung von PDFs, benötigt von ImageMagic.
- [Inkscape](https://inkscape.org) - Erstellung von Vektor-Grafiken, die im [Scalable Vector Graphic](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) Format (SVG) und PNG (96 and 300 dpi) bereitgestellt werden.
- [Microsoft OneNote](https://en.wikipedia.org/wiki/Microsoft_OneNote) - Digitales Notizbuch für Circle Templates und den lernOS Memex.
- [MiKTeX](https://miktex.org) - LaTeX Distribution für Windows, die von Pandoc für die PDF-Erstellung verwendet wird.
- [Pandoc](https://pandoc.org) - Konverter, der Markdown in andere Formate konvertieren kann (z.B. docx, pdf, epub, html).
- [Typora](https://typora.io/) - [Markdown](https://en.wikipedia.org/wiki/Markdown) Editor zum Schreiben der lernOS Inhalte.

### Makefile auf Windows 10

Für die Erstellung der Zielformate aus den Markdown-Quellen wird ein sog. [Makefile](https://de.wikipedia.org/wiki/Makefile) verwendet. Ist die Produktionskette auf dem eigenen Rechner richtig eingerichtet, führt ein Doppelklick auf dem Makefile (make.bat) dazu, dass alle Zielformate automatisch generiert werden. Je nach Umfang und Geschwindigkeit des eigenen Rechners kann das bis zu einigen Minuten dauern. 

## lernOS Leitfaden Lebenszyklus

Wiki-Seite [How to release a new guide version](https://github.com/cogneon/lernos-core/wiki/How-to-release-a-new-guide-version).

Wiki-Seite [How to fork a lernOS Guide](https://github.com/cogneon/lernos-core/wiki/How-to-fork-a-lernOS-Guide).

