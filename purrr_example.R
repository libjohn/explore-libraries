#' ---
#' title: "Live code from purrr session at rstudio::conf"
#' author: "Jenny Bryan"
#' date: "`r format(Sys.Date())`"
#' output: github_document
#' ---

#' ## Where to find this document
#'
#' Shortlink humans can type:
#'
#'   * <http://bit.ly/jenny-live-code>
#'
#' Horrible link that reveals how this is done:
#'
#'   * <https://www.dropbox.com/s/2b8mi4rir23pvnx/jenny-live-code.R?raw=1>
#'
#' Using the `raw=1` query trick for rendering a DropBox-hosted file in the
#' browser:
#'
#'   * <https://www.dropbox.com/en/help/desktop-web/force-download>
#' learned from [Michael Levy](https://twitter.com/ucdlevy).
#'
#' How this works:
#'
#'   * I code live in an R script locally. I save often.
#'   * This file lives in a directory synced to DropBox.
#'   * You open the DropBox file at <http://bit.ly/jenny-live-code> and refresh
#'   as needed.
#'   * Should allow you to see, copy, paste everything I've typed and save the
#'   entire transcript at the end. This file is highly perishable, so save your
#'   own copy if you want it.
#'   * Every now and then the refresh won't work. Just re-open from from the
#'   bit.ly link: <http://bit.ly/jenny-live-code>
#'
#+ setup, include = FALSE
knitr::opts_chunk$set(error = TRUE, collapse = TRUE)

#+ live-code

#' ## Workshop material starts here

## fake placeholder content :)
## go ahead, render this script!

library(ggplot2)
library(gapminder)

ggplot(subset(gapminder, continent != "Oceania"),
       aes(x = year, y = lifeExp, group = country, color = country)) +
  geom_line(lwd = 1, show.legend = FALSE) + facet_wrap(~ continent) +
  scale_color_manual(values = country_colors) +
  theme_bw() + theme(strip.text = element_text(size = rel(1.1)))