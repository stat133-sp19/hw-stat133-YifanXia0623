#title: make shots data
#description: shots data of the five players
#input(s): it requires the raw data of all five players
#output(s): it outputs 1)five shots data in csv format. 2)the summary of each player's shots data and the summary of binded table

library(dplyr)

curry <- read.csv("/Users/mac/Desktop/workout01/data/stephen-curry.csv", stringsAsFactors = FALSE)
thompson <- read.csv("/Users/mac/Desktop/workout01/data/klay-thompson.csv", stringsAsFactors = FALSE)
durant <- read.csv("/Users/mac/Desktop/workout01/data/kevin-durant.csv", stringsAsFactors = FALSE)
green <- read.csv("/Users/mac/Desktop/workout01/data/draymond-green.csv", stringsAsFactors = FALSE)
iguodala <- read.csv("/Users/mac/Desktop/workout01/data/andre-iguodala.csv", stringsAsFactors = FALSE)

curry <- mutate(curry,name = rep("Stephen Curry",length(curry$team_name)))
thompson <- mutate(thompson,name = rep("Klay Thompson",length(thompson$team_name)))
durant <- mutate(durant,name = rep("Kevin Durant",length(durant$team_name)))
green <- mutate(green,name = rep("Graymond Green",length(green$team_name)))
iguodala <- mutate(iguodala,name = rep("Andre Iguodala",length(iguodala$team_name)))

curry <- curry %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'n','shot_no'))
curry <- curry %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'y','shot_yes'))
thompson <- thompson %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'n','shot_no'))
thompson <- thompson %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'y','shot_yes'))
durant <- durant %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'n','shot_no'))
durant <- durant %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'y','shot_yes'))
green <- green %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'n','shot_no'))
green <- green %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'y','shot_yes'))
iguodala <- iguodala %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'n','shot_no'))
iguodala <- iguodala %>% mutate(shot_made_flag = replace(shot_made_flag, shot_made_flag == 'y','shot_yes'))

curry <- mutate(curry,minute = period *12 - minutes_remaining )
thompson <- mutate(thompson,minute = period *12 - minutes_remaining)
durant <- mutate(durant,minute = period *12 - minutes_remaining)
green <- mutate(green,minute = period *12 - minutes_remaining)
iguodala <- mutate(iguodala,minute = period *12 - minutes_remaining)

sink('/Users/mac/Desktop/workout01/output/stephen-curry-summary.txt') 
print(summary(curry)) 
sink() 

sink('/Users/mac/Desktop/workout01/output/klay-thompson-summary.txt') 
print(summary(thompson)) 
sink() 

sink('/Users/mac/Desktop/workout01/output/kevin-durant-summary.txt') 
print(summary(durant)) 
sink() 

sink('/Users/mac/Desktop/workout01/output/draymond-green-summary.txt') 
print(summary(green)) 
sink() 

sink('/Users/mac/Desktop/workout01/output/andre-iguodala-summary.txt') 
print(summary(iguodala)) 
sink()

shots_data <- rbind(curry,thompson,durant,green,iguodala)

write.csv(shots_data, "/Users/mac/Desktop/workout01/data/shots-data.csv")

sink('/Users/mac/Desktop/workout01/output/shots-data-summary.txt') 
print(summary(shots_data)) 
sink()
