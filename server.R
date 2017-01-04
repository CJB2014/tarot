
shinyServer(function(input, output, session){
  
  #----------------------------------------------------------
  # choice of number of player & exceptions & distribution
  #----------------------------------------------------------
  
  ## chien 
  
  observe({
    if (input$nbP == 3 | input$nbP == 4){
      new_jeu <- jeu[-chien6,3]
    }else{
      new_jeu <- jeu[-chien3,3]
    }
  })
  
  ## distribution

  observe({
    if (input$nbP == 4){
  sample_card1 <- as.data.frame(sample(new_jeu))
  sample_card1$group <- rep(c(1,2,3,4), each=18)  
  
}
if(input$nbP == 3) {
  sample_card1 <- as.data.frame(sample(new_jeu))
  sample_card1$group <- rep(c(1,2,3), each=24)  
  
}
if(input$nbP == 5 ){
  sample_card1 <- as.data.frame(sample(new_jeu))
  sample_card1$group <- rep(c(1,2,3,4,5), each=15) 
  
    }
  })

  
  
  observeEvent(input$dist,
               {joueur1 <- new_jeu[sample_card1$group ==1]
               joueur2 <- new_jeu[sample_card1$group ==2]
               joueur3 <- new_jeu[sample_card1$group ==3]
               joueur4 <- new_jeu[sample_card1$group ==4]
               joueur5 <- new_jeu[sample_card1$group ==5]
               output$jeu <- renderTable(joueur1)
               }
               )
  
  
  
  
})