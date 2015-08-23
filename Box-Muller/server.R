# Estadistica Computacional
# José de Jesús Vargas Muñoz
#

shinyServer(
  function(input, output) {
    
    output$u1Plot <- renderPlot({
      uValues <- input$uniformRange
      
      u1 <<- runif(uValues)
      
      # draw the histogram with the specified number of bins
      hist(u1, breaks = 100, col = 'darkgray', border = 'white')
    })
    
    output$u2Plot <- renderPlot({
      uValues <- input$uniformRange
      
      u2 <<- runif(uValues)
      
      # draw the histogram with the specified number of bins
      hist(u2, breaks = 100, col = 'darkgray', border = 'white')
    })
    
    output$xPlot <- renderPlot({
      
      r <- sqrt(-2*log(u1))
      theta <- 2*pi*u2
      
      x <<- r*cos(theta)
      
      # draw the histogram with the specified number of bins
      hist(x, breaks = 100, col = 'darkgray', border = 'white')
    })
    
    output$yPlot <- renderPlot({
      r <- sqrt(-2*log(u1))
      theta <- 2*pi*u2
      
      y <<- r*sin(theta)
      
      # draw the histogram with the specified number of bins
      hist(y, breaks = 100, col = 'darkgray', border = 'white')
    })
    
    output$globalPlot <- renderPlot({
      uValues <- input$uniformRange
      
      u1 <<- runif(uValues)
      u2 <<- runif(uValues)
      
      r <- sqrt(-2*log(u1))
      theta <- 2*pi*u2
      
      x <<- r*cos(theta)
      y <<- r*sin(theta)
      
      par(mfrow=c(2,2))
      hist(u1, breaks = 100, col = 'darkgray', border = 'white')
      hist(x, breaks = 100, col = 'darkgray', border = 'white')
      hist(u2, breaks = 100, col = 'darkgray', border = 'white')
      hist(y, breaks = 100, col = 'darkgray', border = 'white')
    })
    
    output$table <- renderDataTable({
      cbind(u1, u2, x, y)
    })
  }
)