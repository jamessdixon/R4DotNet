x <- 10
x
summary(x)
length(x)

#Mutability
x <- 10
x
summary(x)
length(x)

#No NULL
y <- null
y <- NA
z <- x + y
is.na(z)

#Vector functions
v1 <- c(3,4,5)
mean(v1)
sqrt(v1)

v2 <- c(6,7,8)
v3 <- v1+v2

#str = structure (not string)
str(v3) 