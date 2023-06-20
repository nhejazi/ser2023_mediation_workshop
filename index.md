---
knit: "bookdown::render_book"
title: "Modern Causal Mediation Analysis"
subtitle: "A Workshop at SER 2023"
author: "[Iván Díaz](https://www.idiaz.xyz/),
  [Nima Hejazi](https://nimahejazi.org),
  [Kara Rudolph](https://kararudolph.github.io/)"
date: "updated: June 20, 2023"
documentclass: book
site: bookdown::bookdown_site
bibliography: [book.bib, packages.bib]
biblio-style: biometrics.bst
csl: biometrics.csl
fontsize: '12pt'
monofontoptions: "Scale=0.7"
link-citations: yes
colorlinks: yes
lot: false
lof: false
always_allow_html: yes
url: 'https\://code.nimahejazi.org/causal_mediation_workshops/'
github-repo: nhejazi/causal_mediation_workshops
graphics: yes
description: "Open source, reproducible teaching materials accompanying half
  or full-day conference workshops on causal mediation analysis."
---

# Welcome! {-}

This open source, reproducible vignette accompanies a half-day workshop on
modern methods for _causal mediation analysis_. While we encourage use of this
`bookdown` site, for convenience, we have also made these workshop materials
[available in
PDF](https://code.nimahejazi.org/ser2023_mediation_workshop/causal_mediation.pdf).

## About this workshop {#about}

Causal mediation analysis can provide a mechanistic understanding of how an
exposure impacts an outcome, a central goal in epidemiology and health sciences.
However, rapid methodologic developments coupled with few formal courses
presents challenges to implementation. Beginning with an overview of classical
direct and indirect effects, this workshop will present recent advances that
overcome limitations of previous methods, allowing for: (i) continuous
exposures, (ii) multiple, non-independent mediators, and (iii) effects
identifiable in the presence of intermediate confounders affected by exposure.
Emphasis will be placed on flexible, stochastic and interventional direct and
indirect effects, highlighting how these may be applied to answer substantive
epidemiological questions from real-world studies. Multiply robust,
nonparametric estimators of these causal effects, and free and open source `R`
packages ([`medshift`](https://github.com/nhejazi/medshift) and
[`medoutcon`](https://github.com/nhejazi/medoutcon)) for their application, will
be introduced.

To ensure translation to real-world data analysis, this workshop will
incorporate hands-on `R` programming exercises to allow participants practice in
implementing the statistical tools presented. It is recommended that
participants have working knowledge of the basic notions of causal inference,
including counterfactuals and identification (linking the causal effect to a
parameter estimable from the observed data distribution). Familiarity with the
`R` programming language is also recommended.

## Tentative schedule {#schedule}

* 08:30A-08:45A: Introductions + mediation set-up
  <!-- Kara, 15 min-->
* 08:45A-9:15A: Controlled direct effects, natural direct/indirect effects,
  interventional direct/indirect effects
  <!-- Kara, 30-->
* 9:15A-9:25A: Choosing an estimand in real-world examples
  <!-- Kara, 10-->
* 9:25A-10:00A: What is the EIF?!
  <!-- Ivan, 35-->
* 10:00A-10:30A: Break + discussion
* 10:30A-11:05A: Using the EIF to estimate the natural direct effect
  <!-- Ivan, 35-->
* 11:05A-12:00P: Example walkthrough of `R` packages for effect estimation
  <!-- Nima, 55-->
* 12:00A-12:30P: Wrap-up

__NOTE: All times listed in Pacific Time.__

## About the instructors {#instructors}

### [Iván Díaz](https://www.idiaz.xyz/) {-}

I am an Associate Professor of Biostatistics in the [Department of Population
Health at the New York University Grossman School of
Medicine](https://med.nyu.edu/faculty/ivan-l-diaz). My research focuses on the
development of non-parametric statistical methods for causal inference from
observational and randomized studies with complex datasets, using machine
learning. This includes but is not limited to mediation analysis, methods for
continuous exposures, longitudinal data including survival analysis, and
efficiency guarantees with covariate adjustment in randomized trials. I am also
interested in general semi-parametric theory, machine learning, and
high-dimensional data.


### [Nima Hejazi](https://nimahejazi.org) {-}

I am an Assistant Professor of Biostatistics at the [Harvard T.H. Chan School of
Public
Health](https://connects.catalyst.harvard.edu/Profiles/display/Person/207609).
My research interests blend causal inference, machine learning,
non/semi-parametric inference, and computational statistics, with areas of
recent emphasis having included causal mediation analysis, efficient estimation
under outcome-dependent sampling designs, estimation of the causal effects of
continuous treatments, and machine learning-based sieve estimation in causal
inference. My methodological work is motivated principally by scientific
collaborations in clinical trials and observational studies of infectious
diseases, infectious disease epidemiology, and computational biology. I am also
passionate about statistical computing and programming, and the design of open
source software tools for reproducible statistical data science.


### [Kara Rudolph](https://kararudolph.github.io/) {-}

I am an Assistant Professor of Epidemiology in the [Mailman School of Public
Health at Columbia
University](https://www.publichealth.columbia.edu/academics/departments/epidemiology).
My research interests are in developing and applying causal inference methods to
understand social and contextual influences on mental health, substance use, and
violence in disadvantaged, urban areas of the United States. My current work
focuses on developing methods for transportability and mediation, and
subsequently applying those methods to understand how aspects of the school and
peer environments mediate relationships between neighborhood factors and
adolescent drug use across populations. More generally, my work on
generalizing/transporting findings from study samples to target populations and
identifying subpopulations most likely to benefit from interventions contributes
to efforts to optimally target available policy and program resources.

## Reproducibility {#repro}

These workshop materials were written using [bookdown](http://bookdown.org/),
and the complete source is available on
[GitHub](https://github.com/nhejazi/causal_mediation_workshops). This version of
the book was built with R version 4.3.1 (2023-06-16), [pandoc](https://pandoc.org/)
version 2.19.2, and the following packages:


|package    |version    |source                                                               |
|:----------|:----------|:--------------------------------------------------------------------|
|bookdown   |0.26.3     |Github (rstudio/bookdown\@169c43b6bb95213f2af63a95acd4e977a58a3e1f)  |
|bslib      |0.3.1.9000 |Github (rstudio/bslib\@a4946a49499438e71dce29c810a41e2d05170376)     |
|data.table |1.14.2     |CRAN (R 4.3.0)                                                       |
|downlit    |0.4.0      |CRAN (R 4.3.0)                                                       |
|dplyr      |1.0.9      |CRAN (R 4.3.0)                                                       |
|ggfortify  |0.4.14     |CRAN (R 4.3.0)                                                       |
|ggplot2    |3.3.6      |CRAN (R 4.3.0)                                                       |
|kableExtra |1.3.4      |CRAN (R 4.3.0)                                                       |
|knitr      |1.39       |CRAN (R 4.3.0)                                                       |
|magick     |2.7.3      |CRAN (R 4.3.0)                                                       |
|medoutcon  |0.1.6      |Github (nhejazi/medoutcon\@49af7b52ad7fc5064e6af984a682118d3463917a) |
|medshift   |0.1.4      |Github (nhejazi/medshift\@0ae0572fc5e37a8595b798909057afbc48304236)  |
|mvtnorm    |1.1-3      |CRAN (R 4.3.0)                                                       |
|origami    |1.0.5      |Github (tlverse/origami\@e1b8fe6f5e75fff1d48eed115bb81475c9bd506e)   |
|pdftools   |3.2.0      |CRAN (R 4.3.0)                                                       |
|readr      |2.1.2      |CRAN (R 4.3.0)                                                       |
|rmarkdown  |2.14       |CRAN (R 4.3.0)                                                       |
|skimr      |2.1.4      |CRAN (R 4.3.0)                                                       |
|sl3        |1.4.5      |Github (tlverse/sl3\@825019f28a650936e24cca421dd155641c860435)       |
|stringr    |1.4.0      |CRAN (R 4.3.0)                                                       |
|tibble     |3.1.7      |CRAN (R 4.3.0)                                                       |
|tidyr      |1.2.0      |CRAN (R 4.3.0)                                                       |

## Setup instructions {#setup}

### R and RStudio

**R** and **RStudio** are separate downloads and installations. R is the
underlying statistical computing environment. RStudio is a graphical integrated
development environment (IDE) that makes using R much easier and more
interactive. You need to install R before you install RStudio.

#### Windows

##### If you already have R and RStudio installed

* Open RStudio, and click on "Help" > "Check for updates". If a new version is
  available, quit RStudio, and download the latest version for RStudio.
* To check which version of R you are using, start RStudio and the first thing
  that appears in the console indicates the version of R you are
  running. Alternatively, you can type `sessionInfo()`, which will also display
  which version of R you are running. Go on the [CRAN
  website](https://cran.r-project.org/bin/windows/base/) and check whether a
  more recent version is available. If so, please download and install it. You
  can [check here](https://cran.r-project.org/bin/windows/base/rw-FAQ.html#How-do-I-UNinstall-R_003f)
  for more information on how to remove old versions from your system if you
  wish to do so.

##### If you don't have R and RStudio installed

* Download R from
  the [CRAN website](http://cran.r-project.org/bin/windows/base/release.htm).
* Run the `.exe` file that was just downloaded
* Go to the [RStudio download
  page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select **RStudio x.yy.zzz - Windows
  XP/Vista/7/8** (where x, y, and z represent version numbers)
* Double click the file to install it
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

#### Mac OSX

##### If you already have R and RStudio installed

* Open RStudio, and click on "Help" > "Check for updates". If a new version is
  available, quit RStudio, and download the latest version for RStudio.
* To check the version of R you are using, start RStudio and the first thing
  that appears on the terminal indicates the version of R you are running.
  Alternatively, you can type `sessionInfo()`, which will also display which
  version of R you are running. Go on the [CRAN
  website](https://cran.r-project.org/bin/macosx/) and check whether a more
  recent version is available. If so, please download and install it.

##### If you don't have R and RStudio installed

* Download R from the [CRAN website](http://cran.r-project.org/bin/macosx).
* Select the `.pkg` file for the latest R version
* Double click on the downloaded file to install R
* It is also a good idea to install [XQuartz](https://www.xquartz.org/) (needed
  by some packages)
* Go to the [RStudio download
  page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select **RStudio x.yy.zzz - Mac OS X 10.6+ (64-bit)**
  (where x, y, and z represent version numbers)
* Double click the file to install RStudio
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

#### Linux

* Follow the instructions for your distribution from
  [CRAN](https://cloud.r-project.org/bin/linux), they provide information to get
  the most recent version of R for common distributions. For most distributions,
  you could use your package manager (e.g., for Debian/Ubuntu run `sudo apt-get
  install r-base`, and for Fedora `sudo yum install R`), but we don't recommend
  this approach as the versions provided by this are usually out of date. In any
  case, make sure you have at least R 3.3.1.
* Go to the [RStudio download
  page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select the version that matches your distribution, and
  install it with your preferred method (e.g., with Debian/Ubuntu `sudo dpkg -i
  rstudio-x.yy.zzz-amd64.deb` at the terminal).
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

These setup instructions are adapted from those written for [Data Carpentry: R
for Data Analysis and Visualization of Ecological
Data](http://www.datacarpentry.org/R-ecology-lesson/).

### Virtual Enironment setup with `renv` {#renv}

These instructions are intended to help with setting up the included [`renv`
virtual environment](https://rstudio.github.io/renv/index.html), which ensures
all participants are using the same exact set of `R` packages (and package
versions). A few important notes to keep in mind:

* When `R` is started from the top level of this repository, `renv` is
  activated automatically. There is no further action required on your part. If
  `renv` is not installed, it will be installed automatically, assuming that you
  have an active internet connection.
* While `renv` is active, the `R` session will only have access to the packages
  (and their dependencies) that are listed in the `renv.lock` file -- that is,
  you should not expect to have access to any other `R` packages that may be
  installed elsewhere on the computing system in use.
* Upon an initial attempt, `renv` will prompt you to install packages listed in
  the `renv.lock` file, by printing a message like the following:

```r
# * Project 'PATH/TO/causal_mediation_workshops' loaded. [renv 0.13.2]
# * The project may be out of sync -- use `renv::status()` for more details.
> renv::status()
# The following package(s) are recorded in the lockfile, but not installed:
# Use `renv::restore()` to install these packages.
```
In any such case, please call `renv::restore()` to install any missing packages.
Note that you do _not_ need to manually install the packages via
`install.packages()`, `remotes::install_github()`, or similar.

For details on how the `renv` system works, the following references may be
helpful:

1. [Collaborating with
    `renv`](https://rstudio.github.io/renv/articles/collaborating.html)
2. [Introduction to `renv`](https://rstudio.github.io/renv/articles/renv.html)

In some rare cases, `R` packages that `renv` automatically tries to install as
part of the `renv::restore()` process may fail due to missing systems-level
dependencies. In such cases, a reference to the missing dependencies and
system-specific instructions their installation involving, e.g., [Ubuntu
Linux's `apt`](http://manpages.ubuntu.com/manpages/bionic/man8/apt.8.html) or
[`homebrew` for macOS](https://brew.sh/), will usually be displayed.