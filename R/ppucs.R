# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
ppucs <- function(...){
  args <- c()


  tmp_md <- tempfile("slides", fileext = ".md")

  write_utf8("---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://source.unsplash.com/collection/94734566/1920x1080
# apply any windi css classes to the current slide
class: 'text-center'
# https://sli.dev/custom/highlighters.html
highlighter: shiki
# show line numbers in code blocks
lineNumbers: false
# some information about the slides, markdown enabled
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
# persist drawings in exports and build
drawings:
  persist: false
---", tmp_md)

  md_document2 <- function (
  ..., includes = list()
  ){
    if (length(includes) == 0) includes = list()
    includes$before_body = c(includes$before_body, tmp_md)

     rmarkdown::md_document(
      ..., includes = includes
    )
  }

  rmarkdown::output_format(
    knitr = rmarkdown::knitr_options(),
    NULL,
    base_format = md_document2()
  )
}

