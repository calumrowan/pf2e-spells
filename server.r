library(shiny)
library(tidyverse)
st_split <- read.csv("spells_split.csv")

server <- function(input, output) {
    trads <- reactive(({paste(input$trad, collapse = "|")}))
    filteredSpells <- reactive({
      dplyr::filter(st_split, as.logical(
        grepl(trads(), st_split$`tradition.1`) 
        + grepl(trads(), st_split$`tradition.2`) 
        + grepl(trads(), st_split$`tradition.3`) 
        + grepl(trads(), st_split$`tradition.4`)
        & grepl(paste0(input$lev, "$"), st_split$level)
    ))})
    output$test <- renderTable({filteredSpells()})
    observeEvent(input$go, {
      randSpell <- filteredSpells()[sample(nrow(filteredSpells()), 1), 1]
      output$rand <- renderText({randSpell})
                          }
    ,ignoreNULL = TRUE
    )
    
}
