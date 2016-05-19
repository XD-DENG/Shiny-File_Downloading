shinyUI(fluidPage(
  
  selectizeInput("selected_file_to_download",
                 dir("file_to_download/"),
                 label = "Select file to download",
                 selected = NULL,
                 multiple = FALSE
                 ),

  downloadLink('downloadData', 'Download')

))