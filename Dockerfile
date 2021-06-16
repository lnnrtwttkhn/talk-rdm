FROM r-base:4.1.0

RUN apt-get update

RUN echo 'APT::Get::Install-Recommends "false";' >> /etc/apt/apt.conf
RUN echo 'options(Ncpus=4, repos=structure(c(CRAN="https://cloud.r-project.org")))' > ~/.Rprofile
RUN echo 'installOrQuit <- function(p) {tryCatch(install.packages(p), warning=function(e){q(status=1)})}' >> ~/.Rprofile

# external dependencies
RUN apt-get install -y pandoc pandoc-citeproc && apt-get clean

# prefer binary R packages, if they are available
RUN apt-get update && apt-get install -y \
r-cran-bookdown

# add missing source packages in blocks of 4
RUN Rscript -e "installOrQuit(c('pacman', 'here', 'xaringan'))"
