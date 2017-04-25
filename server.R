library(shiny)
shinyServer(function(input, output) {
  diagnoza <- c("a skeleton!", "a model!", "a fatass!", "a walking cardiovascular disaster!")
       quo <- reactive({
      hei <- input$tall
      wei <- input$fat
      wei/(hei/100)^2
    })
  output$bmi <- renderText({
    quo()
    })
  output$insult <- renderText({
    indeks <- ifelse((quo()-30 > 0), 4, ifelse((quo()-25 > 0), 3, ifelse((quo()-18.5 > 0), 2, 1)))
    diagnoza[indeks]
  })
})
