library(shiny)

# return the data to plot from trees dataset, based on the selected axis
getData <- function(name) {
  switch(name,
         Girth = trees$Girth, 
         Height = trees$Height, 
         Volume = trees$Volume)
}

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    x_dat <- getData(input$x)
    y_dat <- getData(input$y)
    plot(x_dat, y_dat, xlab = input$x, ylab = input$y, main = "Black Cherry Trees")
  })
  
})