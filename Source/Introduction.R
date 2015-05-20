x <- 10
x
summary(x)
length(x)

#Mutability
x <- 15
x
summary(x)
length(x)

#Vector functions
v1 <- c(3,4,5)
mean(v1)
sqrt(v1)

v2 <- c(6,7,8)
v3 <- v1+v2

#NA and NULL
x <- NULL
y <- NA
z <- x + y
is.na(z)

x<-1
z <- x + y
is.na(z)

x <- 1
y <- NULL
z <- x + y
is.null(z)

v1 <- c(1,2,NULL)

#str = structure (not string)
str(v3) 