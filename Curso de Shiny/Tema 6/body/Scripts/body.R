############################
#          body            # 
############################

body <- dashboardBody( 
  tabItems(  
    
    ############################
    #  Presentacion de un Body #    
    ############################
    
    
    
    tabItem(tabName = "general1",
            h1("El Front-end principal del Shiny: el body", align = "center"),
            
            h2("Actualmente están visualizando el Front-end de un Shiny Dashboard. Veamos algunos ejemplo", align = "left"),
            
            h2("Sean los Dashboar del sitio de rstudio: https://shiny.rstudio.com/gallery/ y http://shiny.rstudio-staging.com/gallery/superzip-example.html ", align = "left"),

            h2("Ver ejemplos de lo que se muestra en el Body.", align = "left"),
            
    ),
    


    
    ############################
    #   Body General           #    
    ############################
    
    tabItem(tabName = "bd-0",
            h1("0. Gráfico y tabla normal", align = "center"),
            
            h2("Veamos la visualización de una tabla en Shiny"),
            br(),
            br(),
            reactableOutput("tabla.ejemplo"),
            
            h2("Veamos la visualización de un gráfico en Shiny"),
            br(),
            br(),
            highchartOutput("grafi",height = "500px")
            
    ),
   
     tabItem(tabName = "bd-1",
            h1("1. Los boxes.", align = "center"),
            
            fluidRow(
              box(plotOutput("plot", click = "plot_click")),
              
              box(
                "Box content here", br(), "More box content",
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
              )
            ),
            
            fluidRow(
              box(title = "Histogram", status = "primary", plotOutput("plot2", height = 250)),
              
              box(
                title = "Inputs", status = "warning",
                "Box content here", br(), "More box content",
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
              )
              
            ),
            
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
            
            fluidRow(
              
              box(
                title = "Histogram", solidHeader = TRUE,
                collapsible = TRUE,
                plotOutput("plot3", height = 250)
              ),
              
              box(
                title = "Inputs", solidHeader = TRUE,
                "Box content here", br(), "More box content",
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
              )
              
            ),
            
            fluidRow(
              
              box(
                title = "Histogram", solidHeader = TRUE,
                collapsible = TRUE,
                plotOutput("plot3", height = 250)
              ),
              
              box(
                title = "Inputs", solidHeader = TRUE,
                "Box content here", br(), "More box content",
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
              )
              
            ),
            
            fluidRow(
              
              box(
                title = "Histogram", background = "maroon", solidHeader = TRUE,
                plotOutput("plot4", height = 250)
              ),
              
              box(
                title = "Inputs", background = "black",
                "Box content here", br(), "More box content",
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
              )
              
            )
            

    ),
   
   tabItem(tabName = "bd-2",
           h1("2. El tabBox.", align = "center"),
           
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
            h1("3. El infoBox.", align = "center"),
            
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
           h1("4. El valueBox.", align = "center"),
           
           fluidRow(
             # A static valueBox
             valueBox(10 * 2, "New Orders", icon = icon("credit-card")),
             
             # Dynamic valueBoxes
             valueBoxOutput("progressBox"),
             
             valueBoxOutput("approvalBox")
           ),
           fluidRow(
             # Clicking this will increment the progress amount
             box(width = 4, actionButton("count", "Increment progress"))
           )
   ),
   
   tabItem(tabName = "bd-5",
           h1("5. Los Layouts.", align = "center"),
           
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
           )
   ),
   
   tabItem(tabName = "bd-6",
           h1("6. Hacer un mix de las filas y columnas.", align = "center"),
           br(),
           br(),
           h2("Veamos ahora una estructura del Dashboar en columnas"),
           
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
   
   tabItem(tabName = "bdP-1",
           h1("A. La columna matriz a la derecha.", align = "center")
   ),
   
   tabItem(tabName = "bdP-2",
           h1("B. Mejoras en el header.", align = "center")
   ),
   
   tabItem(tabName = "bdP-3",
           h1("C. Nuevos boxes.", align = "center"),
           
           tags$style("body { background-color: ghostwhite}"),
           fluidRow(
             actionButton("toggle_box", "Toggle Box"),
             actionButton("remove_box", "Remove Box", class = "bg-danger"),
             actionButton("restore_box", "Restore Box", class = "bg-success"),
             actionButton("update_box", "Update Box", class = "bg-primary")
           ),
           br(),
           box(
             title = textOutput("box_state"),
             "Box body",
             id = "mybox",
             collapsible = TRUE,
             closable = TRUE,
             plotOutput("plot")
           )
   
   ),
   
   tabItem(tabName = "bdP-4",
           h1("D. Nuevos botones", align = "center")
   ),
   
   tabItem(tabName = "bdP-5",
           h1("E. Nuevos elementos de las boxes.", align = "center")
   ),
    
    tabItem(tabName = "bdP-6",
            h1("F. Otros elementos extras.", align = "center")
    )
 
    )
  
)

