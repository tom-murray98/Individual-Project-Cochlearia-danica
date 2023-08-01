library(ggplot2)
library(dplyr)
library(ggtext)

# Barplot for unmasked coverage
unmasked_coverage <- read.csv("C:/Users/Tom/Desktop/Ind_project/Coverage_unmasked.csv")
plot1 <- ggplot(unmasked_coverage, aes(fill=Subgenome, y=Average.Coverage, x=Individuals, width=.7)) +
  geom_bar(position='dodge', stat='identity')+
  scale_fill_discrete(breaks=c("trt1","ctrl"))
plot1 + theme(axis.text.x = element_text(angle = 60, vjust = 1.1, hjust=1))


#Barplot for masked coverage
masked_coverage <- read.csv("C:/Users/Tom/Desktop/Ind_project/Coverage_masked.csv")
plot2 <- ggplot(masked_coverage, aes(fill=Subgenome, y=Average.Coverage, x=Individuals, width=.7)) +
  geom_bar(position='dodge', stat='identity')
plot2 + theme(axis.text.x = element_text(angle = 60, vjust = 1.1, hjust=1))


#Barplot for unmasked coverage ratio
plot3 <- ggplot(unmasked_ratio, aes( y=Log10.Depth.Ratio, x=Individuals)) +
  geom_bar( stat='identity',fill= c("#F8766D","#FB61D7","#A58AFF","#1874CD","#F8766D","#F8766D","#F8766D","#F8766D","#F8766D",
                                    "#F8766D","#F8766D","#FFA500","#F8766D","#00CD00","#00CD00","#00CD00","#00CD00"))+
  geom_tile(aes(fill=color)) +
  scale_fill_identity("Species", labels = c("Other","C. groenlandica", "C. excelsa", "C. danica","C. pyrenaica","C. officinalis"),
                      guide = "legend")
plot3 + theme(axis.text.x = element_text(angle = 60, vjust = 1.1, hjust=1))







#Barplot for masked coverage ratio
masked_ratio <- read.csv("C:/Users/Tom/Desktop/Ind_project/Ratio_Masked.csv")

plot4 <- ggplot(masked_ratio, aes( y=Log10.Depth.Ratio, x=Individuals)) +
  geom_bar( stat='identity',fill= c("#F8766D","#FB61D7","#A58AFF","#1874CD","#F8766D","#F8766D","#F8766D","#F8766D","#F8766D",
                                    "#F8766D","#F8766D","#FFA500","#F8766D","#00CD00","#00CD00","#00CD00","#00CD00"))+
  geom_tile(aes(fill=color)) +
  scale_fill_identity("Species", labels = c("Other","C. groenlandica", "C. excelsa", "C. danica","C. pyrenaica","C. officinalis"),
                      guide = "legend")
plot4 + theme(axis.text.x = element_text(angle = 60, vjust = 1.1, hjust=1))


# Colour scheme of Barplots
color <- c("#F8766D","#FB61D7","#A58AFF","#1874CD","#F8766D","#F8766D","#F8766D","#F8766D","#F8766D",
       "#F8766D","#F8766D","#FFA500","#F8766D","#00CD00","#00CD00","#00CD00","#00CD00")
  