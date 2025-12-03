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


##############
##   Header  #
##############


header <- dashboardHeader(title = "Ejemplo_1_code1")

##############
##   Sider   #
##############

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Nivel 1",tabName = "inicio", icon = icon("chalkboard")
             )
              )
                           )
##########
## Body  #
##########

body <- dashboardBody( 
  tabItems(  
    
    
   ############################
   #  Presentacion de un Body #    
   ############################
    
    tabItem(tabName = "inicio",
            h1("Este es un Body", align = "center")
            )
  )

)

##########
#   Ui   #
##########

ui <- dashboardPage(
 

  header,
  sidebar,
  body
)

###########
#  Server #
###########

server <- function(input, output) { }

###########
## Run App  
###########

shinyApp(ui, server)


