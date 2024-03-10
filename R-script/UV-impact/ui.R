library(shiny)
library(ggplot2)


# Define UI
fluidPage(
  titlePanel("Trend of skin cancer incidents in Australia ", windowTitle = "Skin Cancer Trend"),
  fluidRow(
    column(12, align = "center",
           sliderInput("year_range", "Select Year Range:",
                       min = 2000, max = 2023, value = c(2000, 2023),
                       step = 1)
    )
  ),
  fluidRow(
    column(12,
           plotOutput("count_plot")
    )
  ),
  titlePanel("Trend Description"),
  fluidRow(
    column(12,
           textOutput("Grap_description")
    )
  ),
  titlePanel("Tips/Tricks"),
  fluidRow(
    column(width = 12, p("To prevent you and your childrends to from UV exprosure, please follow the following tips/tricks
")),
    column(width = 12, p(HTML("<b>1. Wear protective clothing</b>: When in the sun, wear long-sleeved shirts, pants, and hats that provide shade for your face and neck.
"))),
    column(width = 12, p(HTML("<b>2. Use sunscreen</b>: Generously applying sunscreen with at least SPF 30 can help protect your skin from UV rays. Reapply every two hours, especially if you've been swimming or sweating.
"))),
    column(width = 12, p(HTML("<b>3. Seek shade</b>: Try to find shaded areas where you can take a break from the sun.
"))),
    column(width = 12, p(HTML("<b>4. Avoid peak sun hours</b>: The sun's rays are strongest between 10 a.m. and 4 p.m., so try to limit your time outdoors during those hours if possible.
"))),
  ),
  titlePanel("References"),
  fluidRow(
    column(width = 12, p("1. Welcome to Community Healthcaring. (2023, June 12). Health Caring KW. https://healthcaringkw.org/blog/Sun-Safety-Tips-and-Tricks-for-a-Fun-Day-in-the-Sun.htm
")),
    ),
)