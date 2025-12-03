############################
#          sidebar         # 
############################

# dashboardSidebar(
#   ...,
#   disable = FALSE,
#   width = NULL,
#   collapsed = FALSE,
#   minified = TRUE,
#   id = NULL
# )







 sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Principal",tabName = "general1", icon = icon("comment-dollar")),
    menuItem("body general", icon = icon("fas fa-chart-bar"),
              startExpanded = FALSE,
              menuSubItem("Gráfico y tabla normal",            tabName = "bd-0", icon = icon("accusoft")),
              menuSubItem("Los boxes",                         tabName = "bd-1", icon = icon("accusoft")),
              menuSubItem("El tabBox",                         tabName = "bd-2", icon = icon("accusoft")),
              menuSubItem("El infoBox",                        tabName = "bd-3", icon = icon("accusoft")),
              menuSubItem("El valueBox",                       tabName = "bd-4", icon = icon("accusoft")),
              menuSubItem("Los Layouts",                       tabName = "bd-5", icon = icon("accusoft")),
              menuSubItem("Mix        ",                       tabName = "bd-6", icon = icon("accusoft"))
              
           
     ),
    menuItem(
      "body SD Plus", icon = icon("fas fa-chart-bar"),
      startExpanded = FALSE,
      menuSubItem("La columna matriz derecha",             tabName = "bdP-1", icon = icon("accusoft")),
      menuSubItem("Header.",                               tabName = "bdP-2", icon = icon("accusoft")),
      menuSubItem("Boxes",                                 tabName = "bdP-3", icon = icon("accusoft")),
      menuSubItem("Botones",                               tabName = "bdP-4", icon = icon("accusoft")),
      menuSubItem("Otros boxes",                           tabName = "bdP-5", icon = icon("accusoft")),
      menuSubItem("Elementos extras",                      tabName = "bdP-6", icon = icon("accusoft"))
     
             
    )
  )
)


