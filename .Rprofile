# if the current directory is called "/home" and the parent directory contains
# a file called ".dockerenv", we know we are in a docker container
# in this case DO NOT activate renv
if ( here::here() == "/home" && file.exists(here::here("../.dockerenv")) == TRUE )  {
} else {
  source("renv/activate.R")
}

