# Talk on Research Data Management

[![Build Status](https://app.travis-ci.com/lnnrtwttkhn/talk-rdm.svg?branch=master)](https://app.travis-ci.com/lnnrtwttkhn/talk-rdm)
[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)

## About

This talk is about how we shared code, data and computational environments used in [Wittkuhn & Schuck, 2021, *Nature Communications*](https://doi.org/10.1038/s41467-021-21970-2).

Slides are available at: https://lennartwittkuhn.com/talk-rdm/

## History

| When | What | Host |
|---|---|---|
| 20<sup>th</sup> of October 2021 | LNDG Lab meeting | [Lifespan Neural Dynamics Group (LNDG)](https://www.mpib-berlin.mpg.de/research/research-centers/lip/projects/lndg) at the [Max Planck Institute for Human Development](https://www.mpib-berlin.mpg.de/en) |
| 18<sup>th</sup> of October 2021 | ["Open Science Ambassadors Day 2021"](https://osambassadors.mpdl.mpg.de/) | [Max Planck PhDnet](https://www.phdnet.mpg.de/home) and the [Max Planck Digital Library](https://www.mpdl.mpg.de/en/) |
| 22<sup>nd</sup> June 2021 | ["Discussion Series: Human Research Data in Practice"](https://rdm.mpdl.mpg.de/2021/05/27/discussion-series-human-research-data-in-practice-on-22th-june-2021/) | [Max Planck Digital Library](https://www.mpdl.mpg.de/en/) |

## Abstract

**Title:** "Towards a workflow for open and reproducible fMRI studies"

> Achieving computational reproducibility and accessible data sharing can be challenging, in particular for neuroimaging research that involves large amounts of heterogeneous data and code. Here, we showcase a workflow that combines several software tools to allow reproducibility and transparent sharing of code and data of a human fMRI study.

> We recently published an open-access paper (Wittkuhn & Schuck, 2021, Nature Communications) together with the code, data and computational environments needed to reproduce the reported results. We shared > 10 datasets via GIN (G-Node Infrastructure) as modular version-controlled units, including fMRI data organized in BIDS format and derived data, such as pre-processed fMRI data and data quality metrics.

> Research data was version-controlled using DataLad. Following the DataLad YODA principles, we nested datasets as modular units, allowing to better establish data provenance, i.e., a clear overview which code used which input data to produce which output data. Code that reproduced the analyses was integrated with additional documentation using RMarkdown notebooks. The notebooks were automatically executed using continuous integration on GitLab. In this process, data was retrieved from GIN using DataLad, the notebooks were rendered and deployed to a website (https://wittkuhn.mpib.berlin/highspeed/). Code execution was performed using software containers (Docker and Singularity) and virtual environments, allowing to reproduce the computational environment.

**Keywords:** data sharing, reproducibility, open science, version-control, fMRI

## Build

## Run make

The `html` version of `talk-rdm.Rmd` can be build using [make](Makefile):

```bash
make all
```

Note, that this does not render the RMarkdown in the Docker container but your local system.

## Update Docker image

After updating the [Dockerfile](Dockerfile), I use the following command to push the newest image to [dockerhub](https://hub.docker.com/r/lennartwittkuhn/talk-rdm):

```bash
docker login
```

```bash
docker build -t  lennartwittkuhn/talk-rdm:latest .
```

```bash
docker push lennartwittkuhn/talk-rdm:latest
```

```bash
docker run --rm -v $PWD:/home lennartwittkuhn/talk-rdm /bin/sh -c "cd /home; make all"
```

## Make PDF

At the moment, this is still done manually:

```bash
make talk-rdm.html # or
docker run --rm -v $PWD:/home lennartwittkuhn/talk-rdm /bin/sh -c "cd /home; make talk-rdm.html"
docker run --rm -t -v `pwd`:/slides -v $PWD:/home/user astefanutti/decktape /home/user/talk-rdm.html talk-rdm.pdf --size '1280x720' --chrome-arg=--allow-file-access-from-files
```

## License

[Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/)

Please see the [LICENSE](LICENSE) file for details.

## Contact

Please contact [Lennart Wittkuhn](mailto:wittkuhn@mpib-berlin.mpg.de) for any questions.

