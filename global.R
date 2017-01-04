
setwd('//wdmpsvr01/RedirectedFolders/clemence.burnichon/My Documents/code_repo/tarot')

library(shiny)
library(shinyjs)


card <- c(1:10, 'v','c','d','r')
atout <- c(1:21,'e')
card_colour <- c('coeur','carreau','trefle','pique')


jeu <-as.data.frame(c(rep(card,time = 4), atout), stringsAsFactors = F)
names(jeu) <- 'jeu'
jeu$colour <- c(rep(card_colour,each = 14), rep('atout',time = 22))
jeu$cards <- paste(jeu$jeu, jeu$colour, sep =' ')

nb_player <- c(3,4,5)

joueur1 <- data.frame()
joueur2 <- data.frame()
joueur3 <- data.frame()
joueur4 <- data.frame()
joueur5 <- data.frame()

pli1 <- data.frame()
pli2 <- data.frame()
pli3 <- data.frame()
pli4 <- data.frame()
pli5 <- data.frame()

chien3 <- sample(1:length(jeu$jeu),3)
chien6 <- sample(1:length(jeu$jeu),6) 
