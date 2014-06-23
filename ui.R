library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Coursera Data Product: Parameters of Black Cherry Trees"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      helpText("This simple application allowes you to see the relationship between girth, height, and volume of black cherry trees."),
      helpText("Use the buttons below to select the X- and Y- axes of the graph."),
      selectInput("x", "Select X axis:",
                  choices = c("Girth", "Height", "Volume"), selected = "Girth"),
      selectInput("y", "Select Y axis:",
                  choices = c("Girth", "Height", "Volume"), selected = "Height")      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))