############################
#          header          # 
############################

# El header es un tipo de encabezado del Dashboard

# dashboardHeader(..., title = NULL, titleWidth = NULL, disable = FALSE,
# .list = NULL)

# o 

# dashboardHeader(
#   ...,
#   title = NULL,
#   titleWidth = NULL,
#   disable = FALSE,
#   .list = NULL,
#   leftUi = NULL,
#   controlbarIcon = shiny::icon("cogs"),
#   fixed = FALSE
# )

# https://rinterface.github.io/shinydashboardPlus/reference/dashboardHeader.html

header <- dashboardHeader(title = "El server")
