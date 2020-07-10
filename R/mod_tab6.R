#' tab6 UI Function
#'
#' @title   mod_tab6_ui and mod_tab6_server
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @rdname mod_tab6
#'
#' @importFrom shiny NS tagList includeMarkdown
mod_tab6_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("You can create the UI straight from the module ui, like this"),
    col_6(
      includeMarkdown(
        system.file("app/www/tab-6a.md", package = "GolemShinyTemplate")
      )
    ), 
    col_6(
      includeMarkdown(
        system.file("app/www/tab-6b.md", package = "GolemShinyTemplate")
      )
    )
  )
}
    
#' tab6 Server Function
#'
#' @rdname mod_tab6
mod_tab6_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_tab6_ui("tab6_ui_1")
    
## To be copied in the server
# callModule(mod_tab6_server, "tab6_ui_1")
 
