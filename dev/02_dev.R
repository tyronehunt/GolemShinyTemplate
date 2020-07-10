# Building a Prod-Ready, Robust Shiny Application.
# 
# README: each step of the dev files is optional, and you don't have to 
# fill every dev scripts before getting started. 
# 01_start.R should be filled at start. 
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
# 
# 
###################################
#### CURRENT FILE: DEV SCRIPT #####
###################################

# Engineering

## Dependencies ----
## Add one line by package you want to add as dependency
usethis::use_package( "glue" ) # To call each time you need a new package
usethis::use_package( "rlang" ) # To call each time you need a new package
usethis::use_package( "dplyr" ) # To call each time you need a new package
usethis::use_package( "styler" ) # To call each time you need a new package
usethis::use_package( "withr" ) # To call each time you need a new package
usethis::use_package( "colourvalues" ) # To call each time you need a new package
usethis::use_package( "markdown" ) # To call each time you need a new package
usethis::use_pipe()

attachment::att_amend_desc()
usethis::use_package( "markdown" )

## Add modules ----
## Create a module infrastructure in R/
golem::add_module( name = "tab1" ) # Name of the module
golem::add_module( name = "tab6" ) # Name of the module
# This module will be used multiple times across tabs
golem::add_module( name = "dataviz" ) # Name of the module



## Add helper functions ----
## Creates ftc_* and utils_*
golem::add_fct("nav")
# golem::add_fct("row")
golem::add_utils("ui", "dataviz")

## External resources
## Creates .js and .css files at inst/app/www
golem::add_js_file( "script" )
golem::add_js_handler( "handlers" )
golem::add_css_file( "custom" )

## Add internal datasets ----
## If you have data in your package
usethis::use_data_raw( name = "big_epa_cars", open = FALSE )

## Tests ----
## Add one line by test you want to create
usethis::use_test( "app" )

# Documentation

## Vignette ----
usethis::use_vignette("GolemShinyTemplate")
devtools::build_vignettes()

## Code coverage ----
## (You'll need GitHub there)
usethis::use_github()
usethis::use_travis()
usethis::use_appveyor()

# You're now set! ----
# go to dev/03_deploy.R
rstudioapi::navigateToFile("dev/03_deploy.R")

