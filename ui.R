library(shiny)

# Define UI for the application 
shinyUI(fluidPage(
  # Application title
  titlePanel("Countries in a continent"),
  
  # Sidebar with controls to select the continent code to display
  sidebarLayout(
    sidebarPanel(
      selectInput("dataIndex", "Select the continent code:", 
                  c("AS","EU","AF","NA","SA","OC"))),
    
      # Show the coutries list
    mainPanel(
      h3(textOutput("dataIndex")),
      dataTableOutput("countryContinents")
    )
  )
))