# Estadistica Computacional
# José de Jesús Vargas Muñoz
#

shinyServer(
  function(input, output) {
    
    
    output$histPlot <- renderPlot({
      lambda <- input$lambdaRange
      uValues <- input$uniformRange
      
      u <<- runif(uValues)
      x <<- (1/lambda) * log (1/(1 - u))
      
      # draw the histogram with the specified number of bins
      hist(x, breaks = 100, col = 'darkgray', border = 'white')
    })
    
    output$xTable <- renderDataTable({
      cbind(u, x)
    })
  }
)