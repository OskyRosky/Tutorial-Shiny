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
    
    menuItem(
      "El server", icon = icon("fas fa-chart-bar"),
      startExpanded = FALSE,
      menuSubItem("Back end",                                tabName = "server-1", icon = icon("accusoft")),
      menuSubItem("Pedidos :: una orden.",                   tabName = "server-2", icon = icon("accusoft")),
      menuSubItem("Las tablas.",                             tabName = "server-3", icon = icon("accusoft")),
      menuSubItem("Los gráficos.",                           tabName = "server-4", icon = icon("accusoft"))
     
    
    
    )
    
  )
)






# ¿Lo podemos hacer aún más vistoso?