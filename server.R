# Rely on the 'ridership' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define a server for the Shiny app
server<-function(input, output){
  
  # Fill in the spot we created for a plot
  output$boardingPlot <- renderPlot({
    
    if(substr(input$Routes,1,3)=="Red"){
    # Render a barplot
    barplot(ridership[which(ridership$Routes==input$Routes),c("Board")], 
            names.arg=ridership[which(ridership$Routes==input$Routes),c("StopName")],
            main=input$Routes,
            ylab="Number of Boarding",
            xlab="Stop Name",
            ylim=c(0,4000),
            col="#FF3300")}
    if(substr(input$Routes,1,3)=="Yel"){
      # Render a barplot
      barplot(ridership[which(ridership$Routes==input$Routes),c("Board")], 
              names.arg=ridership[which(ridership$Routes==input$Routes),c("StopName")],
              main=input$Routes,
              ylab="Number of Boarding",
              xlab="Stop Name",
              ylim=c(0,4000),
              col="#FFFF00")}
    if(substr(input$Routes,1,3)=="Blu"){
      # Render a barplot
      barplot(ridership[which(ridership$Routes==input$Routes),c("Board")], 
              names.arg=ridership[which(ridership$Routes==input$Routes),c("StopName")],
              main=input$Routes,
              ylab="Number of Boarding",
              xlab="Stop Name",
              ylim=c(0,4000),
              col="#3399FF")}
    if(substr(input$Routes,1,3)=="Sil"){
      # Render a barplot
      barplot(ridership[which(ridership$Routes==input$Routes),c("Board")], 
              names.arg=ridership[which(ridership$Routes==input$Routes),c("StopName")],
              main=input$Routes,
              ylab="Number of Boarding",
              xlab="Stop Name",
              ylim=c(0,4000),
              col="#CCCCCC")}
    if(substr(input$Routes,1,3)=="Ora"){
      # Render a barplot
      barplot(ridership[which(ridership$Routes==input$Routes),c("Board")], 
              names.arg=ridership[which(ridership$Routes==input$Routes),c("StopName")],
              main=input$Routes,
              ylab="Number of Boarding",
              xlab="Stop Name",
              ylim=c(0,4000),
              col="#FF9900")}
    if(substr(input$Routes,1,3)=="Gre"){
      # Render a barplot
      barplot(ridership[which(ridership$Routes==input$Routes),c("Board")], 
              names.arg=ridership[which(ridership$Routes==input$Routes),c("StopName")],
              main=input$Routes,
              ylab="Number of Boarding",
              xlab="Stop Name",
              ylim=c(0,4000),
              col="#339900")}
  })
}