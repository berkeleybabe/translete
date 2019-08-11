# Load the ggplot2 package which provides
# the 'translete' dataset.
library(ggplot2)

fluidPage(
  titlePanel("Basic DataTable"),

  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(4,
        selectInput("method",
                    "Transportation Method:",
                    c("All",
                      unique(as.character(translete$method))))
    ),
    column(4,
        selectInput("time",
                    "Travel Time:",
                    c("All",
                      unique(as.character(translete$time))))
    ),
    column(4,
        selectInput("weather",
                    "Weather:",
                    c("All",
                      unique(as.character(translete$weather))))
    )
  ),
  # Create a new row for the table.
  DT::dataTableOutput("table")
)