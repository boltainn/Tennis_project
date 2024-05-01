#Tennis Project
getwd()
##Data load
AusOpenMen <- read.csv("tennis_data/AusOpen-men-2013.csv")
AusOpenWoMen <- read.csv("tennis_data/AusOpen-women-2013.csv")

FrenchOpenMen <- read.csv("tennis_data/FrenchOpen-men-2013.csv")
FrenchOpenWoMen <- read.csv("tennis_data/FrenchOpen-women-2013.csv")

USOpenMen <- read.csv("tennis_data/USOpen-men-2013.csv")
USOpenWoMen <- read.csv("tennis_data/USOpen-women-2013.csv")

WimbledonMen <- read.csv("tennis_data/Wimbledon-men-2013.csv")
WimbledonWoMen <- read.csv("tennis_data/Wimbledon-women-2013.csv")

##Data Combine
col_names <- names(FrenchOpenMen)
list_df <- list(AusOpenMen,AusOpenWoMen,FrenchOpenMen,FrenchOpenWoMen,USOpenMen,USOpenWoMen,WimbledonMen,
                WimbledonWoMen)
for(i in 1:8){
  names(list_df[[i]]) = col_names
}

GrandSlams <- rbind(list_df[[1]],list_df[[2]],list_df[[3]],list_df[[4]],list_df[[5]],list_df[[6]],
                    list_df[[7]],list_df[[8]])
