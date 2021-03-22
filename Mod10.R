#load ggplot
install.packages("ggplot2")
library(ggplot2)

#load dataset 
hotdogs <- read.csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv")

#first graph: dogs eaten per person, colored by year
ggplot(hotdogs, aes(x = Winner, y = Dogs.eaten)) + geom_bar(aes(color = Year, fill = Year), stat = "identity")+ labs(title = "Nathan's Hot Dog Eating Contest Results 1980 - 2010") + xlab("Winner") + ylab("Hot Dogs Eaten") + theme(axis.text.x = element_text(angle = 90))

#New records per country
colors <- ifelse(hotdogs$New.record == 1, "purple", "cyan")
ggplot(hotdogs, aes(Country, Dogs.eaten)) + geom_bar(aes(fill = New.record), stat = "identity") + labs(title = "Nathan's Hot Dog Eating Contest Results 1980 - 2010", fill = "New Record") + xlab("Country") + ylab("Hot Dogs Eaten") + theme(axis.text.x = element_text(angle = 90))
