library(shiny)




# Define UI
ui <- fixedPage(
  
  # Row 1: Title
  titlePanel("Clothes Protection"),
  
  # Row 2: Description
  fluidRow(
    column(width = 12,
           p("Any clohting labeled above UPF15 provides protection against UV rays.
             However, fabric doesn’t need to have a UPF rating to provide sun protection. Choosing fabric structure, colour and style can increase protection")
    )
  ),

  # Row 5: Description and Visualization 
  fluidRow(
    # Description of VIS 1 and VIS 2
    column(width = 4,
           fluidRow(
             column(width = 12, img(src = "hat.jpg", height = 140, width = 200)),
             column(width = 12, p("VIS 1 shows the relationship between height and DBH for trees in the City of Yarra using a scatter plot. The x-axis represents height, and the y-axis represents the DBH. This scatter plot indicates a positive relationship between these attributes.
VIS 2 displays the distribution of tree heights using a histogram. The x-axis represents height, and the y-axis displays the count of trees. This histogram indicates most tree heights are fall between 15m to 18m.
"))
           )),
    # Visualization 1
    column(width = 4,
           fluidRow(
             column(width = 12, img(src = "sleeve.jpg", height = 140, width = 200)),
             column(width = 12, p("VIS 1 shows the relationship between height and DBH for trees in the City of Yarra using a scatter plot. The x-axis represents height, and the y-axis represents the DBH. This scatter plot indicates a positive relationship between these attributes.
VIS 2 displays the distribution of tree heights using a histogram. The x-axis represents height, and the y-axis displays the count of trees. This histogram indicates most tree heights are fall between 15m to 18m.
"))
           )),
    # Visualization 2
    column(width = 4,
           fluidRow(
             column(width = 12, img(src = "sunglass.jpg", height = 140, width = 200)),
             column(width = 12, p("VIS 1 shows the relationship between height and DBH for trees in the City of Yarra using a scatter plot. The x-axis represents height, and the y-axis represents the DBH. This scatter plot indicates a positive relationship between these attributes.
VIS 2 displays the distribution of tree heights using a histogram. The x-axis represents height, and the y-axis displays the count of trees. This histogram indicates most tree heights are fall between 15m to 18m.
"))
           ))
  )
  
)

server <- function(input, output) {
  

}

# Run the app
shinyApp(ui, server)
