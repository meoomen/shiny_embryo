library(shinythemes)
library(ggplot2)
library(plotly)
library(data.table)
library(shiny)
library(shinyauthr)
library(bslib)

## ShinyApp for data Oomen&Rodriguez-Terrones et al. Expression of genes and TEs throughout Mammalian Preimplantation Development

ui<-shinyUI(fluidPage(
  titlePanel("Gene and TE expression in mammalian preimplantation development"),
            span("Database links:", style="color:black;font-size:20px"),br(),
            p("You can find our publication ", 
              a(href="https://www.cell.com/cell/home", 
                "here",target="https://www.cell.com/cell/home"),style="color:white",
              style="text-align:justify;color:black;background-color:white"),
            p("You can download our data on GEO using access number ", 
              a(href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE225056", 
                "GSE225056",target="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE225056"),style="color:white",
              style="text-align:justify;color:black;background-color:white"),
            p("You can find our scripts and methods on ", 
              a(href="https://github.com/meoomen/Smartseq5/tree/main", 
                "GitHub",target="https://github.com/meoomen/Smartseq5/tree/main"),style="color:white",
              style="text-align:justify;color:black;background-color:white"),
            p("You can browse the dfam TE annotation ", 
              a(href="https://www.dfam.org/browse", 
                "here",target="https://www.dfam.org/browse"),style="color:white",
              style="text-align:justify;color:black;background-color:white"),
            
            span("Contact Maria-Elena Torres-Padilla (torres-padilla@helmholtz-muenchen.de) for inquires regarding the paper", style ="color:black;font-size:16px"),
            br(),br(),
  sidebarLayout(
    sidebarPanel(width = 3,
                 selectizeInput("species", label = "Select the species - Plot 1",selected=1, choices=NULL),
                 selectizeInput("var", label = "Type a TE/gene name and press enter to plot",selected=1, choices=NULL),
                 selectizeInput("species2", label = "Select the species - Plot 2",selected=1, choices=NULL),
                 selectizeInput("var2", label = "Type a TE/gene name and press enter to plot",selected=1, choices=NULL),
                 selectizeInput("species3", label = "Select the species - Plot 3",selected=1, choices=NULL),
                 selectizeInput("var3", label = "Type a TE/gene name and press enter to plot",selected=1, choices=NULL),
                 selectizeInput("species4", label = "Select the species - Plot 4",selected=1, choices=NULL),
                 selectizeInput("var4", label = "Type a TE/gene name and press enter to plot",selected=1, choices=NULL),
                 selectizeInput("species5", label = "Select the species - Plot 5",selected=1, choices=NULL),
                 selectizeInput("var5", label = "Type a TE/gene name and press enter to plot",selected=1, choices=NULL)),
    mainPanel(layout_column_wrap(width = 1/3,
                                 layout_column_wrap(width = 1,heights_equal = "row",
                                   tabPanel(textOutput("selected_var"), plotOutput("expression_species")),
                                   downloadButton("downloadPlot", label = "Download pdf of this plot")),
                                 layout_column_wrap(width = 1,heights_equal = "row",
                                   tabPanel(textOutput("selected_var"), plotOutput("expression_species2")),
                                   downloadButton("downloadPlot2", label = "Download pdf of this plot")),
                                 layout_column_wrap(width = 1,heights_equal = "row",
                                   tabPanel(textOutput("selected_var"), plotOutput("expression_species3")),
                                   downloadButton("downloadPlot3", label = "Download pdf of this plot")),
                                 layout_column_wrap(width = 1,heights_equal = "row",
                                   tabPanel(textOutput("selected_var"), plotOutput("expression_species4")),
                                   downloadButton("downloadPlot4", label = "Download pdf of this plot")),
                                 layout_column_wrap(width = 1,heights_equal = "row",
                                   tabPanel(textOutput("selected_var"), plotOutput("expression_species5")),
                                   downloadButton("downloadPlot5", label = "Download pdf of this plot")),
                                 layout_column_wrap(width = 1,span("Download our data", style="text-align:center;color:black;font-size:18px"),
                                                    downloadButton("downloadData_mouse", label = "Mouse data table"),
                                                    downloadButton("downloadData_pig", label = "Pig data table"),
                                                    downloadButton("downloadData_cow", label = "Cow data table"),
                                                    downloadButton("downloadData_rabbit", label = "Rabbit data table"),
                                                    downloadButton("downloadData_rhesus", label = "Rhesus data table"),
                                                    span("Count tables were generated using TEcount using unique and multimapping 5' transcript information and rpm normalized (using gene and TE counts). For more information see our Methods and scripts on Github", style="text-align:center;color:black;font-size:14px"),
                                                   br()),

                  
                  
  )
))))


