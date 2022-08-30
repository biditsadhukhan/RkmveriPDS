rm(list = ls())


#Exercise R part-1, page-7

  x <- 1
class(x)
typeof(x)
class(x+1)
typeof(x+1)


#comment- Here class and typeof function is giving the same output as numeric as we can see...
# but there is a fundamental difference in the two function class is the container of an object,an attribute that makes the object behave externally with functions that take this particular "type of" object as argument
#The function class prints the vector of names of classes an object inherits from.Say, if an element comes from matrix of numeric values then class will be matrix and type of will be numeric.

   
y <- 2020L
typeof(y)

   typeof(2+i) # error comes since the notion is to mention the real coefficients while defining complex numbers
   
  
  typeof(2+1i)
  typeof(2+0i)
    
  c1 <- complex(2,2,3)
typeof(c1)

  
  typeof(1.7 * 2)

  
  typeof(as.numeric("1.7")*2)

  x_1 <- c(1.2,3L,4.3)
class(x_1)
typeof(x_1)

# Exercise slide page-14

n1=matrix(1:20,4,5)
n1
class(n1)    # Here the difference is properly visible in the output of class() and typeof() function
typeof(n1)


n2=matrix(1:6,2,3, dimnames=list(c("r1","r2"),c("c1","c2","c3")))
n2   # used dimnames to name the rows and coloumns


m1 <- matrix(3:20,3,8)
m1   # the output is a matrix from of numeric type with 3 rows and 8 coloumns. The speciality of the matrix here is that coloumn 1 and 2 of the matrix is recycled to form coloumn 7 and 8

m2 <- matrix(3:20,3,5)
m2  # the output is a an example where the values are more than the specified coloumns and rows. R without giving any error gives an output where the first 3 and last 3 values are trimmed to form the matrix


m3=matrix(1:6,2)
dimnames(m3)=list(c("r1","r2"),c("c1","c2","c3"))  # using dimnames to name rows and coloumns
m3
rm(m3)

m3=matrix(1:6,2)
rownames(m3)=paste(rownames(m3),c("r1","r2"))   # using paste function to name rows of the matrix
colnames(m3)=paste(colnames(m3),c("c1","c2","c3")) # using paste function to name coloumns of the matrix
m3

n3=matrix(1:6,2,3,byrow = T)
n3   #  matrix with row major fashion

# Exercise slide page-20

n4=(list(1,0.2,"A",TRUE,1+2i,mean(1:6)))
n4


new_list=list(second=1:2,
              1:3,
              fourth=1:4,
              1)


new_list[[3]][[2]]
# other way
new_list$fourth[2]

#Exercise slide page-25

p <- c(0,3,2,2,1)
p1=as.factor(p); p1
as.numeric(p1)  #the output comes as numbers and without levels because now the values are not treated as factors anymore

levels(p1)  # the levels are specified at 0,1,2,3

levels(p1) <- c("a","d","b","c")
p1
 # the levels changed to a b c and d as well as the factor changes from 0,3,2,2,1 to a,c,b,b,d

q <- 10:7 ; q
q1 <- as.factor(q) ;q1
levels(q1) <- c("A","B","C","D")
q1

as.numeric(q1)
# after applying the as.numeric function on the factor created 4,3,2,1 is given as output

attributes(p1)
attributes(q1)


#Exercise slide page-30

v1 <- c(1,24,5,9,0)
v1*2
v1*c(2,2,2,2,2)   # as given in the question that multiplying with c(2,2,2,2) we will get an error since the vectors are not of the same length
# but if we do it with 5 we will get the answer same as what we got in the previous one since the prodcut is elementwise.

1/v1

v1 <- v1[2:5] ; v1*c(2,3,2,3)
x <- 1:4; y <- c(x,0,x); v2 <- 2*x+y+1 ;v
# object length not same so addition operation not possible in 2*x+y

length(v1) # gives the number of elements are present in the vector

