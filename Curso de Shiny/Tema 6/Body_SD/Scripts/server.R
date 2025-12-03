###########
#  Server #
###########

server <- function(input, output) {
  
  ###############################
  #  Tabla de ejemplo en Shiny  #
  ###############################
  
  output$tabla.ejemplo1 <- renderReactable({ 
    
    Tabla <- iris
    
    reactable(Tabla) 
    
  })
  
  output$tabla.ejemplo2 <- renderReactable({ 
    
    Tabla <- iris
    
    reactable(Tabla) 
    
  })
  
  output$tabla.ejemplo3 <- renderReactable({ 
    
    Tabla <- iris
    
    reactable(Tabla) 
    
  })
  
  #################################
  #  Gráfico de ejemplo en Shiny  #
  #################################
  
  output$grafi1 <- renderHighchart({
    
    data("mtcars")
    df <- mtcars
    
    df$cyl <- as.factor(df$cyl)
    hc <- df %>% 
      hchart('scatter', hcaes(x = wt, y = mpg, group = cyl)) %>%
      hc_colors(c("#00AFBB", "#E7B800", "#FC4E07"))
    
    hc
  })
  
  output$grafi2 <- renderHighchart({
    
    data("mtcars")
    df <- mtcars
    
    df$cyl <- as.factor(df$cyl)
    hc <- df %>% 
      hchart('scatter', hcaes(x = wt, y = mpg, group = cyl)) %>%
      hc_colors(c("#00AFBB", "#E7B800", "#FC4E07"))
    
    hc
  })
  
  output$grafi3 <- renderHighchart({
    
    data("mtcars")
    df <- mtcars
    
    df$cyl <- as.factor(df$cyl)
    hc <- df %>% 
      hchart('scatter', hcaes(x = wt, y = mpg, group = cyl)) %>%
      hc_colors(c("#00AFBB", "#E7B800", "#FC4E07"))
    
    hc
  })
  
  output$grafi4 <- renderHighchart({
    
    data("mtcars")
    df <- mtcars
    
    df$cyl <- as.factor(df$cyl)
    hc <- df %>% 
      hchart('scatter', hcaes(x = wt, y = mpg, group = cyl)) %>%
      hc_colors(c("#00AFBB", "#E7B800", "#FC4E07"))
    
    hc
  })
  
  
  ### Info Box
  
  
  output$progressBox <- renderInfoBox({
    infoBox(
      "Progress", paste0(25 + input$count, "%"), icon = icon("list"),
      color = "purple"
    )
  })
  output$approvalBox <- renderInfoBox({
    infoBox(
      "Approval", "80%", icon = icon("thumbs-up", lib = "glyphicon"),
      color = "yellow"
    )
  })
  
  # Same as above, but with fill=TRUE
  output$progressBox2 <- renderInfoBox({
    infoBox(
      "Progress", paste0(25 + input$count, "%"), icon = icon("list"),
      color = "purple", fill = TRUE
    )
  })
  output$approvalBox2 <- renderInfoBox({
    infoBox(
      "Approval", "80%", icon = icon("thumbs-up", lib = "glyphicon"),
      color = "yellow", fill = TRUE
    )
  })
  
  
  ### Value BOx
  
  output$progressBox23 <- renderValueBox({
    valueBox(
      paste0(25 + input$count, "%"), "Progress", icon = icon("list"),
      color = "purple"
    )
  })
  
  output$approvalBox23 <- renderValueBox({
    valueBox(
      "80%", "Approval", icon = icon("thumbs-up", lib = "glyphicon"),
      color = "yellow"
    )
  })
  
  
}
