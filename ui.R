shinyUI(pageWithSidebar(
  
  headerPanel("The Sochi 2014 Winter Olympics Medal Standings in R and RShiny"),
  
  sidebarPanel(
    tags$head(
      tags$style(type="text/css", "label.radio { display: inline-block; }", ".radio input[type=\"radio\"] { float: none; }"),
      tags$style(type="text/css", "select { max-width: 200px; }"),
      tags$style(type="text/css", "textarea { max-width: 185px; }"),
      tags$style(type="text/css", ".jslider { max-width: 200px; }"),
      tags$style(type='text/css', ".well { padding: 12px; margin-bottom: 5px; max-width: 280px; }"),
      tags$style(type='text/css', ".span4 { max-width: 280px; }")
    ),
    
    helpText("The data for this plot comes from http://www.sochi2014.com/en/medal-standings."),
    selectInput("year", "Year:", choices = seq(1924, 2012, by=4))
  ),
  
  mainPanel( 
    plotOutput("distPlot"),
    plotOutput("distYearPlot")
  )
  
))