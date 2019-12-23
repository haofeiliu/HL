# Rely on the 'ridership' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)
library(shiny)


# Use a fluid Bootstrap layout
ui<-fluidPage(    
  
  # Give the page a title
  titlePanel("WMATA MetroRail 2040 Weekday 8:00-9:00 Hourly Ridership"),

  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("Routes", "Route:", c("Red Line Eastbound",
                                        "Red Line Westbound",
                                        "Blue Line Eastbound",
                                        "Blue Line Westbound",
                                        "Green Line Southbound",
                                        "Green Line Northbound",
                                        "Yellow Line Southbound",
                                        "Yellow Line Northbound",
                                        "Orange Line Westbound",
                                        "Orange Line Eastbound",
                                        "Silver Line Westbound",
                                        "Silver Line Eastbound")),
                  #choices=ridership$Routes),
      hr(),
      helpText("Line Load Model Output for WMATA 2040"),
      titlePanel(title=div(img(height = 250, width = 260,src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/WMATA_system_map.svg/927px-WMATA_system_map.svg.png"))),
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("boardingPlot")  
    )
    
  )
)
