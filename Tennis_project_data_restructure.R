#Tennis Project
getwd()
##Data load
AusOpenMen <- read.csv("tennis_data/AusOpen-men-2013.csv")
tournement=rep("AusOpen",dim(AusOpenMen)[1])
gender=rep("M", dim(AusOpenMen)[1])
AusOpenMen$tournement=tournement
AusOpenMen$gender=gender
AusOpenWoMen <- read.csv("tennis_data/AusOpen-women-2013.csv")

FrenchOpenMen <- read.csv("tennis_data/FrenchOpen-men-2013.csv")
FrenchOpenWoMen <- read.csv("tennis_data/FrenchOpen-women-2013.csv")

USOpenMen <- read.csv("tennis_data/USOpen-men-2013.csv")
USOpenWoMen <- read.csv("tennis_data/USOpen-women-2013.csv")

WimbledonMen <- read.csv("tennis_data/Wimbledon-men-2013.csv")
WimbledonWoMen <- read.csv("tennis_data/Wimbledon-women-2013.csv")

##Data Combine

list_df <- list(AusOpenMen,AusOpenWoMen,FrenchOpenMen,FrenchOpenWoMen,USOpenMen,USOpenWoMen,WimbledonMen,
                WimbledonWoMen)

tournement_names<-c('AusOpen','AusOpen', 'FrenchOpen', 'FrenchOpen',
                   'USopen', 'USopen', 'Wimbledon', 'Wimbledon')
gender_name<- c('M','F','M','F','M','F','M','F')
for(i in 1:8){
  tournement=rep(tournement_names[i],dim(list_df[[i]])[1])
  gender=rep(gender_name[i], dim(list_df[[i]])[1])
  list_df[[i]]$tournement=tournement
  list_df[[i]]$gender=gender
}
col_names <- names(list_df[[3]])
for(i in 1:8){
  names(list_df[[i]]) = col_names
}

GrandSlams <- rbind(list_df[[1]],list_df[[2]],list_df[[3]],list_df[[4]],list_df[[5]],list_df[[6]],
                    list_df[[7]],list_df[[8]])

write.csv(GrandSlams,file='GrandSlam2013.csv')


summary(GrandSlams)

men_tourn<-GrandSlams[which(GrandSlams$gender=='M'),]

summary(as.factor(men_tourn$Player1))
summary(as.factor(men_tourn$Player2))
