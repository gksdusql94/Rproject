setwd("/Users/han-yeonbi/Desktop/R_exercise")
load("/Users/han-yeonbi/Desktop/R_exercise/sah.RData")
library(ggplot2)
d <-ggplot(sah, aes(age, sbp, color=chd))+geom_point()
d +labs(x="Age", y='SBP', title= '202535368380', color="CHD") 

library(RColorBrewer)
e <- ggplot(sah, aes(age, ldl, color = BMI.cat)) + geom_point()
e + scale_color_brewer(palette = "Set2")
sah$BMI.cat <- factor(sah$BMI.cat, levels = c("Underweight", "Normal", "Overweight", "Obese"))
e + scale_color_brewer(palette = "Blues") +labs(title = "202535368380")


f<- ggplot(sah, aes(x = age)) +geom_histogram(breaks = seq(10, 65, 5), fill = "skyblue", color = "black")
f + labs(x = "Age in years",y = "Count",title = "202535368380")
