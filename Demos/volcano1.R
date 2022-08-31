library(shiny)
library(plotly)

vvTop <- volcano

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Shave the Volcano!"),
   
   helpText("Adjust the maximum altitude to shave down the peak of Aukland's Maunga Whau volcano to create the ideal seating area for restful meditation."),
   
   # Sidebar with a slider input for the maximum altitude of the volcano 
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

# Define server logic required to draw a histogram
server <- function(input, output) {
   
  # generate new data from maximum altitude based on input$altitude from ui.R
  
    vvTop <- vvTop[vvTop > input$altitude] <- input$altitude 
      
    
  
  shaved <- plot_ly(z = ~vvTop, type = "surface")
  output$plot <- renderPlotly({shaved})
  
   }


# Run the application 
shinyApp(ui, server)

