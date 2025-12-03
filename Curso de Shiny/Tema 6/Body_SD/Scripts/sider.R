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
    menuItem("Body", icon = icon("fas fa-chart-bar"),
             startExpanded = FALSE,
             menuSubItem("Normal",          tabName = "P1", icon = icon("accusoft")),
             menuSubItem("Elementos del body",          tabName = "P2", icon = icon("accusoft")),
             
             menuItem("body general", icon = icon("fas fa-chart-bar"),
                      startExpanded = FALSE,
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
      menuSubItem("Versión 0 del SDPlus.",                   tabName = "bdP-0", icon = icon("accusoft")),
      menuSubItem("La columna matriz derecha.",              tabName = "bdP-1", icon = icon("accusoft")),
      menuSubItem("Mejoras en las cajas.",                   tabName = "bdP-2", icon = icon("accusoft")),
      menuSubItem("Elementos extras.",                       tabName = "bdP-3", icon = icon("accusoft")),
      menuSubItem("Elementos en la estructura.",             tabName = "bdP-4", icon = icon("accusoft")),
      menuSubItem("Mejoras en la apariencia.",               tabName = "bdP-5", icon = icon("accusoft")),
      menuSubItem("Recarga CSS.",                            tabName = "bdP-6", icon = icon("accusoft")),
      menuSubItem("Mejoras encabezado.",                     tabName = "bdP-7", icon = icon("accusoft"))
    
    )
    
  )
)

)




# ¿Lo podemos hacer aún más vistoso?