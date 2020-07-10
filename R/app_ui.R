#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
#' 
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    tagList(
      nav_(
        "NavBar Title",
        c(
          "tab1" = "tab-1",
          "geom_point" = "geom_point",
          "geom_hist" = "geom_hist",
          "geom_boxplot" = "geom_boxplot",
          "geom_bar" = "geom_bar",
          "tab6" = "tab-6"
        )
      )
      , 
      tags$div(
        class="container", 
        fluidRow(
          id = "tab1",  mod_tab1_ui("tab1_ui_1")
        ) %>% tagAppendAttributes(
          style = "display:none"
        ),
        fluidRow(
          id = "geom_point", mod_dataviz_ui("dataviz_ui_1", "point")
        ) %>% tagAppendAttributes(
          style = "display:none"
        ),
        fluidRow(
          id = "geom_hist", mod_dataviz_ui("dataviz_ui_2", "hist")
        ) %>% tagAppendAttributes(
          style = "display:none"
        ),
        fluidRow(
          id = "geom_boxplot", mod_dataviz_ui("dataviz_ui_3", "boxplot")
        ) %>% tagAppendAttributes(
          style = "display:none"
        ),
        fluidRow(
          id = "geom_bar", mod_dataviz_ui("dataviz_ui_4", "bar")
        ) %>% tagAppendAttributes(
          style = "display:none"
        ),
        fluidRow(
          id = "tab6", mod_tab6_ui("tab6_ui_1")
        ) %>% tagAppendAttributes(
          style = "display:none"
        )
      )
      
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
  
  tags$head(
    golem::activate_js(),
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'GolemShinyTemplate'
    ),
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    tags$link(
      rel="stylesheet", 
      type="text/css", 
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css",
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T",
      crossorigin="anonymous"
    ), 
    tags$script(
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js",
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM",
      crossorigin="anonymous"
    ), 
    tags$link(
      rel="stylesheet", 
      type="text/css", 
      href="www/custom.css"
    ), 
    tags$script(src="www/script.js")
  )
}

