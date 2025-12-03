###########
#  Server #
###########

server <- function(input, output) {
  
  ###############################
  #  Tabla de ejemplo en Shiny  #
  ###############################
  
  output$tabla.ejemplo <- renderReactable({ 
    
    Tabla <- iris
    
    reactable(Tabla) 
    
  })
  
  
  #################################
  #  Gráfico de ejemplo en Shiny  #
  #################################
  
  output$grafi <- renderHighchart({
    
    data("mtcars")
    df <- mtcars
    
    df$cyl <- as.factor(df$cyl)
    hc <- df %>% 
      hchart('scatter', hcaes(x = wt, y = mpg, group = cyl)) %>%
      hc_colors(c("#00AFBB", "#E7B800", "#FC4E07"))
    
    hc
  })
  
  
  #################################
  #             Los boxs          #
  #################################
  
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
  
  output$progressBox <- renderValueBox({
    valueBox(
      paste0(25 + input$count, "%"), "Progress", icon = icon("list"),
      color = "purple"
    )
  })
  
  output$approvalBox <- renderValueBox({
    valueBox(
      "80%", "Approval", icon = icon("thumbs-up", lib = "glyphicon"),
      color = "yellow"
    )
  })
  
  output$plot <- renderPlot({
    req(!input$mybox$collapsed)
    plot(rnorm(200))
  })
  
  output$box_state <- renderText({
    state <- if (input$mybox$collapsed) "collapsed" else "uncollapsed"
    paste("My box is", state)
  })
  
  observeEvent(input$toggle_box, {
    updateBox("mybox", action = "toggle")
  })
  
  observeEvent(input$remove_box, {
    updateBox("mybox", action = "remove")
  })
  
  observeEvent(input$restore_box, {
    updateBox("mybox", action = "restore")
  })
  
  observeEvent(input$update_box, {
    updateBox(
      "mybox", 
      action = "update", 
      options = list(
        title = h2("New title", dashboardLabel(1, status = "primary")),
        status = "danger", 
        solidHeader = TRUE,
        width = 4
      )
    )
  })
  
  observeEvent(input$mybox$visible, {
    collapsed <- if (input$mybox$collapsed) "collapsed" else "uncollapsed"
    visible <- if (input$mybox$visible) "visible" else "hidden"
    message <- paste("My box is", collapsed, "and", visible)
    showNotification(message, type = "warning", duration = 1)
  })
  
 
  
}
