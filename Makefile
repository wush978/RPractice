all : index.html environment.html

%.html : %.Rmd
	Rscript -e "library(slidify);slidify('$<')"
