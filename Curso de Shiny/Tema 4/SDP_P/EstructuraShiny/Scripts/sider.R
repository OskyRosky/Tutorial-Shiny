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
    menuItem("Vista 1",tabName = "inicio", icon = icon("chalkboard")),
    menuItem("Vista 2",tabName = "parte1", icon = icon("comment-dollar")),
    menuItem("Vista 3", icon = icon("fas fa-chart-bar"),
              startExpanded = FALSE,
              menuSubItem("¡ Viva",          tabName = "parte2_1", icon = icon("accusoft")),
              menuSubItem("EL",          tabName = "parte2_2", icon = icon("accusoft")),
              menuSubItem("REGGAE",          tabName = "parte2_3", icon = icon("accusoft")),
              menuSubItem("TÓN !!!!!",          tabName = "parte2_4", icon = icon("coins"))
              
              
     )
     
     
             
    )
  )



# ¿Lo podemos hacer aún más vistoso?