library(shiny)


countryList <- c( "Russia", "USA", "Netherlands", "Germany", "China")

shinyUI(pageWithSidebar(

  headerPanel("Sochi Olympic Medals"),
  
  sidebarPanel(
    selectInput("country", "Country", countryList)
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Medals Plot",
               h5("Current Medals"),
               plotOutput("medals.plot")
      ),
      tabPanel("Medals Table",
               h5("Current Medals"),
               tableOutput("medals.Table")
      ),
      id="tab"
    )
  )
  
))

