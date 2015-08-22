library(shiny)
# Load the couties dataset
countries <- read.csv("Countries.csv", na.strings=c(""))


shinyServer(
  function(input, output) {
    
    # display the user choice
    output$dataIndex <- renderText({  
      paste("You have selected:",input$dataIndex)
    })  
    # return the data subset related to the user choice
    output$countryContinents <- renderDataTable({  
     countries[countries$ContinentCode == input$dataIndex , ] 
     })  
})
