
shinyServer(function(input, output, session){
  
  #----------------------------------------------------------
  # choice of number of player & exceptions & distribution
  #----------------------------------------------------------
  
  ## chien 
  observeEvent(input$dist, {
    new_jeu <- jeu[-chien6,3]
    sample_card1 <- as.data.frame(sample(new_jeu), stringsAsFactors = F)
    sample_card1$group <- rep(c(1,2,3,4), each = 18)
    joueur1 <- sample_card1[sample_card1$group == 1,1]
    joueur2 <- sample_card1[sample_card1$group == 2,1]
    joueur3 <- sample_card1[sample_card1$group == 3,1]
    joueur4 <- sample_card1[sample_card1$group == 4,1]
    output$joueur1 <- renderTable(joueur1)
    })
  
  
    
  
})