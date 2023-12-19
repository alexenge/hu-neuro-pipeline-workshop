# hu-neuro-pipeline-workshop

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/alexenge/hu-neuro-pipeline-workshop.git/HEAD?urlpath=rstudio)
[![Made with R Markdown](https://img.shields.io/badge/Made%20with-R%20Markdown-blue)](https://rmarkdown.rstudio.com/)
[![![GitHub Workflow Status](https://github.com/alexenge/docker_images/actions/workflows/main.yml)](https://img.shields.io/github/actions/workflow/status/alexenge/hu-neuro-pipeline-workshop/main.yml)](https://github.com/alexenge/hu-neuro-pipeline-workshop/actions)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

A workshop introducing the [`hu-neuro-pipeline`](https://github.com/alexenge/hu-neuro-pipeline) package for single trial EEG processing

<img src="https://raw.githubusercontent.com/alexenge/hu-neuro-pipeline-workshop/main/figures/love.png" width="600">

## Usage

### Static version

- Check out the [R Markdown version](https://github.com/alexenge/hu-neuro-pipeline-workshop/blob/main/slides.Rmd) or [PDF version](https://github.com/alexenge/hu-neuro-pipeline-workshop/blob/main/slides.pdf) of the slides

### Interactive version, in the cloud
  
- Hit [this link](https://mybinder.org/v2/gh/alexenge/hu-neuro-pipeline-workshop.git/HEAD?urlpath=rstudio) or the "launch binder" button

- Run the "Minimal example" in the [`slides.Rmd`](https://github.com/alexenge/hu-neuro-pipeline-workshop/blob/main/slides.Rmd) file to see the pipeline in action

### Interactive version, on your own machine

1. If necessary, install [R](https://ftp.fau.de/cran/) and [RStudio](https://posit.co/download/rstudio-desktop)

2. Follow the [installation instructions](https://hu-neuro-pipeline.readthedocs.io/en/latest/installation.html) for the pipeline

3. [Download](https://github.com/alexenge/hu-neuro-pipeline-workshop/archive/refs/heads/main.zip) and un-zip or `git clone` the workshop repository

4. Run the "Minimal example" in the [`slides.Rmd`](https://github.com/alexenge/hu-neuro-pipeline-workshop/blob/main/slides.Rmd) file to see the pipeline in action

    - Using your own data: Change the input file paths (`vhdr_files`, `log_files`, and `besa_files`) to match the location of your data

    - Using demo data from our lab: Download two or more participants from the UCAP dataset ([Frömer et al., *Front. Neurosci.*, 2018](https://doi.org/10.3389/fnins.2018.00048)) by running the `get_ucap()` R code snippet in the script
