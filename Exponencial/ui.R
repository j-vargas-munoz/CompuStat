# Estadistica Computacional
# José de Jesús Vargas Muñoz
#

shinyUI(fluidPage(
  withMathJax(),
  titlePanel("$$\\text{Exponential } F^{-1}(U)$$"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("$$ F^{-1}(U) = \\frac{1}{ \\lambda } ln(\\frac{1}{1-u}) $$"),
      
      
      sliderInput("lambdaRange", 
                  label = "Lambda value:",
                  min = 0.01, max = 1, value = 0.5, step = 0.01),
      
      sliderInput("uniformRange", 
                  label = "Number of random values selected from the Uniform distribution:",
                  min = 1, max = 1000, value = 500, step = 1)
      
    ),
    
    mainPanel(
      plotOutput("histPlot"),
      dataTableOutput('xTable')
    )
  )
))