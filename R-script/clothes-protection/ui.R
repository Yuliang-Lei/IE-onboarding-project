library(shiny)

# Define UI
ui <- fixedPage(# Row 1: Title
  titlePanel(h1("Clothes Protection")),
  mainPanel(
    # Row 2: UV index
    fixedRow(column(width = 12,
                    h4(strong(
                      "UV Index"
                    )),
                    h4(
                      HTML(
                        "<ul><li>UV Index 1-2: Safe and No Protection Required.
</li><li>UV Index 3+: Clothes Protection Required.
</li></ul>
"
                      )
                    ))),
    # Row 2: UPF
    fixedRow(column(
      width = 12,
      h4(strong("UPF")),
      h5(
        "Any clohting labeled above UPF15 provides protection against UV rays. However, fabric doesn’t need to have a UPF rating to provide sun protection. Choosing fabric structure, colour and style can increase protection.
"
      )
    )),
    
    # Row 3: Fabric, colour and style
    fixedRow(
      # Fabric
      column(width = 4,
             fixedRow(
               column(width = 12, h4(strong("Fabric"))),
               column(
                 width = 12,
                 HTML(
                   "<ul><li>Tight and dense fabric structure has closer fibers, resulting in less UV rays reaching the skin.</li><li> Natural fabrics such as linen and cotton are preferable as they are tight structures, lightweight and keep you cool.
</li><li> Strechable fabric may have less sun protection
</li></ul>"
                 )
               )
             )),
      # Colour
      column(width = 4,
             fixedRow(
               column(width = 12, h4(strong("Colour"))),
               column(
                 width = 12,
                 HTML(
                   "<ul><li> Dark such as black, navy and maroon</li><li> Absorb UV radiation, prevent it to penetrating into the fabric
</li><li>Advoid light colour (white, sky blue and light green)
</li></ul>"
                 )
               )
             )),
      # Style
      column(width = 4,
             fixedRow(
               column(width = 12, h4(strong("Style"))),
               column(
                 width = 12,
                 HTML(
                   "<ul><li> Loose clothing rather than tight and strechable
</li><li> Cover your neck, shoulder, chest and back
</li><li> Wide-brimmed hat rather than baseball cap
</li><li> UV-filtering sunglasses
</li></ul>"
                 )
               )
             ))
    ),
    # Row 4: Quick tips
    fixedRow(
      h3("Quick Tips!"),
      # Cloth
      column(width = 4,
             fixedRow(
               column(
                 width = 12,
                 img(
                   src = "https://static.vecteezy.com/system/resources/thumbnails/008/163/886/small/long-sleeve-t-shirt-technical-fashion-flat-sketch-illustration-black-color-template-for-men-s-and-boys-free-vector.jpg",
                   height = 140,
                   width = 200
                 )
               ),
               column(width = 12, p("Dark colour and long sleeve"))
               
             )),
      # Hat
      column(width = 4,
             fixedRow(
               column(
                 width = 12,
                 img(
                   src = "https://static.vecteezy.com/system/resources/previews/007/096/430/original/straw-hat-icon-beach-accessory-decorated-with-ribbon-bow-female-sunhat-for-tanning-sun-protection-farm-work-hand-drawn-illustration-isolated-on-white-background-flat-cartoon-style-vector.jpg",
                   height = 140,
                   width = 200
                 )
               ),
               column(width = 12, p(
                 "Wide hat can cover your neck, ear and shoulder
"
               ))
             )),
      # Sunglass
      column(width = 4,
             fixedRow(
               column(
                 width = 12,
                 
                 img(
                   src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjwKTne8jaiSVJWgNEl80OQFInQWQiRjFft4fvhTi0ydVue9RWvFkpjSM9qdTbpPmp7es&usqp=CAU",
                   height = 140,
                   width = 200
                 )
               ),
               column(width = 12, p("Protect your eyes"))
             ))
      
      
    )
  ))

