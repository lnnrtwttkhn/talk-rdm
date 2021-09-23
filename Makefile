all: public/index.html

talk-rdm.html: talk-rdm.Rmd
	Rscript -e "rmarkdown::render('talk-rdm.Rmd', output_file = 'talk-rdm.html')"

public/index.html: index.Rmd
	Rscript -e "rmarkdown::render('index.Rmd', output_dir = 'public', output_file = 'index.html')"
	
local: talk-rdm.Rmd
	Rscript -e "xaringan::inf_mr('talk-rdm.Rmd')"
