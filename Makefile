all : index.html environment.html development.html

%.html : %.Rmd
	Rscript -e "library(slidify);slidify('$<')"

clean :
	-rm *.md *.html assets/fig/*