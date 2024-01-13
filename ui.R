library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Mon Dashboard"),
  dashboardSidebar(
    # Partie Filtre
  ),
  dashboardBody(
    tabsetPanel(
      tabPanel("Menu",
               fluidRow(
                 column(1), # Colonne vide pour le padding
                 column(3,
                        box(title = "Note moyenne ",
                            style = "height: 70px;",
                            textOutput("Moyenne_note")
                        )
                 ),
                 column(1), # Colonne vide pour l'espace
                 column(3,
                        box(title = "Nombre total d'avis",
                            style = "height: 70px;",
                            textOutput("nb_avis")
                        )
                 ),
                 column(1), # Colonne vide pour l'espace
                 column(3,
                        box(title = HTML("Ratio de notes 5 <i class='fa fa-star'></i>"),
                            style = "height: 70px;",
                            textOutput("ratio_5")
                        )
                 )
               ),
               fluidRow(
                 actionButton("toggleButton", "On/Off"),
                 uiOutput("dynamicGraph")
               )
      ), # Fin du premier onglet "Menu"
      tabPanel("Graphique",
               plotOutput("plot1", height = "400px")
               # Partie Graphique
      ) # Fin du deuxième onglet "Graphique"
    ) # Fin de tabsetPanel
  ) # Fin de dashboardBody
) # Fin de dashboardPage