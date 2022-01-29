knit_to_slidev <- function (input, ...){
   rmarkdown::render(
    input,
    output_file = "../inst/slidev/test.md",
    envir = globalenv()
  )
}
