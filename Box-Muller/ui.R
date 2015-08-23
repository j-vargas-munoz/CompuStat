# Estadistica Computacional
# José de Jesús Vargas Muñoz
#

shinyUI(fluidPage(
  withMathJax(),
  titlePanel("Box-Muller Method for Random Number Generation"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("$$ R = \\sqrt[2]{-2ln(U_1)} $$"),
      helpText("$$ \\theta = 2 \\Pi U_2$$"),
      
      helpText("$$ X = R cos(\\theta)$$"),
      helpText("$$ Y = R sin(\\theta)$$"),
      
      
      sliderInput("uniformRange", 
                  label = textOutput("text1"),
                  min = 1, max = 1000, value = 500, step = 1)
      
    ),
    
    mainPanel(
      
      tabsetPanel(
        tabPanel("Histograms", plotOutput("globalPlot")), 
        tabPanel("Table", dataTableOutput('table'))
      )
      
    )
  )
))