r1 <- seq(0,1,0.25); r1 #build a sequence from 0 to 1 with common difference 0.25
 rep(r1,2)  # repeats the vector r1 by 2 times
 names(r1) <- c("c2","c3","c4","c5","c6")
r1
# gives the names to the each element in vector r1

min(r1)   # gives the minimum element in the vector or list 
max(r1)  # gives the max element in r1
sqrt(49)  # gives the square root of  49
sum(r1) # does the sum of the elements of the vectors in r1



# Exercise slide page-33


v3 <- c("1","4","b"); v3
typeof(v3)
  # output is of character type because of the order of preference in R

v3_new <- as.numeric(v1[!is.na((as.integer(v1)))])
typeof(v3_new)


x <- c(10.4,5.6,3.1,6.4,21.7)
typeof(x)
class(x)

typeof(sum((x-mean(x))^2)/(length(x)-1))
# standard deviation of x 

(x+1)[(!is.na(x)) & x>0] -> z
typeof(z)


paste0(rep(c("X","Y"),5),1:10)

#Exercise slide page-35

2+(3^2)
2+(3^2^3) # ^ function is operated first
x <- y <- z <- 0; x; y; z
# first z assigned 0 then y=z=0 then x=y=z=0
(3+3)/2  # addition first
2:3+2 #first +2 to each element then sequence operator
2:-3 #sequence 2 to -3 in steps of -1
2 > 2:-3   # sequence is formed and then it is tested if the values of the sequence are lesser than 2





# Exercise slide -2 page-11
getwd()
dat <- read.table("house_copy.txt",header = T)  #file is downloaded in the R working directory
head(dat)
dat_new=dat[,c(1,2)]
head(dat_new)
write.table(dat_new,"house_copy_new.txt")


df=read.csv(file = "cars.csv",header = T)
head(df)





#Assignment 
#prob-1
 #To find the structure of an R object
x <- list(1:12,"a",T,2+1i)
class(x)
typeof(x)
str(x)
y <- matrix(1:12,2)
y
typeof(y)
class(y)
str(y)
z <- data.frame(1:12,3);z 
typeof(z)
class(z)
str(z)

# so to conclude we can say str() function is used to find the data structure in R

#prob-2
p <- 1:10
p_even <- p[p%%2==0] # finding the even numbers from the vector of numbers

#prob-3
#counting the number of even numbers in the vector
length(p_even)

#prob-4
?seq
g <- seq(1,10,2.25); g
g1 <- seq(1,10,length.out=5); g1


#prob-5
f <- LETTERS[seq(1,15,length.out=5)] ;f  # use of length.out function in the vector of characters 
f_1 <- letters[seq(1,15,along.with=f)] ; f_1   # use of along.with in the vector 
# along.with function takes the length.out value from the mentioned vector or sequence and creates the new vector with the same number of values whereas length.out is used to specify the number of elements of the sequence that the vector should contain


#prob-6
v1 <- c('a','b','c','a','c')
v2 <- ifelse(v1=='a',2,0)


#prob-7
((3 * (2 ^ T)) | (2 + 2) / (3 : 1))

#prob-8
m <- matrix(1:6, nrow = 4, ncol = 3) ;m
m[m%%3==0] <- 0
m


#prob-9
l1 <- list(v1=c("A","B","c","D"),v2=5:8) ;l1
df <- as.data.frame(do.call(cbind, l1),row.names = c("r1","r2","r3","r4")) ; df
#do.call constructs and executes a function call from a name or a function and a list of arguments to be passed to it


#prob- 10
 m1 <- matrix(letters,ncol=25) ; m1
 m2 <- matrix(m1[m1!=c("a","b")],nrow =length(m1[m1!=c("a","b")])/2)
m2
 #length(m1[m1!=c("a","b")])/2

#prob-11,12
m3 <- matrix(as.numeric(factor(m2)),nrow = nrow(m2)); m3+9


