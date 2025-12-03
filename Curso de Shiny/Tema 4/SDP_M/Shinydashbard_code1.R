################################################
#   Estrucutra de un proyecyo Shiny Dashboard  #
################################################

###############
#  Librerías  # 
###############

suppressMessages(library(shiny))
suppressMessages(library(shinydashboard))


library(shiny)
library(shinydashboard)




ui <- dashboardPage(
 

   dashboardHeader(),
  dashboardSidebar(),
  dashboardBody()
)

server <- function(input, output) { }

shinyApp(ui, server)



