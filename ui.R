

shinyUI(fluidPage(
  titlePanel('Tarot Game')
  ,sidebarLayout(
    sidebarPanel(width = 2,
                 radioButtons(inputId = 'nbP', label = 'How many player:', choices = nb_player, inline = T, selected = 4)
                 ,actionButton(inputId = 'dist', label = "Let's play !! ", icon = icon('gamepad')))
    ,mainPanel(
      column(width = 3, tableOutput(outputId = 'jeu'))
      ,column(width = 9, h1('game on this part'))
    )
  )
) )