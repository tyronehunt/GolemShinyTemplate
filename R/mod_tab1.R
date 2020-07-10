#' tab1 UI Function
#'
#' @title   mod_tab1_ui and mod_tab1_server
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @rdname mod_tab1 
#' 
#' @importFrom shiny NS tagList includeMarkdown
mod_tab1_ui <- function(id){
  ns <- NS(id)
  tagList(
    includeMarkdown(
      system.file("app/www/tab-1.md", package = "GolemShinyTemplate")
    )
  )
}
    
#' tab1 Server Function
#'
#' @rdname mod_tab1
mod_tab1_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_tab1_ui("tab1_ui_1")
    
## To be copied in the server
# callModule(mod_tab1_server, "tab1_ui_1")
 
