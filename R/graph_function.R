library(devtools)
library(httr2)
library(jsonlite)
library(tibble)
library(purrr)
library(tidygeocoder)
library(usethis)
library(roxygen2)
library(usethis)
library(lubridate)
library(ggplot2)


#' Génère un graphique basé sur les données fournies.
#'
#' @param unnested_table Un tibble avec les données nécessaires pour le graphique.
#' @return Un objet ggplot.
#' @export
graph_function <- function(unnested_table) {
  ggplot(unnested_table, aes(x = as.POSIXct(date_heure), y = temperature_celsius)) +
    geom_line(color = "navy", size = 1, linetype = "solid") +
    labs(title = "Évolution de la Température",
         x = "Date et Heure (GMT)",
         y = "Température (°C)") +
    theme_minimal()
}
