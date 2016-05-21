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
v1 <- c(1,2,NULL)
summary(v1)
length(v1)

v2 <- c(1,2,NA)
summary(v2)
length(v2)

#NA addition
x <- 1
y <- NA
z <- x + y
z
summary(z)
is.na(z)
str(z)

#NULL addition
x <- 1
y <- NULL
z <- x + y
z
summary(z)
is.null(z)
str(z)

#NA and NULL, what will happen?
x <- NA
y <- NULL
z <- x + y
z
summary(z)
is.na(z)
is.null(z)

#key lesson, null and na are different
#when you read data in, be explicit what you do with it