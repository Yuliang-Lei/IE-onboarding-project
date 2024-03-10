library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Sunscreen Usage"),
  
  mainPanel(
    # First section: Introduction
    h3("Introduction"),
    p("Utilizing sunscreen consistently has demonstrated efficacy in decreasing the likelihood of developing skin cancer, encompassing melanoma, which is deemed the most lethal form (Green et al., 2011). It stands as one of five essential measures for sun protection. The Global Solar UV Index, as devised by the World Health Organization, gauges UV intensity on a scale ranging from 0 (Low) to 11+ (Extreme) (Radiation: The Ultraviolet (UV) Index, 2022), with factors such as time of day, season, cloud cover, proximity to the equator, etc., influencing UV levels."),
    
    # Inserting picture
    tags$img(src = "UV_index.png", width = "100%"),
    
    # Paragraph after picture
    p("For optimal safeguarding, Cancer Council advocates the adoption of multiple sun protection measures, including protective clothing, a broad-brim hat and employing sunscreen or others method, particularly when the UV index surpasses 3 (Allinson et al., 2012). Despite UV levels falling below 3, prolonged exposure can still lead to skin damage, incrementally heightening the risk of skin cancer. So that people who are outdoors are advised to follow the sun protection recommendations inclusive of sunscreen application, even during periods of low UV index (UVR, 2013)."),
    
    # Second section: How to apply sunscreens
    h3("How to apply sunscreens"),
    
    # Sub-section: For application
    h4("For application"),
    tags$ol(
      # List items
      tags$li("Apply at least 1 teaspoon (approximately 5 ml) of sunscreen to each body area (arm, leg, back, etc.) (Therapeutic Goods Administration (TGA), 2023)."),
      tags$li("Reapply the same amount every 2 hours, particularly after swimming or drying off with a towel (Therapeutic Goods Administration (TGA), 2023)."),
      tags$li("More frequent reapplication is necessary during water activities or when perspiring heavily (Therapeutic Goods Administration (TGA), 2023)."),
      tags$li("Apply sunscreen 20 minutes before outdoor.")
    ),
    
    # Sub-section: Tips
    h4("Tips"),
    tags$ol(
      # List items
      tags$li("Option for a sunscreen with a sun protection factor (SPF) of 30 or higher (Fact Sheet: Sunscreen | National Cancer Prevention Policy UV Radiation, n.d.)."),
      tags$li("Choose a broad-spectrum sunscreen to safeguard against both UVA and UVB radiation, both of which contribute to cancer risk (Fact Sheet: Sunscreen | National Cancer Prevention Policy UV Radiation, n.d.)."),
      tags$li("Select a water-resistant formula to ensure prolonged protection, especially during activities involving water or sweat.")
    ),
    p("Cancer Council recommends SPF30 or higher. The SPF rating indicates the amount of UV that potentially reaches the skin if the sunscreen is applied according to directions. The instructions for proper use of a sunscreen are always written on the label and should be followed (Fact Sheet: Sunscreen | National Cancer Prevention Policy UV Radiation, n.d.). Sunscreen never can prevent 100% UV, so that sunscreen always suggests be used correctly and used with other protect methods (Fact Sheet: Sunscreen | National Cancer Prevention Policy UV Radiation, n.d.).")
    ,
    
    # Third section: Sunscreen use for Baby
    h3("Sunscreen use for Baby"),
    p(
      "For children aged three and older, consider using a pump pack or roll-on sunscreen for easier application. Additionally, provide a mirror so children can observe their application process (SunSmart, n.d.). Encourage children to apply a small dot of sunscreen to their cheeks, nose, and chin, avoiding the eye area, and gently massage it in (SunSmart, n.d.).",
      strong("All action needs to under the adult supervision.")    
    ),
    p(
      "The Australasian College of Dermatologists advises minimizing sunscreen to use for infants under 6 months of age due to their delicate skin (Therapeutic Goods Administration (TGA), 2023). Should sunscreen application be necessary for infants in this age group, it's imperative to seek guidance from a healthcare professional."
    ),
    
    # Fourth section: Adverse reactions
    h3("Adverse reactions"),
    p(
      "Unfavorable reactions to sunscreen are infrequent and can manifest either after a single application or through repeated use. Cancer Council advises conducting a usage test prior to widespread application of a new sunscreen (Fact Sheet: Sunscreen | National Cancer Prevention Policy UV Radiation, n.d.). This involves applying a small amount of the product to the inner forearm for several days to assess for any adverse skin reactions before using it on other body areas. Although a usage test may reveal sensitivity to a sunscreen component, it may not always discern an allergy, which could emerge after repeated product use (Fact Sheet: Sunscreen | National Cancer Prevention Policy UV Radiation, n.d.)."
    ),
    
    # Final section: References
    h3("References"),
    tags$ol(
      # List items with hyperlinks
      tags$li(
        "Green, A. C., Williams, G. M., Logan, V., & Strutton, G. M. (2011). Reduced melanoma after regular sunscreen use: randomized trial follow-up. Journal of clinical oncology : official journal of the American Society of Clinical Oncology, 29(3), 257–263.",
        tags$a("https://doi.org/10.1200/JCO.2010.28.7078", href = "https://doi.org/10.1200/JCO.2010.28.7078")
      ),
      tags$li(
        "Radiation: The ultraviolet (UV) index. (2022, June 21). ",
        tags$a("https://www.who.int/news-room/questions-and-answers/item/radiation-the-ultraviolet-%28uv%29-index", href = "https://www.who.int/news-room/questions-and-answers/item/radiation-the-ultraviolet-%28uv%29-index")
      ),
      tags$li(
        "Allinson, S. L., Asmuß, M., Baldermann, C., Bentzen, J., Buller, D. B., Gerber, N., Green, A. C., Greinert, R., Kimlin, M. G., Kunrath, J., Matthes, R., Pölzl-Viol, C., Rehfuess, E., Rossmann, C., Schüz, N., Sinclair, C., Van Deventer, E., Webb, A. R., Weiß, W., & Ziegelberger, G. (2012). Validity and use of the UV index. Health Physics, 103(3), 301–306.",
        tags$a("https://doi.org/10.1097/hp0b013e31825b581e", href = "https://doi.org/10.1097/hp0b013e31825b581e")
      ),
      tags$li(
        "Safe Work Australia. Guide on exposure to solar ultraviolet radiation (UVR). Canberra: SWA; 2013 Available from:",
        tags$a("https://www.safeworkaustralia.gov.au/system/files/documents/1702/guide-exposure-solar-ultraviolet-radiation.pdf", href = "https://www.safeworkaustralia.gov.au/system/files/documents/1702/guide-exposure-solar-ultraviolet-radiation.pdf")
      ),
      tags$li(
        "Therapeutic Goods Administration (TGA). (2023, November 17). Safe use of sunscreens.",
        tags$a("https://www.tga.gov.au/products/sunscreens/safe-use-sunscreens", href = "https://www.tga.gov.au/products/sunscreens/safe-use-sunscreens")
      ),
      tags$li(
        "Fact sheet: Sunscreen | National Cancer Prevention Policy UV radiation. (n.d.). Cancer Council.",
        tags$a("https://www.cancer.org.au/about-us/policy-and-advocacy/prevention-policy/national-cancer-prevention-policy/uv/related-resources/sunscreen#adverse", href = "https://www.cancer.org.au/about-us/policy-and-advocacy/prevention-policy/national-cancer-prevention-policy/uv/related-resources/sunscreen#adverse")
      ),
      tags$li(
        "SunSmart. (n.d.). Sunscreen tips.",
        tags$a("https://www.sunsmart.com.au/downloads/resources/posters/applying-sunscreen-early-childhood-services.pdf", href = "https://www.sunsmart.com.au/downloads/resources/posters/applying-sunscreen-early-childhood-services.pdf")
      )
    )
  )
))
