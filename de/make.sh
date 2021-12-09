# PATH=$PATH:/Library/TeX/texbin:/usr/texbin:/usr/local/bin
# PATH=$PATH:/Applications/calibre.app/Contents/console.app/Contents/MacOS

# Variables
filename="lernOS-Leitfaden-schreiben-Guide-de"
chapters="./src/index.md ./src/1-0-Grundlagen.md ./src/1-1-Grundidee.md ./src/1-2-Lebenszyklus.md ./src/1-3-Inhaltsverzeichnis.md ./src/1-4-Inhalt.md ./src/1-5-Produktionskette.md ./src/2-Lernpfad.md ./src/3-Anhang.md"

# Delete Old Versions
echo Deleting old versions ...
rm -f $filename.*

# Create Microsoft Word Version (docx)
echo Creating Word version ...
pandoc metadata.yaml --from markdown --resource-path="./src" --number-sections -V lang=de-de $chapters -o $filename.docx

# Create HTML Version (html)
echo Creating HTML version ...
pandoc metadata.yaml --from markdown --resource-path="./src" --number-sections -V lang=de-de $chapters -o $filename.html

# Create Web Version (mkdocs)
echo Creating Web Version ...
mkdocs build

# Create PDF Version (pdf)
echo Creating PDF version ...
pandoc metadata.yaml --from markdown --resource-path="./src" --template lernos --number-sections --toc -V lang=de-de $chapters -o $filename.pdf

# Create eBook Versions (epub, mobi)
echo Creating eBook versions ...
magick -density 300 $filename.pdf[0] src/images/ebook-cover.jpg
mogrify -size 2500x2500 -resize 2500x2500 src/images/ebook-cover.jpg
mogrify -crop 1563x2500+102+0 src/images/ebook-cover.jpg
pandoc metadata.yaml --from markdown -s --resource-path="./src" --epub-cover-image=src/images/ebook-cover.jpg $chapters -o $filename.epub
ebook-convert $filename.epub $filename.mobi
