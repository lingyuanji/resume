#!/bin/bash
curl "https://inspirehep.net/api/literature?q=find+author+ling.yuan.ji.1&format=bibtex&sort=mostrecent&size=1000" > my.bib
perl -i -pe 's/<\/?\w+>//g;s/<[^<]+pagebody[^>]+>//g' my.bib
perl -i -pe 's/Ji,\ Lingyuan/\\textbf{Ji},\ \\textbf{Lingyuan}/g' my.bib
latexmk --xelatex resume.tex
latexmk -c
rm my.bib resume.bbl
