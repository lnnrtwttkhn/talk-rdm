all: public/index.html

public/index.html: talk-rdm.Rmd
	Rscript -e "rmarkdown::render('talk-rdm.Rmd', output_dir = 'public', output_file = 'index.html')"