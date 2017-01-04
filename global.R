
setwd('//wdmpsvr01/RedirectedFolders/clemence.burnichon/My Documents/code_repo/tarot')


card <- c(1:10, 'v','c','d','r')
atout <- c(1:21,'e')

jeu <-as.data.frame(c(rep(card,time = 4), atout), stringsAsFactors = F)
names(jeu) <- 'jeu'


nb_player <- c(3,4,5)

