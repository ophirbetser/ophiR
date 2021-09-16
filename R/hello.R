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


# for view table in the Viewer
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
dt_with_search <- function(df){
  DT::datatable(
    df,
    extensions = c('Buttons', 'ColReorder', 'Scroller'),
    options = list(
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




# see fast unique values
u <- function(v) {
  unique(v)
}
un <- function(v) {
  data.table::uniqueN(v)
}

N_i <- function(dt, i) {
  DT <- data.table::as.data.table(dt)
  return(DT[, .N, by = c(names(DT)[i])])
}

N_name <- function(dt, name) {
  DT <- data.table::as.data.table(dt)
  return(DT[, .N, by = c(name)])
}


