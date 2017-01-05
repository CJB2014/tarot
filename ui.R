

shinyUI(fluidPage(
  titlePanel('Tarot Game'),
  navbarPage(title = '',
             tabPanel('Game', 'Content',
                      sidebarLayout(
                        sidebarPanel(width = 2, tags$style(".well{background-color:#FFF; color:#000000; font-weight:bold}"),
                                     actionButton(inputId = 'dist', label = 'Donne !', icon = icon('gamepad'))
                                     ,actionButton(inputId = 'restart', label = 'Restart !', icon = icon('repeat'))
                                     )
                        ,mainPanel(dashboardPage(
                          dashboardHeader(disable = T)
                          ,dashboardSidebar(disable = T)
                          ,dashboardBody( box(title = 'bet', solidHeader = T , width = 12, height = '100px' , background = 'black'
                                              ,radioButtons(inputId = 'betvalue', label = 'prendre ou pas ? ', choices = c('prend','pass'), selected = 'pass', inline = T, width = '300px'))
                                          ,box(title = 'Game', width = 2, height = '1000px', background = 'maroon'
                                               ,tableOutput(outputId = 'joueur1'))
                                          ,box(title = 'game_card', width = 10, height = '1000px', background = 'green'))
                          
                        )
                                   )
                      ))
             ,tabPanel('About', 'Content'))
  
  
  
  
  # ,sidebarLayout(
  #   sidebarPanel(width = 2,
  #                #radioButtons(inputId = 'nbP', label = 'How many player:', choices = nb_player, inline = T, selected = 4),
  #                actionButton(inputId = 'dist', label = "Let's play !! ", icon = icon('gamepad')))
  #   ,mainPanel(
  #     column(width = 3, tableOutput(outputId = 'jeu'))
  #     ,column(width = 9, h1('game on this part'))
  #   )
  # )

  
  ) )

# box(title = 'bet', solidHeader = T , width = 12, height = '100px' , background = 'black')