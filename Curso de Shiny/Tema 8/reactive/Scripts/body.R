############################
#          body            # 
############################

body <- dashboardBody( 
  tabItems(  
    
    
    tabItem(tabName = "server-1",
            h1("El Back-end del shiny", align = "center"),
            br(),
            br(),
            h2("Veamos la visualización de una tabla y un gráfico Shiny, los mismos del tema anterior."),
            br(),
            br(),
            h3("Tabla de iris."),
            reactableOutput("tabla.ejemplo1"),
            br(),
            br(),
            h3("Gráfico de mtcars."),
            highchartOutput("grafi1",height = "500px")
            
            
            
            
    ),
    
    tabItem(tabName = "server-2",
            h1("Una orden, un  pedido exclusivo.", align = "center"),
            br(),
            br(),
            h2("Estructura 1"),
            fluidRow( box(reactableOutput("tabla.ejemplo2"))),
            br(),
            br(),
            fluidRow( box(highchartOutput("grafi2",height = "500px"))),
            h2("Estructura 2: utilizando la función."),
            fluidRow( 
              box(reactableOutput("tabla.ejemplo3")),
              box(highchartOutput("grafi3",height = "500px"))
            )
            
            
            
    ),
    
    tabItem(tabName = "server-3",
            h1("La visualización por tablas.", align = "center"),
            br(),
            br(),
            h2("Una tabla clásica"),
            br(),
            fluidRow(
              
              box(tableOutput("tabla.1"))
              
            ),
            
            br(),
            br(),
            h2("Una tabla DT"),
            br(),
            fluidRow(
              
              box(DTOutput("tabla.2"))
              
            ),
            br(),
            br(),
            h2("Una tabla gt"),
            br(),
            fluidRow(
              
              box(gt_output("tabla.3"))
              
            ),
            br(),
            br(),
            h2("Una tabla reactable"),
            br(),
            fluidRow(
              
              box(reactableOutput("tabla.4"))
              
            ),
            
    ),
    
    tabItem(tabName = "server-4",
            h1("La visualización por gráficos.", align = "center"),
            br(),
            br(),
            h2("Un gráfico clásico."),
            br(),
            fluidRow(
              
              box(plotOutput("grafico.1"))
              
            ),
            br(),
            br(),
            h2("Un gráfico con ggplot2."),
            fluidRow(
              
              box( plotOutput("grafico.2") )
              
            ),
            br(),
            br(),
            h2("Un gráfico con plotly."),
            fluidRow(
              
              box(  plotlyOutput("grafico.3")        )
              
            ),
            br(),
            h2("Un gráfico con Dygraph"),
            fluidRow(
              
              box(dygraphOutput("grafico.4"))
              
            )

            
            
    )
             
    )
    
  )
  
