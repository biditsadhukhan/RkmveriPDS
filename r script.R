age <- sample(10:15,5);v1
marks <- runif(5,25,100);v2
no_books <- sample(0:10,5);v3
gender <- sample(c("M","F"),5, replace = T);v4
df <-  data.frame(age,marks,no_books,gender)
tapply(df$marks,df$gender, mean)
tapply(df$no_books,df$gender,min)
v1 <- c(1,4,9,1);v1
v3 <- c(2,3,4,1);v3
v4 <- c(3,1,3,1);v4
df1 <- data.frame(v1,v3,v4)
lapply(df1, min)
sapply(df1,min)
df[2]
df
apply(df[,1:3],2,mean)
m <- matrix(c(age,marks,no_books),nrow=5,dimnames = list(1:5,c("age","marks","no.books")));m
round(apply(m,2,mean))            
apply(df,2,mean)
dim(m)
lapply(df,mean)
str(df)
library(DAAG)
df3=rainforest
na.omit(df3)
?complete.cases

with(df3,table((complete.cases(root,species))))
complete.cases(root)
library(dplyr)
with(df3,aggregate(root ~ species,df3,function(x){sum(is.na(root))},na.action = NULL))
with(df3,tapply(root,species,length))

library(MASS)
df4 <- Pima.tr2
df4
?read.table
library(MASS)
df4 <-  Pima.tr2
search()   # to see the order of package as there was a statement in R attaching hill from DAAG package
f3 <- function(x)
{
  sum(is.na(x))
}
with(df4,sapply(df4,f3),type)
with(df4,type,sapply(df4, f3))
library(MASS)
df4 <-  Pima.tr2
head(df4)
search()   # to see the order of package as there was a statement in 

subset(df4,sapply(df))

library(DAAG)
df6= rainforest
with(df6,table(complete.cases(root)),species)
library(MASS)
 count.na <- function(x) sum(is.na(x))
 #count.na(c(1, 5, NA, 5, NA, 8))
 sapply(Pima.tr2, count.na)
subset(df4,df4$type==YES)
subset(df4,is.na(bp)==T)
f4 <- function(df,x)
  subset(df,is.na(x)==T)

{}
with(df4,sapply(df4,count.na))
new_df <- subset(df4,df4$type=="Yes")
new_df <- new_df[,1:7]
with(new_df,sapply(new_df,count.na))

lev <- levels(df4$type)
lev
for (lev in levels(df4$type)) {
  print(sapply(subset(df4,type==lev),count.na))
}
with(df4,sapply(subset(df4,type=="Yes"),count.na),
     sapply(subset(df4,type=="No"),count.na))
str(df4)
with(df4,sapply(subset(df4,type %in% c("Yes","No")),count.na))

subset(df4,type =="No")
subset(cash, company == "A")
type_yes <- subset(df4,type=="Yes")
type_no <- subset(df4,type=="No")
with(df4,subset(df4,type=="Yes"),subset(df4,type=="No"))
 with(df4,subset)    
with(df4,mapply(count.na,))

head(df4)

with(df4,by(df4,type,function(x){sapply(x,count.na)}))
with(df4,subset(df4,type))

with(df4,aggregate(df4,list(type),count.na))
with(df4,group_by(type))
library(dplyr)
df4 %>%
  group_by(type) %>%
  summarise(count.na(npreg),
            count.na(glu),
            count.na(bp),
            count.na(skin),
            count.na(bmi),
             count.na(ped),
             count.na(age)
            )
with(df4,group_by(type),summarise(n=count.na(n)))
df4 %>%
  group_by(type) %>%
  summarise(n=count.na(n))

  #mtcars %>% group_by(cyl,carb) %>% summarise(a = mean(disp),b=mean(mpg))
mtcars %>% group_by(cyl,carb) %>% summarise(a = mean(disp),b=median(mpg))
by_vs_am <- mtcars %>% group_by(vs, am)
by_vs_am

group_by(df4$type,)
mtcars %>%
  group_by(vs) %>%
  group_by(hp_cut = cut(hp, 3))


library(DAAG)
Acmena <- subset(rainforest, species=="Acmena smithii")
#The following extracts the rows for the species Acacia mabellae and Acmena smithii
AcSpecies <- subset(rainforest, species %in% c("Acacia mabellae",
                                                 "Acmena smithii"))
AcSpecies


library(DAAG)
df <- ais
head(df)
subset(df,sport == "Row")
new_df <- subset(df,sport %in% c("Row","Netball","Tennis"))
str(df)
df$sport= as.character(df$sport)
subset(df,sport=="Row" & sex=="f")
y <- unlist(strsplit(df$sport,"_",FALSE))
paste0(y)
