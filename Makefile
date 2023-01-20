all: public/index.html

talk-rdm.html: talk-rdm.Rmd
	Rscript -e "rmarkdown::render('talk-rdm.Rmd', output_file = 'talk-rdm.html', envir = new.env())"

public/index.html: index.Rmd talk-rdm.Rmd archive
	Rscript -e "rmarkdown::render('index.Rmd', output_dir = 'public', output_file = 'index.html')"

.PHONY: local
local: talk-rdm.Rmd
	Rscript -e "xaringan::inf_mr('talk-rdm.Rmd')"

.PHONY: docker-build 
docker-build:
	docker build --platform linux/amd64 -t lennartwittkuhn/talk-rdm:amd64 .
	
.PHONY: docker-push
docker-push:
	docker push lennartwittkuhn/talk-rdm:amd64

.PHONY: docker-pull
docker-pull:
	docker image pull lennartwittkuhn/talk-rdm:amd64