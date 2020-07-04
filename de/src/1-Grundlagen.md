
# Grundlagen
## Die Grundidee der lernOS Leitfäden

Ein lernOS Leitfaden hilft Lernenden durch einen vorgegebenen Lernpfad ihr eigenes Lernziel im Rahmen eines Learning Sprints (3 Monate) zu erlernen zu erreichen. Die Lernenden lernen dabei allein, im Lerntandem oder in einem Learning Circle (4-5 Personen). Der zeitliche Aufwand über den Sprint sollte maximal zwei Stunden pro Woche betragen. Das Lernziel kann dabei aus einem oder einer Kombination dieser Bereiche kommen:

* **MINDSET** - eine bestimmte Haltung fördern
* **SKILLSET** - eine Fähigkeit erlernen
* **TOOLSET** - ein Tool oder eine Methode beherrschen

Die Woche 0 und 12 im Learning Sprint sind immer für Planung und Retrospektive vorgesehen, in Woche 4 und 8 findet ein sog. Boxenstopp zur Zwischenreflexion des Lernfortschritts statt. Die Wochen 1-11 können mit Übungen (mindestens 11), [Katas](https://de.wikipedia.org/wiki/Kata_(Programmierung)) genannt, gefüllt werden.

Ein lernOS Leitfaden steht immer unter der [Creative Commons Namensnennung 4.0 International Lizenz](https://creativecommons.org/licenses/by/4.0/deed.de) (CC BY). Die Lizenz gilt auch für im Leitfaden  verwendete Bilder. Alle Inhalte müssen auch in bearbeitbaren  Quellformaten vorliegen (bei Bildern z.B. PNG und SVG). Die Inhalte eines lernOS Leitfaden werden als [Repository auf GitHub](https://github.com) verwaltet, um offenen Zugang und einfach Wiederverwendung zu gewähleisten.

## lernOS Leitfaden Struktur

Zur einfachen Orientierung für die Lernenden haben alle lernOS Leitfäden die gleiche Grundstruktur ([Blog](https://cogneon.de/2019/04/30/wie-schreibt-man-einen-lernos-guide-einige-vorueberlegungen-zu-einer-anleitung/)). Diese besteht aus den vier Kapiteln Über lernOS, Grundlagen, Lernpfad und Anhang, die im Folgenden beschrieben werden.

### Kapitel "Über lernOS"

Das Kapitel "Über lernOS" erklärt die Grundlagen von lernOS (in allen Leitfäden gleich).

### Kapitel "Grundlagen"

Das Kapitel "Grundlagen" enthält theoretische Hintergründe und Informationen, die für das Verständnis des Leitfaden-Themas relevant sind. In diesem Kapitel wird viel auf andere verfügbare Quellen und Literatur verwiesen (Hub- oder Kurationsfunktion). 

### Kapitel "Lernpfad"

Das Kapitel "Lernpfad" enthält die Katas (Übungen) des Leitfadens. Jede Kata wird in einem eigenen Kapitel beschrieben, das maximal zwei Druckseiten lang sein sollte (Sushi-Card-Prinzip). Ein Leitfaden kann mehr als einen Lernpfad enthalten.

Wiki-Seite zur [Kata-Dokumentation](https://github.com/cogneon/lernos-core/wiki/How-to-write-a-lernOS-Guide).

### Kapitel "Anhang"

Das Kapitel Anhang enthält mindestens die "Änderungshistorie", oft auch ein Kapitel mit Danksagungen (z.B. um Beitragende zu nennen)

## lernOS Leitfaden Inhalte

### Schreibstil

Direkte Ansprache (Du, da auch Solo-Lernende).

### Bilder

...

### Audio und Video

Da die Produktionskette auch Textdokumente erzeugt, können in lernOS Leitfäden keine Audio- und Video-Inhalte eingebettet werden. Um trotzdem auf Audio- und Videoinhalte zu verweisen, können diese einfach im Text verlinkt werden.

### Terminologie

Siehe [lernOS Glossar](https://github.com/cogneon/lernos-core/blob/master/lernOS%20Glossary/de/lernOS-Glossary-de.md).

### lernOS Markdown Flavor

Die Auszeichnungssprache Markdown lässt verschiedene Stile zu, die oft auch [Markdown Flavors](https://github.com/commonmark/commonmark-spec/wiki/markdown-flavors) genannt werden (z.B. kann man eine Aufzählung mit einem * oder einem - erzeugen). Für lernOS Leitfäden wird, wenn hier nicht anders beschrieben, die [Schreib- und Formatiersyntax von GitHub](https://docs.github.com/en/github/writing-on-github/basic-writing-and-formatting-syntax) verwendet.

### Mehrsprachigkeit

...

## lernOS Leitfaden Produktionskette

lernOS Leitfäden werden in der Auszeichnungssprache [Markdown](https://de.wikipedia.org/wiki/Markdown) erstellt und i.d.R. auf [GitHub](https://de.wikipedia.org/wiki/GitHub) verwaltet. Aus den Markdown-Quellen werden über die lernOS Produktionskette weitere Zielformate wie PDF, Word, E-Book etc. generiert. Diese Generierung kann zentral auf GitHub (noch nicht verfügbar) oder auf dem eigenen Rechner erfolgen. Generiert man die Zieformate auf dem eigenen Rechner, ist ein Toolset notwendig, das im folgenden beschrieben wird. Wir versuchen wo möglich [Open Source Software](https://de.wikipedia.org/wiki/Open_Source) zu verwenden.

### lernOS Leitfaden Verzeichnisstruktur

Damit die lernOS Produktionskette funktioniert, müssen die Inhalte des Leitfadens in einem Dateiordner mit folgender Verzeichnisstruktur abgelegt werden (Beispiel für ein Leitfaden mit deutscher und englischer Version, fett sind Ordner- und Dateinamen, dahinter eine kurze Beschreibung):

* **de** - Inhalte der deutschen Version des Leitfadens

  * **src** - die Markdown-Quellen des Leitfaden
    * **css** - Anpassung von Farben für die Web-Version
    * **images** - Bilder des Leitfadens in den Formaten SVG und PNG
    * **1-Grundlagen.md** - das Kapitel "Grundlagen"
    * **2-Lernpfad.md** - das Kapitel "Lernpfad"
    * **3-Anhang.md** - das Kapitel "Anhang"
    * **index.md** - das Kapitel "Über lernOS", muss wegen Web-Version index.md heißen

  * **make.bat** - das Herzstück der Produktionskette, Batch-Datei (Windows), die alle Ergebnisdokumente produziert, im Datei-Explorer per Doppelklick ausführen
  * **metadata.yaml** - Metadaten für Pandoc (z.B. Titel, Untertitel, Autor(en), Version etc.)
  * **mkdocs.yaml** - Einstellungen für die Generierung der Web-Version mit mkdocs

* **docs**

  * **de** - deutsche Web-Version des Leitfadens
  * **en** - englische Web-Version des Leitfadens

* **en** - Inhalte der deutschen Version des Leitfadens

  * Struktur identisch mit der deutschen Sprachversion

**Hinweis:** im Verzeichnis einer Sprachversion liegen zusätzlich alle produzierten Dokumente (z.B. docx, epub, html, mobi, pdf).

**Hinweis:** Für die Benennung der Verzeichnisse für weitere Sprachversionen werden die Kürzel nach [ISO 639-1](https://de.wikipedia.org/wiki/Liste_der_ISO-639-1-Codes) verwendet.

**Hinweis:** Im src-Verzeichnis kann der Leitfaden auch auf Unterkapitelebene in einzelne Markdown-Dateien geteilt werden. Das ist z.B. sinnvoll, wenn mehrere Personen gleichzeitig an den Inhalten arbeiten oder die Inhalte in der Webversion auf Kapitelebene kommentierbar sein sollen. 

### Toolset für die lernOS Produktionskette

Für die lernOS Produktionskette sind einige Tools auf dem eigenen Rechner oder in der Cloud erforderlich. Im folgenden eine kurze Beschreibung der Tools in alphabetischer Reihenfolge:

- [Calibre](https://calibre-ebook.com) - E-Book-Management-Software, um die E-Book-Versionen [EPUB](https://de.wikipedia.org/wiki/EPUB) und [Mobipocket](https://de.wikipedia.org/wiki/Mobipocket) (mobi) zu erzeugen.
- [Github Desktop](https://desktop.github.com) - Client um [GitHub](https://de.wikipedia.org/wiki/GitHub) Repositories mit dem lokalen Rechner zu synchronisieren.
- [ImageMagick](https://www.imagemagick.org) - Extraktion der ersten Seite der PDF-Version, um daraus das Cover der E-Book-Version zu erstellen.
- [Ghostscript](https://www.ghostscript.com/index.html) - Generierung von PDFs, auch benötigt von ImageMagic.
- [Inkscape](https://inkscape.org) - Erstellung von Vektor-Grafiken im [Scalable Vector Graphic](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) Format (SVG) und Export von PNGs (96 and 300 dpi).
- [MiKTeX](https://miktex.org) - LaTeX Distribution für Windows, die von Pandoc für die PDF-Erstellung verwendet wird.
- [mkdocs](https://www.mkdocs.org/) - statischer Webseiten Generator, der die responsive Webversion mit Navigation, Suche, Social Links und Kommentarfunktion ([Disqus](https://de.wikipedia.org/wiki/Disqus)) erzeugt.
- [Pandoc](https://pandoc.org) - Text-Konverter, der Markdown in andere Formate konvertieren kann (z.B. docx, pdf, epub, html).
- [Typora](https://typora.io/) - [Markdown](https://en.wikipedia.org/wiki/Markdown) - Editor zum Schreiben der lernOS Inhalte.

### lernOS Produktionskette auf Windows 10

Für die Erstellung der Zielformate aus den Markdown-Quellen wird ein sog. [Makefile](https://de.wikipedia.org/wiki/Makefile) verwendet (make.bat). Ist die Produktionskette auf dem eigenen Rechner richtig eingerichtet, führt ein Doppelklick auf dem Makefile (make.bat) dazu, dass alle Zielformate automatisch generiert werden. Je nach Umfang und Geschwindigkeit des eigenen Rechners kann das bis zu einigen Minuten dauern. Folgende Schritte werden in der Produktionskette ausgeführt:

1. Alte Versionen der produzierten Dokumente löschen.
2. Word-Version (.docx) produzieren
3. HTML-Version (.html) produzieren (rohes HTML, z.B. für Copy&Paste in CMS oder ESN)
4. Web-Version produzieren (mkdocs mit Theme [material](https://squidfunk.github.io/mkdocs-material/), Ergebnis im Ordner docs)
5. PDF-Version produzieren (.pdf)
6. Titelseite als Grafik aus PDF exportieren (src/images/ebook-cover.jpg)
7. E-Book-Version EPUB (.epub) produzieren
8. E-Book-Version EPUB (.epub) on Mobipocket (.mobi) konvertieren
9. Fertig :-)

### lernOS Produktionskette auf GitHub

Aktuell ist eine automatisierte Produktionskette mit [GitHub Actions](https://github.com/features/actions) in Vorbereitung.

## lernOS Leitfaden Lebenszyklus

Wiki-Seite [How to release a new guide version](https://github.com/cogneon/lernos-core/wiki/How-to-release-a-new-guide-version).

Wiki-Seite [How to fork a lernOS Guide](https://github.com/cogneon/lernos-core/wiki/How-to-fork-a-lernOS-Guide).

Sechs Stufen: Goal Setting, Creation, Publishing, Promotion, Maintaining, Retirement 

## Rechtliche Aspekte

Lizenz CC BY. Richtige Zitation.

Marke, keine kommerziellen Produkte mit lernOS im Namen (Beispiele [Chromium](https://de.wikipedia.org/wiki/Chromium_(Browser)) -> Chrome, Edge, Opera, Brave).

## FAQ

**Warum werden die lernOS Inhalte so kompliziert verwaltet, warum nicht einfach ein Word- oder Google Dokument?**

1.) für die verteilte Arbeit an Inhalten und die Produktion verschiedener Zielformate ist dieser Ansatz notwendig. 2.) Wir wollen im Rahmen der digitalen Transformation möglichst viele Menschen mit echten digitalen und agilen Arbeitsprozessen in Berührung bringen und sie in den "digital-agilen Zaubertrank" fallen lassen. 

**Ich habe lernOS Leitfäden gesehen, die nicht der beschriebenen Ordner- oder Kapitelstruktur folgen. Wie kann das sein?**

lernOS ist als Projekt noch im wachsen, daher gibt es auch gewachsene Strukturen.