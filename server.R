shinyServer(function(input, output) {
  
  ## Build downloadHandler

  output$downloadData <- downloadHandler(
    filename <-  function(){input$selected_file_to_download},
    
    content <- function(file){
      file.copy(paste("file_to_download/", input$selected_file_to_download, sep=""),
                file)
    }
  )
  
  
})


