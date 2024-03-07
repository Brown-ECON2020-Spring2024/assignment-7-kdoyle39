## Run all code for the project
install.packages("renv")
library(renv)
## Get raw data
install.packages("gapminder")
library(gapminder)
source("./code/get_gapminder_data.r")

## Run Analysis
install.packages("data.table")
library(table.table)
source("./code/run_linear_reg.r")

## Make Tables
install.packages("estimatr")
library(estimatr)
renv::install("modelsummary")
library(modelsummary)
source("./code/make_tables.r")

## Make Figures
renv::install("ggplot2")
library(ggplot2)
source("./code/make_figures.r")

## Run Tests
testthat::local_edition(3)
testthat::test_dir("tests")
