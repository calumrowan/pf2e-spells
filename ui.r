library(shiny)
library(tidyverse)

ui <- pageWithSidebar(
  
  headerPanel("Random Spell"),
  
  sidebarPanel(
    
    sliderInput("lev", "Level:", value = 1, min = 1, max = 10, ticks = FALSE)
    
    ,checkboxGroupInput("trad", "Traditions:", c("Arcane?" = "arcane",
                                                 "Divine?" = "divine",
                                                 "Occult?" = "occult",
                                                 "Primal?" = "primal")
    , selected = "arcane")
    
    ,fluidRow(
      column(6, align="center", offset = 3,
             actionButton("go",label = "Generate"),
         tags$style(type='text/css', "#button { vertical-align- middle; height- 50px; width- 100%; font-size- 30px;}")
             )
      )
    
    ,textOutput("rand")
    
    ),
  
  mainPanel(
    tableOutput("test")
  )
  
)