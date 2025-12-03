###########
#  Server #
###########

server <- function(input, output) {
  
  #################################################
  #  Tabla y  gráfico de ejemplo  del  Shiny      #
  #################################################
  
  output$tabla.ejemplo1 <- renderReactable({ 
    
    Tabla <- iris
    
    reactable(Tabla) 
    
  })
  
  output$grafi1 <- renderHighchart({
    
    data("mtcars")
    df <- mtcars
    
    df$cyl <- as.factor(df$cyl)
    hc <- df %>% 
      hchart('scatter', hcaes(x = wt, y = mpg, group = cyl)) %>%
      hc_colors(c("#00AFBB", "#E7B800", "#FC4E07"))
    
    hc
  })
  
  ####################################################
  #      Mismmo pedido, pero bajo otra orden         #
  ####################################################
  
  output$tabla.ejemplo2 <- renderReactable({ 
    
    Tabla <- iris
    
    reactable(Tabla) 
    
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
  
  output$tabla.ejemplo3 <- renderReactable({ 
    
    Tabla <- iris
    
    reactable(Tabla) 
    
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

  ####################################################
  #              Las tablas en el Shiny              #
  ####################################################

  #### Tabla clásica 
  
  output$tabla.1 <- renderTable({
    
    
    mtcars
    
  })
    

  #### Tabla DT
  
  output$tabla.2 <- renderDT({
    
    
    iris
    
  })
  
  #### Tabla gt

  output$tabla.3 <- render_gt({
    
    
    mtcars
    
  })
  
  #### Tabla reactable
  
  output$tabla.4 <- renderReactable({
    
    
    reactable(iris)
    
  })
  
  ######################################################
  #              Los gráficos en el Shiny              #
  ######################################################
  
  #### Gráfico clásico
  
  
  output$grafico.1 <- renderPlot({
    
    plot(iris$Sepal.Length,iris$Sepal.Width)
   
   
    
  })
  
  #### Gráfico con ggplot2
  
  output$grafico.2 <- renderPlot({
    
    ggplot(mpg, aes(displ, hwy, colour = class)) + 
                            geom_point()
    
    
    
  })
  
  #### Gráfico con plotly
  
  output$grafico.3 <- renderPlotly({
    

    USPersonalExpenditure <- data.frame("Categorie"=rownames(USPersonalExpenditure), USPersonalExpenditure)
    data <- USPersonalExpenditure[,c('Categorie', 'X1960')]
    
    fig <- plot_ly(data, labels = ~Categorie, values = ~X1960, type = 'pie')
    fig <- fig %>% layout(title = 'United States Personal Expenditures by Categories in 1960',
                          xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                          yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
    
    fig
    
  })
  
  #### Gráfico con dygraph
  
  output$grafico.4 <- renderDygraph({
    
    library(dygraphs)
    lungDeaths <- cbind(mdeaths, fdeaths)
    dygraph(lungDeaths)
    

  })
  

  
  
}
