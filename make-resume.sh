#!/bin/bash
curl "https://inspirehep.net/search?p=f+a+l.ji.7&of=hx&em=B&sf=year&so=d&rg=250" > my.bib
perl -i -pe 's/<\/?\w+>//g;s/<[^<]+pagebody[^>]+>//g' my.bib
latexmk -C
latexmk --xelatex resume.tex
