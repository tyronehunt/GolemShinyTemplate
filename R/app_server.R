#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  callModule(mod_dataviz_server, "dataviz_ui_1", type = "point")
  callModule(mod_dataviz_server, "dataviz_ui_2", type = "hist")
  callModule(mod_dataviz_server, "dataviz_ui_3", type = "boxplot")
  callModule(mod_dataviz_server, "dataviz_ui_4", type = "bar")
  
  # Technically these 2 severs don't do anything, so you don't need to call them
  callModule(mod_tab1_server, "tab1_ui_1")
  callModule(mod_tab6_server, "tab6_ui_1")
}
