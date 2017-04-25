
library(shiny)


shinyUI(fluidPage(theme = "bootstrap.css",
  
  # Application title
  titlePanel("Body Mass Index report"),
  
  # 
  sidebarLayout(
    sidebarPanel(
      h4("Enter height in cm."),
       numericInput("tall", label = "Height in cm", value = NA, min = 55, max = 272),
      h4("Enter weight in kg."),
       numericInput("fat", label = "Weight in kg", value = NA),
      submitButton("Submit!"), br(), br(),
      h4("Instructions:"),
      h6("Body Mass Index is an indicator of how healthy is a person's weight given their height. 
         To check your BMI, just enter your height and weight and press the Submit! button. 
         And never mind the insults/compliments - they're for entertainment purposes only.")
    ),
    
    # 
    mainPanel(
      img(src="bmimage.png"),
      h2("Your BMI (body mass index) is:"),
      h2(textOutput("bmi")),
      h3("You are "),
      h3(textOutput("insult"))
    )
  )
))