# Talks on Research Data Management, Open Science & Reproducibility

![Build Status](https://github.com/lnnrtwttkhn/talk-rdm/actions/workflows/main.yml/badge.svg)
[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)

## About

Slides are available at: https://lennartwittkuhn.com/talk-rdm/

## History

| When | What | Host |
|---|---|---|
| 13<sup>th</sup> of September 2022 | [5<sup>th</sup> RDM-Workshop 2022 on Research Data Management in the Max Planck Society](https://rdm.mpdl.mpg.de/mpdl-services/workshops/5-fdm-workshop-2022/) | [Max Planck Digital Library (MPDL)](https://www.mpdl.mpg.de/en/) |
| 20<sup>th</sup> of October 2021 | LNDG Lab meeting | [Lifespan Neural Dynamics Group (LNDG)](https://www.mpib-berlin.mpg.de/research/research-centers/lip/projects/lndg) at the [Max Planck Institute for Human Development](https://www.mpib-berlin.mpg.de/en) |
| 18<sup>th</sup> of October 2021 | ["Open Science Ambassadors Day 2021"](https://osambassadors.mpdl.mpg.de/) | [Max Planck PhDnet](https://www.phdnet.mpg.de/home) and the [Max Planck Digital Library](https://www.mpdl.mpg.de/en/) |
| 22<sup>nd</sup> June 2021 | ["Discussion Series: Human Research Data in Practice"](https://rdm.mpdl.mpg.de/2021/05/27/discussion-series-human-research-data-in-practice-on-22th-june-2021/) | [Max Planck Digital Library](https://www.mpdl.mpg.de/en/) |

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

