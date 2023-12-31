# same seed across chapters
library(methods)
set.seed(34729)

# fixed knitr chunk options
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = FALSE,
  tidy = TRUE,
  out.width = "80%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.retina = 0.8,
  fig.show = "hold",
  dpi = 300,
  message = FALSE,
  warning = FALSE,
  echo = TRUE,
  eval = TRUE
)

# global options
options(
  digits = 5,
  #scipen = 999,
  dplyr.print_min = 5,
  dplyr.print_max = 5,
  crayon.enabled = FALSE,
  bookdown.clean_book = TRUE,
  knitr.kable.NA = "NA",
  knitr.graphics.auto_pdf = TRUE,
  repos = structure(c(CRAN = "https://cran.rstudio.com/"))
)

# overwrite options by output type
if (knitr:::is_html_output()) {
  options(width = 80)
}
if (knitr:::is_latex_output()) {
  knitr::opts_chunk$set(width = 67)
  options(width = 67)
  options(cli.unicode = TRUE)
}

# automatically create a bib database for R packages
knitr::write_bib(c(
  .packages(), "bookdown", "knitr", "rmarkdown"
), "packages.bib")

# create and set global ggplot theme
# borrowed from https://github.com/tidymodels/TMwR/blob/master/_common.R
theme_transparent <- function(...) {
  # use black-white theme as base
  ret <- ggplot2::theme_bw(...)

  # modify with transparencies
  trans_rect <- ggplot2::element_rect(fill = "transparent", colour = NA)
  ret$panel.background  <- trans_rect
  ret$plot.background   <- trans_rect
  ret$legend.background <- trans_rect
  ret$legend.key        <- trans_rect

  # always have legend below
  ret$legend.position <- "bottom"
  return(ret)
}

library(ggplot2)
theme_set(theme_transparent())
theme_update(
  text = element_text(size = 25),
  axis.text.x = element_text(colour = "black", size = 30),
  axis.text.y = element_text(colour = "black", size = 30)
)
