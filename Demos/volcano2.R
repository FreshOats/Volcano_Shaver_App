library(shiny)
library(plotly)

vvTop <- volcano

# UI
ui <- fluidPage(
   
   # Application title
   titlePanel("Shave the Volcano!"),
   
   helpText("Adjust the maximum altitude to shave down the peak of Aukland's Maunga Whau volcano to create the ideal seating area for restful meditation."),
   
     sidebarLayout(
      sidebarPanel(
         sliderInput("altitude",
                     "Maximum Altitude",
                     min = 100,
                     max = 200,
                     value = 200)
      ),
      
      # Show a surface plot of the volcano after slicing
      mainPanel(
         plotlyOutput("plot")
      )
   )
)

# SERVER
server <- function(input, output) {
   
  # generate new data from maximum altitude based on input$altitude from ui.R
   
  
  
  output$plot <- renderPlotly({
    vvTop[vvTop > input$altitude] <- input$altitude
    plot_ly(z = ~vvTop, type = "surface")
  })
  
   }


# Run the application 
shinyApp(ui, server)

