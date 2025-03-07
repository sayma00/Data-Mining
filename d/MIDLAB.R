3+5
install.packages("dplyr")

library("dplyr")

stats <- data.frame(player=c('A' , 'B' ,'C', 'D', 'A', 'A'),
                    runs = c(100,200, 408, 19,56,100),
                    wickets = c(17,20,NA,5,2,17)
)
distinct(stats)


distinct(stats, player, .keep_all = TRUE)

distinct(stats, runs, .keep_all = TRUE)

distinct(stats, wickets, .keep_all = TRUE)

#Order data based on column(runs)Ascending 
arrange(stats, runs)
#Order data based on column(runs)Descending 
arrange(stats, -runs)

#selection method(fetch required column data)
select(stats, player, wickets)

#renaming column
rename(stats, runs_scored=runs)

#create new variables(column)
mutate(stats, average = runs/4)

#drop all and create a new column
transmute(stats, average = runs/4)

#summarize method
summarise(stats, sum(runs), mean(runs))

newData <- read.csv("D:/Fall 24-25/DS/LAB/Iris/Iris.csv", header=TRUE , sep=",")

newData

#Descriptive statistics

vars<-c ("SepalLengthCm","SepalWidthCm","PetalLengthCm ","PetalWidthCm")
head(newData[vars])

summary(newData[vars])

#Annotating dataset

newData$Species <-factor (newData$Species,levels=c("Iris-Setosa","Iris-Versicolor","Iris-Virginica"),labels = c(1,2,3))




