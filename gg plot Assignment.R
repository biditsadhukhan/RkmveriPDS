#------------------- DATA TRANSFORMATION AND VISUALISATION EXERCISES -------------------#
#Q1
Air <- airquality
head(Air)
N=unique(Air$Month)

#(i)
by(Air,Air$Month,function(x) sum(!complete.cases(x)))

#(ii)
aggregate(Air,by=list(Air$Month),function(x) sum(!complete.cases(x)))

#(iii)
table()

#(iv)
library(dplyr)
Air%>%
  group_by(Month)%>%
  summarise_all(function(x) sum(!complete.cases(x)))


#Q2
#(i)
library(dplyr)
Air <- Air%>%
  mutate(Temp_lvl1=ifelse(Temp>quantile(Temp,.80),"Extreme",ifelse(Temp>quantile(Temp,.60),"High",ifelse(Temp>quantile(Temp,.30),"Medium","Low"))),.after=Temp)
head(Air)
quantile(Air$Temp,.80)
#(ii)

?quantile
#(iii)
Air$Temp_lvl3=cut(Air$Temp,breaks=4,labels=c("Low",'Medium',"High","Extreme"))
Air
head(Air)

#(v)
Air$Temp_lvl5=replace(Air$Temp_lvl5,Air$Temp>quantile(Air$Temp,.80),"Extreme")
Air$Temp_lvl5=replace(Air$Temp_lvl5,Air$Temp>quantile(Air$Temp,.60)&Air$Temp<=quantile(Air$Temp,.80),"High")
Air$Temp_lvl5=replace(Air$Temp_lvl5,Air$Temp>quantile(Air$Temp,.30)&Air$Temp<=quantile(Air$Temp,.60),"Medium")
Air$Temp_lvl5=replace(Air$Temp_lvl5,Air$Temp<=quantile(Air$Temp,.30),"Low")
Air

#Q3
#install.packages("tidyverse")
search()
library(tidyverse)

Air$Ozone[is.na(Air$Ozone)]=mean(Air$Ozone,na.rm=T)
Air

Air1=Air%>%
  mutate(Ozone=replace(Ozone,is.na(Ozone),mean(Air$Ozone,na.rm=T))) 
Air1


#Q4
#aggregate(Ozone~Month,function(x) )





#Q5





#Q6
if(!("ggplot2" %in% installed.packages())) install.packages("ggplot2")
library(ggplot2)
#search()
head(mpg)
ggplot(mpg,aes()) +
  geom_bar(mapping=aes(x=manufacturer,fill=manufacturer, y = ..count..))

#Q7
ggplot(mpg)+
  geom_bar(mapping=aes(y=manufacturer,fill=model,x=..count..))

#Q8
ggplot(mpg,aes())+
  geom_bar(mapping=aes(reorder(manufacturer,manufacturer,NROW),x=..count..,fill=manufacturer))


#Q9
axistheme <- theme(axis.text.x = element_text(family = "Open Sans", colour = "blue", size = (10), angle = 90))
  ggplot(data=mpg)+
  geom_count(mapping=aes(x=manufacturer,y=model,color=manufacturer)) + axistheme
  
  
#Q10  
install.packages("reshape")
library(reshape)
library(ggplot2)  
library(dplyr)

#(i)
mpg %>% group_by(manufacturer, model) %>% summarise(n())

#(ii)
with(mpg,table(manufacturer,model))

#(iii)

  
#Q12
ggplot(data=Air,aes(x=Month,y=Day))+
geom_raster(aes(fill=Temp))+
  scale_fill_gradient(high="red",low="yellow")    

#Q13
library("ggplot2movies")
m <- movies;head(m)
ggplot(data = m) +geom_violin(mapping=aes(rating,votes, fill= cut_width(rating,0.5)),scale = "area")
ggplot(data = m) +geom_violin(mapping=aes(rating,votes, fill= cut_width(rating,0.5)))+ scale_y_log10()
ggplot(data = m) +geom_violin(mapping=aes(rating,votes, fill= cut_width(rating,0.5)))+ scale_y_continuous(trans = "reciprocal")
ggplot(data = m) +geom_violin(mapping=aes(rating,votes, fill= cut_width(rating,0.5)))+ scale_y_sqrt()  

ggplot(data = m) +geom_boxplot(mapping=aes(rating,votes, fill= cut_width(rating,0.5)),scale = "area")
ggplot(data = m) +geom_boxplot(mapping=aes(rating,votes, fill= cut_width(rating,0.5)))+ scale_y_log10()
ggplot(data = m) +geom_boxplot(mapping=aes(rating,votes,fill= cut_width(rating,0.5)))+ scale_y_continuous(trans = "reciprocal")
ggplot(data = m) +geom_boxplot(mapping=aes(rating,votes, fill= cut_width(rating,0.5)))+ scale_y_sqrt()  


#Q14
library("ggplot2movies")
m <- movies;head(m)
ggplot(data=m, aes(votes)) + geom_area(stat = "bin")
ggplot(data=m, aes(votes)) + geom_area(stat = "bin") + xlim(0,200)
ggplot(data=m, aes(votes)) + geom_area(stat = "bin") + scale_x_continuous(trans = "log10")


#Q15
ggplot(mpg,aes())+
  geom_jitter(aes(x=cty,y=hwy)) 
ggplot(mpg,aes())+
  geom_jitter(aes(x=cty,y=hwy, shape = fl)) +
  labs(x="cty_2") + 
  theme_grey()
