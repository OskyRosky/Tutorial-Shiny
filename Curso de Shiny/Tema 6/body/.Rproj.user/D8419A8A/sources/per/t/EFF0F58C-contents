############################
#          body            # 
############################

body <- dashboardBody( 
  tabItems(  
    
    
    tabItem(tabName = "P0",
            h1("Explicaremos la forma en que Shiny suele visualizar sus resultados", align = "center"),
           
            
    ),
    
    ############################
    #  Presentacion de un Body #    
    ############################
    
  
    tabItem(tabName = "P1",
            h1("Un cuadro en Shiny", align = "center"),
            br(),
            br(),
            h2("Veamos la visualización de una tabla en Shiny"),
            br(),
            br(),
            reactableOutput("tabla.ejemplo")
            
    ),
    
    tabItem(tabName = "P2",
            h1("Un gráfico en Shiny", align = "center"),
            br(),
            br(),
            h2("Veamos la visualización de un gráfico en Shiny"),
            br(),
            br(),
            highchartOutput("grafi",height = "500px")
    )
 
  )
  
)

