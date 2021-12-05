PATH=$PATH:/Library/TeX/texbin:/usr/texbin:/usr/local/bin
PATH=$PATH:/Applications/calibre.app/Contents/console.app/Contents/MacOS
f="lernOS-Leitfaden-schreiben-Guide-de"
chapters="./src/index.md ./src/1-Grundlagen.md ./src/2-Lernpfad.md ./src/3-Anhang.md"

rm -f $f.docx $f.html $f.pdf $f.epub $f.mobi

pandoc $chapters metadata.yaml -o $f.docx

pandoc $chapters metadata.yaml -s --toc -o $f.html

pandoc $chapters metadata.yaml --template lernos -o $f.pdf

magick -density 300 $f.pdf[0] src/images/ebook-cover.jpg
mogrify -size 2500x2500 -resize 2500x2500 src/images/ebook-cover.jpg
mogrify -crop 1563x2500+102+0 src/images/ebook-cover.jpg
pandoc $chapters metadata.yaml -s --epub-cover-image=src/images/ebook-cover.jpg -o $f.epub
ebook-convert $f.epub $f.mobi
