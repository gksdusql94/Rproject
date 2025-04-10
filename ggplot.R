setwd("/Users/han-yeonbi/Desktop/R_exercise")
load("/Users/han-yeonbi/Desktop/R_exercise/sah.RData")
library(ggplot2)

#age, sbp geopoint
ggplot(sah) + geom_point(aes(x=age, y=sbp))
ggplot(sah, aes(x=age, y=sbp)) + geom_point()
ggplot(sah, aes(age,sbp)) + geom_point()
ggplot(sah, aes(age,sbp, color=chd)) + geom_point() #distinguish with chd color
ggplot(sah, aes(age,sbp, shape=chd, color=chd)) + geom_point() #distinguish with chd shape

ggplot(sah, aes(age, sbp)) + geom_smooth()
ggplot(sah, aes(age, sbp,color = chd)) + geom_smooth() #geo_smooth

ggplot(sah, aes(age, sbp))+geom_point()+ geom_smooth() #overlap

ggplot(sah, aes(age, sbp)) +geom_point()+scale_x_continuous(limits =c(0,100))

a<- ggplot(sah, aes(age, sbp)) + geom_point()
a+ scale_x_continuous(limits=c(0,100))+ scale_y_continuous(limits =c(90,250))
a+ lims(x=c(0,100)) + lims(y=c(90, 250))
a+ xlim(c(0,100)) + ylim(c(90,250))

b<- a+ geom_smooth()
b+ xlim(c(20,40))
b+ coord_cartesian(xlim=c(20,40))

a+ scale_x_continuous(breaks=c(20, 40, 60)) #눈금조정
a+ scale_x_continuous(breaks=c(20, 40, 60), labels = c("20.0", "40.0", "60.0"))

ggplot(sah, aes(age, ldl))+ geom_point()+scale_y_continuous(trans="log") #log

d<- ggplot(sah, aes(BMI.cat, ldl))+geom_boxplot()
d
d+ scale_x_discrete(limits =c("normal",'overweight','obese'))
