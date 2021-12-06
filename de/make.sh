PATH=$PATH:/Library/TeX/texbin:/usr/texbin:/usr/local/bin
PATH=$PATH:/Applications/calibre.app/Contents/console.app/Contents/MacOS

# Variables
f="lernOS-Leitfaden-schreiben-Guide-de"
chapters="./src/index.md ./src/1-Grundlagen.md ./src/2-Lernpfad.md ./src/3-Anhang.md"

# Delete Old Versions
rm -f $f.docx $f.html $f.pdf $f.epub $f.mobi

# Create Microsoft Word Version (docx)
pandoc metadata.yaml --from markdown --resource-path="./src" --number-sections -V lang=de-de $chapters -o $f.docx

# Create HTML Version (html)
pandoc metadata.yaml --from markdown --resource-path="./src" --number-sections -V lang=de-de $chapters -o $f.html

# Create Web Version (mkdocs)
mkdocs build

# Create PDF Version (pdf)
pandoc metadata.yaml --from markdown --resource-path="./src" --template lernos --number-sections -V lang=de-de $chapters -o $f.pdf

# Create eBook Versions (epub, mobi)
magick -density 300 $f.pdf[0] src/images/ebook-cover.jpg
mogrify -size 2500x2500 -resize 2500x2500 src/images/ebook-cover.jpg
mogrify -crop 1563x2500+102+0 src/images/ebook-cover.jpg
pandoc metadata.yaml --from markdown -s --resource-path="./src" --epub-cover-image=src/images/ebook-cover.jpg $chapters -o $f.epub
ebook-convert $f.epub $f.mobi
