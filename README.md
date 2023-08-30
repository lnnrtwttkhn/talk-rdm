# Talks on Research Data Management, Open Science & Reproducibility

[![Github Actions](https://github.com/lnnrtwttkhn/talk-rdm/actions/workflows/main.yml/badge.svg)](https://github.com/lnnrtwttkhn/talk-rdm/actions/workflows/main.yml)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5012476.svg)](https://doi.org/10.5281/zenodo.5012476)

## About

Slides are available at: https://lennartwittkuhn.com/talk-rdm/

## History

| When | What | Host | DOI |
|---|---|---|---|
| 14-04-23 | Talk at [Department of Education & Psychology](Department of Education & Psychology) at [Freie Universität Berlin](https://www.fu-berlin.de/en/) | Rasmus Bruckner | TBA |
| 18-01-23 | [OSIP](https://tu-dresden.de/mn/psychologie/die-fakultaet/open-science#) Meeting | [Open Science Initiative at the Department of Psychology (OSIP)](https://tu-dresden.de/mn/psychologie/die-fakultaet/open-science#) at [TU Dresden](https://tu-dresden.de/) | [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7554142.svg)](https://doi.org/10.5281/zenodo.7554142) |
| 13-09-22 | [5<sup>th</sup> RDM-Workshop 2022 on Research Data Management in the Max Planck Society](https://rdm.mpdl.mpg.de/mpdl-services/workshops/5-fdm-workshop-2022/) | [Max Planck Digital Library (MPDL)](https://www.mpdl.mpg.de/en/) | [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7075084.svg)](https://doi.org/10.5281/zenodo.7075084) |
| 20-10-21 | LNDG Lab meeting | [Lifespan Neural Dynamics Group (LNDG)](https://www.mpib-berlin.mpg.de/research/research-centers/lip/projects/lndg) at the [Max Planck Institute for Human Development](https://www.mpib-berlin.mpg.de/en) | [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5586318.svg)](https://doi.org/10.5281/zenodo.5586318) | 
| 18-10-21 | ["Open Science Ambassadors Day 2021"](https://osambassadors.mpdl.mpg.de/) | [Max Planck PhDnet](https://www.phdnet.mpg.de/home) and the [Max Planck Digital Library](https://www.mpdl.mpg.de/en/) | [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5575219.svg)](https://doi.org/10.5281/zenodo.5575219) |
| 22-06-21 | ["Discussion Series: Human Research Data in Practice"](https://rdm.mpdl.mpg.de/2021/05/27/discussion-series-human-research-data-in-practice-on-22th-june-2021/) | [Max Planck Digital Library](https://www.mpdl.mpg.de/en/) | [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5012477.svg)](https://doi.org/10.5281/zenodo.5012477) |

## Build

## Run make

The `html` version of `talk-rdm.Rmd` can be build using [make](Makefile):

```bash
make all
```

Note, that this does not render the RMarkdown in the Docker container but your local system.

## Update Docker image

After updating the [Dockerfile](Dockerfile), I use the following command to push the newest image to [dockerhub](https://hub.docker.com/r/lennartwittkuhn/talk-rdm):

### Login

```bash
docker login
```

### Build

```bash
docker build --platform linux/amd64 -t lennartwittkuhn/talk-rdm:amd64 .
```

### Push

```bash
docker push lennartwittkuhn/talk-rdm:amd64
```

### Pull

```bash
docker image pull lennartwittkuhn/talk-rdm:amd64
```

### Run

```bash
docker run --rm --platform linux/amd64 -v $PWD:/home lennartwittkuhn/talk-rdm:amd64 /bin/sh -c "cd /home; make all"
```

### Run interactively

```bash
docker run -it --rm --platform linux/amd64 -v $PWD:/home lennartwittkuhn/talk-rdm:amd64 /bin/sh
```

## Make PDF

At the moment, this is still done manually:

```bash
make talk-rdm.html # or
docker run --rm --platform linux/amd64 -v $PWD:/home lennartwittkuhn/talk-rdm:amd64 /bin/sh -c "cd /home; make talk-rdm.html"
docker run --rm --platform linux/amd64 -t -v `pwd`:/slides -v $PWD:/home/user astefanutti/decktape:latest /home/user/talk-rdm.html talk-rdm.pdf --size '1280x720' --chrome-arg=--allow-file-access-from-files
```

## License

[Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/)

Please see the [LICENSE](LICENSE) file for details.

## Contact

Please contact [Lennart Wittkuhn](mailto:wittkuhn@mpib-berlin.mpg.de) for any questions.

