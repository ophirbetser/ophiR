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
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, world!")
}


plus <- function(a, b) {
  return(a + b)
}


dt_ <- function(df){
  DT::datatable(
    df,
    extensions = c('Buttons', 'ColReorder', 'Scroller'),
    options = list(
      dom = 'Brtip',
      buttons = c('copy', 'csv', 'pdf', 'colvis'),
      colReorder = list(realtime = FALSE),
      scroller = TRUE,
      initComplete = JS(
        "function(settings, json) {",
        "$(this.api().table().header()).css({'background-color': '#000', 'color': '#fff'});",
        "}")
    )
  )
}


