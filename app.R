library(shiny)
library(plotly)
Top <- volcano

# UI - User interface for the Volcano-Shaver app
ui <- fluidPage(
  titlePanel("Shave the Volcano!"),
  helpText("Adjust the maximum altitude to shave down the peak of Aukland's Maunga Whau volcano to create the ideal seating area for restful meditation. Don't worry, the changes aren't permanent!"),
  
  # Show the slider to adjust the maximum altitude in the side panel.  
  sidebarPanel(
    sliderInput("altitude", "Maximum Altitude",
                min = 100, 
                max = 200, 
                value = 200), 
    img(src = "volcano.jpg", height = 140, width = 140)
  ), 
  
  # Print the actual figure in the main panel. 
  mainPanel(
    plotlyOutput("plot")
  )
)

# SERVER - generate the new dataset using the inputs from the slideer in the UI
server <- function(input, output) {
  output$plot <- renderPlotly({
    Top[Top > input$altitude] <- input$altitude
    plot_ly(z = ~Top, type = "surface")
  })
}

# Run the application
shinyApp(ui, server)