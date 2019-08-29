#!/bin/bash
curl "https://inspirehep.net/search?p=f+a+Ling.Yuan.Ji.1&of=hx&em=B&sf=earliestdate&so=d&rg=250" > my.bib
perl -i -pe 's/<\/?\w+>//g;s/<[^<]+pagebody[^>]+>//g' my.bib
perl -i -pe 's/Ji,\ Lingyuan/\\textbf{Ji},\ \\textbf{Lingyuan}/g' my.bib
latexmk --xelatex resume.tex
latexmk -c
