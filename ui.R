library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Self Learning Rock Paper Scissors Demonstration"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      strong("Please select Rock, Paper, Scissors"),
      actionButton("rockBtn","Rock"),
      actionButton("paperBtn","Paper"),
      actionButton("scissorsBtn","Scissors")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      fluidRow(
        textOutput("statusTextOutput"),
        plotOutput("weightPlot")
      ),
      fluidRow(
        plotOutput("scorePlot"),
        textOutput("statusTextOutput2")
      )
    )
  )
))
