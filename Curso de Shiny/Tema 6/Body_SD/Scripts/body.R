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
            h2("Veamos la visualización de una tabla y un gráfico Shiny, los mismos del tema anterior."),
            br(),
            br(),
            h3("Tabla."),
            reactableOutput("tabla.ejemplo1"),
            br(),
            br(),
            h3("Gráfico."),
            highchartOutput("grafi1",height = "500px")
            
    ),
    
    tabItem(tabName = "P2",
            h1("Elementos del Body", align = "center"),
            h2("Estructura 1"),
            br(),
            br(),
            h2("Veamos la visualización de un gráfico en Shiny con una mejor estructura."),
            h3("Utilizando la función fluidrow()."),
            br(),
            br(),
            fluidRow( box(reactableOutput("tabla.ejemplo2"))),
            br(),
            br(),
            fluidRow( box(highchartOutput("grafi2",height = "500px"))),
            h2("Estructura 2: utilizando la función."),
            h3("Utilizando la función box()."),
            fluidRow( 
                        box(reactableOutput("tabla.ejemplo3")),
                        box(highchartOutput("grafi3",height = "500px"))
            )
            
       
    ),
    
    tabItem(tabName = "bd-1",
            h1("1. Los boxes.", align = "center"),
            br(),
            h2("Los boxs normales."),
            fluidRow(
              box(highchartOutput("grafi4",height = "500px")),
              
              box(
                "Box content here", br(), "More box content",
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
              )
            ),
            br(),
            h2("Los boxs con títulos y cambio en el status."),
            h3("Los cuadros pueden tener títulos y colores de barra de encabezado con las opciones de título y estado. Aquí se muestran los diferentes estados posibles."),
            fluidRow(
              box(title = "Histogram", status = "primary", plotOutput("plot2", height = 250)),
              
              box(
                title = "Inputs", status = "warning",
                "Box content here", br(), "More box content",
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
              )
              
            ),
            br(),
            h2("Los boxs con solidHeader y collapsible."),
            h3("Puede tener encabezados sólidos con solidHeader=TRUE y mostrar un botón en la parte superior derecha que colapsará el cuadro con collapsible=TRUE:"),
            
            fluidRow(
              box(
                title = "Histogram", status = "primary", solidHeader = TRUE,
                collapsible = TRUE,
                plotOutput("plot3", height = 250)
              ),
              
              box(
                title = "Inputs", status = "warning", solidHeader = TRUE,
                "Box content here", br(), "More box content",
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
              )
              
            ),
            br(),
            
            fluidRow(
              box(
                title = "Histogram", solidHeader = TRUE,
                collapsible = TRUE,
                plotOutput("plot4", height = 250)
              ),
              
              box(
                title = "Inputs", solidHeader = TRUE,
                "Box content here", br(), "More box content",
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
              )
              
            ),
            br(),
            h2("Los boxs con color de fondo."),
            h3("Finalmente, también es posible tener un fondo sólido, con la opción de fondo. Los diferentes colores posibles se muestran aquí."),
            br(),
            fluidRow(
              box(
                title = "Histogram", background = "maroon", solidHeader = TRUE,
                plotOutput("plot5", height = 250)
              ),
              
              box(
                title = "Inputs", background = "black",
                "Box content here", br(), "More box content",
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
              )
            ),
            
          
    ),    
            
              tabItem(tabName = "bd-2",
                    
                    
                    h1("2. Los tabBox: .", align = "center"),
                    br(),
                    br(),
                    
                    h2("Un tabBox es similar a un tabsetPanel de Shiny en el sentido de que toma tabPanels como entradas, le permite elegir qué pestaña se selecciona y se le puede asignar una identificación."),
        
                    br(),
                    br(),
                    
                    fluidRow(
                      tabBox(
                        title = "First tabBox",
                        # The id lets us use input$tabset1 on the server to find the current tab
                        id = "tabset1", height = "250px",
                        tabPanel("Tab1", "First tab content"),
                        tabPanel("Tab2", "Tab content 2")
                      ),
                      tabBox(
                        side = "right", height = "250px",
                        selected = "Tab3",
                        tabPanel("Tab1", "Tab content 1"),
                        tabPanel("Tab2", "Tab content 2"),
                        tabPanel("Tab3", "Note that when side=right, the tab order is reversed.")
                      )
                    ),
                    
                    fluidRow(
                      tabBox(
                        # Title can include an icon
                        title = tagList(shiny::icon("gear"), "tabBox status"),
                        tabPanel("Tab1",
                                 "Currently selected tab from first box:",
                                 verbatimTextOutput("tabset1Selected")
                        ),
                        tabPanel("Tab2", "Tab content 2")
                      )
                    )
            ),
    

    
    tabItem(tabName = "bd-3",
            
            h1("3. El infobox: .", align = "center"),
            br(),
            br(),
            h2("Es un tipo de casilla o cajita con cierta información. Útil en la presentación de indicadores."),
            
            # infoBoxes with fill=FALSE
            fluidRow(
              # A static infoBox
              infoBox("New Orders", 10 * 2, icon = icon("credit-card")),
              # Dynamic infoBoxes
              infoBoxOutput("progressBox"),
              infoBoxOutput("approvalBox")
            ),
            
            # infoBoxes with fill=TRUE
            fluidRow(
              infoBox("New Orders", 10 * 2, icon = icon("credit-card"), fill = TRUE),
              infoBoxOutput("progressBox2"),
              infoBoxOutput("approvalBox2")
            ),
            
            fluidRow(
              # Clicking this will increment the progress amount
              box(width = 4, actionButton("count", "Increment progress"))
            )
            
    ),
    
    
    tabItem(tabName = "bd-4",
            
            h1("4. El valueBox: .", align = "center"),
            
            br(),
            br(),
            h3("Los valueBoxes son similares a los infoBoxes, pero tienen una apariencia algo diferente."),
            br(),
            br(),
            
            fluidRow(
              # A static valueBox
              valueBox(10 * 2, "New Orders", icon = icon("credit-card")),
              
              # Dynamic valueBoxes
              valueBoxOutput("progressBox23"),
              
              valueBoxOutput("approvalBox23")
            ),
            fluidRow(
              # Clicking this will increment the progress amount
              box(width = 4, actionButton("count", "Increment progress"))
            )
            
            
    ),
    
    
    tabItem(tabName = "bd-5",
            
            h1("5. Los Layouts: .", align = "center"),
            br(),
            br(),
            h2("La traducción de Layout al español sería diseño."),
            br(),
            h2("El diseño de las cajas requiere un poco de conocimiento del sistema de diseño de cuadrícula."),
            br(),
            h3("Diseño basado en filas."),
            br(),
            br(),
            fluidRow(
              box(title = "Box title", "Box content"),
              box(status = "warning", "Box content")
            ),
            
            fluidRow(
              box(
                title = "Title 1", width = 4, solidHeader = TRUE, status = "primary",
                "Box content"
              ),
              box(
                title = "Title 2", width = 4, solidHeader = TRUE,
                "Box content"
              ),
              box(
                title = "Title 1", width = 4, solidHeader = TRUE, status = "warning",
                "Box content"
              )
            ),
            
            fluidRow(
              box(
                width = 4, background = "black",
                "A box with a solid black background"
              ),
              box(
                title = "Title 5", width = 4, background = "light-blue",
                "A box with a solid light-blue background"
              ),
              box(
                title = "Title 6",width = 4, background = "maroon",
                "A box with a solid maroon background"
              )
            ),
            br(),
            br(),
            h3("Diseño basado en columnas."),
            br(),
            fluidRow(
              column(width = 4,
                     box(
                       title = "Box title", width = NULL, status = "primary",
                       "Box content"
                     ),
                     box(
                       title = "Title 1", width = NULL, solidHeader = TRUE, status = "primary",
                       "Box content"
                     ),
                     box(
                       width = NULL, background = "black",
                       "A box with a solid black background"
                     )
              ),
              
              column(width = 4,
                     box(
                       status = "warning", width = NULL,
                       "Box content"
                     ),
                     box(
                       title = "Title 3", width = NULL, solidHeader = TRUE, status = "warning",
                       "Box content"
                     ),
                     box(
                       title = "Title 5", width = NULL, background = "light-blue",
                       "A box with a solid light-blue background"
                     )
              ),
              
              column(width = 4,
                     box(
                       title = "Title 2", width = NULL, solidHeader = TRUE,
                       "Box content"
                     ),
                     box(
                       title = "Title 6", width = NULL, background = "maroon",
                       "A box with a solid maroon background"
                     )
              )
            )
            
    ),
    
    
    tabItem(tabName = "bd-6",
            
            h1("6. Mix: .", align = "center"),
            br(),
            br(),
            h2("También es posible usar una combinación de filas y columnas. En este ejemplo, los dos cuadros superiores están en fila y el resto en columnas."),
            br(),
            br(),
            fluidRow(
              box(
                title = "Box title", width = 6, status = "primary",
                "Box content"
              ),
              box(
                status = "warning", width = 6,
                "Box content"
              )
            ),
            
            fluidRow(
              column(width = 4,
                     box(
                       title = "Title 1", width = NULL, solidHeader = TRUE, status = "primary",
                       "Box content"
                     ),
                     box(
                       width = NULL, background = "black",
                       "A box with a solid black background"
                     )
              ),
              
              column(width = 4,
                     box(
                       title = "Title 3", width = NULL, solidHeader = TRUE, status = "warning",
                       "Box content"
                     ),
                     box(
                       title = "Title 5", width = NULL, background = "light-blue",
                       "A box with a solid light-blue background"
                     )
              ),
              
              column(width = 4,
                     box(
                       title = "Title 2", width = NULL, solidHeader = TRUE,
                       "Box content"
                     ),
                     box(
                       title = "Title 6", width = NULL, background = "maroon",
                       "A box with a solid maroon background"
                     )
              )
            )
            
            
            
    ),
    
    tabItem(tabName = "bdP-0",
            
            h1("0. Primera versión el ShinydashboardPlus.", align = "center"),
            br(),
            br(),
            h2("Ir al enlace: https://dgranjon.shinyapps.io/shinydashboardPlusDemo/")
    ),
    
    tabItem(tabName = "bdP-1",
            
            h1("1. La columna matriz derecha.", align = "center"),
            br(),
            br(),
            h2("Ir al enlace: https://rinterface.github.io/shinydashboardPlus/reference/controlbar.html")
    ),
    
    tabItem(tabName = "bdP-2",
            
            h1("2. Mejoras en las cajas.", align = "center"),
            br(),
            br(),
            h2("Ir al enlace: https://rinterface.github.io/shinydashboardPlus/articles/improved-boxes.html")
            
    ),
    
    tabItem(tabName = "bdP-3",
            
            h1("3. Elementos extras", align = "center"),
            br(),
            br(),
            h2("Ir al enlace: https://rinterface.github.io/shinydashboardPlus/articles/extra-elements.html")
            
    ),
         
    tabItem(tabName = "bdP-4",
            
            h1("4. Elementos en la estructura.", align = "center"),
            br(),
            br(),
            h2("Ir al enlace: https://rinterface.github.io/shinydashboardPlus/articles/controlbar.html")
            
    ),    
    
    
    
    tabItem(tabName = "bdP-5",
        
            h1("5. Mejoras en la apariencia.", align = "center"),
            br(),
            br(),
            h2("Ir al enlace: https://rinterface.github.io/shinydashboardPlus/articles/more-skins.html")
                
    ),  
    
    
    tabItem(tabName = "bdP-6",
            
            h1("6. Recarga CSS.", align = "center"),
            br(),
            br(),
            h2("Ir al enlace: https://rinterface.github.io/shinydashboardPlus/articles/css-preloader.html")
            
    ),
    
    tabItem(tabName = "bdP-7",
            
            h1("7. Mejores en el encabezado.", align = "center"),
            br(),
            br(),
            h2("Ir al enlace: https://rinterface.github.io/shinydashboardPlus/articles/enhanced-header.html")
            
      )
            
      #        h2("Cuando se posee mucha información y esta se desea condensar, los tabBox() son una gran opción."),
      #             fluidRow(
      #               tabBox(
      #                 title = "First tabBox",
      #                 # The id lets us use input$tabset1 on the server to find the current tab
      #                 id = "tabset1", height = "250px",
      #                 tabPanel("Tab1", "First tab content"),
      #                 tabPanel("Tab2", "Tab content 2")
      #               ),
      #               tabBox(
      #                 side = "right", height = "250px",
      #                 selected = "Tab3",
      #                 tabPanel("Tab1", "Tab content 1"),
      #                 tabPanel("Tab2", "Tab content 2"),
      #                 tabPanel("Tab3", "Note that when side=right, the tab order is reversed.")
      #               )
      #             ),
      #             
      #             fluidRow(
      #               tabBox(
      #                 # Title can include an icon
      #                 title = tagList(shiny::icon("weed"), "tabBox status"),
      #                 tabPanel("Tab1",
      #                          "Currently selected tab from first box:",
      #                          verbatimTextOutput("tabset1Selected")
      #                 ),
      #                 tabPanel("Tab2", "Tab content 2")
      #               )
      #             )
      #               #
                    
             
    )
    
  )
  
