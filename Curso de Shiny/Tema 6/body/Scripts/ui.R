##########
#   Ui   #
##########

ui <- dashboardPage(
  
  
  header,
  sidebar,
  body,
  controlbar = dashboardControlbar(
    skin = "dark",
    controlbarMenu(
      id = "menu"
    )
  ),
  title = "DashboardPage"
)

