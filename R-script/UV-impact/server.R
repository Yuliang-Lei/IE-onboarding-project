library(shiny)
library(ggplot2)


# Define server logic
function(input, output) {
  # Read data
  data <- read.csv("skin_cancer_incidents.csv")
  
  # Filter data based on slider input
  filtered_data <- reactive({
    data[data$Year >= input$year_range[1] & data$Year <= input$year_range[2], ]
  })
  
  output$count_plot <- renderPlot({
    ggplot(filtered_data(), aes(x = Year, y = Count)) +
      geom_line(color = "red") +  # Set line color to red
      theme(plot.background = element_rect(fill = "white")) +  # Set plot background to grey
      labs(x = "Year", y = "Skin cancer Incidents", title = "Skin cancer Incidents Over Years")
  })
  
  output$Grap_description <- renderText({
    "The graph illustrates a consistent upward trend in the incidence of skin cancer from 2000 to 2023.

In 2000, the number of reported skin cancer incidents stood at approximately 500. Subsequently, this figure steadily rose to almost 1500 by 2023, representing nearly a threefold increase compared to 2000.

This trend underscores the significant impact of UV exposure in Australia on its population. Thus, it is imperative that we raise awareness among parents regarding this issue."
  })
  
  output$tip <- renderText({
    bold_text <- "<b>The graph illustrates a consistent upward trend in the incidence of skin cancer from 2000 to 2023.</b>"
    normal_text <- "In 2000, the number of reported skin cancer incidents stood at approximately 500. Subsequently, this figure steadily rose to almost 1500 by 2023, representing nearly a threefold increase compared to 2000.

This trend underscores the significant impact of UV exposure in Australia on its population. Thus, it is imperative that we raise awareness among parents regarding this issue."
    
    # Concatenating bold and normal text
    paste(bold_text, normal_text)
  })
}