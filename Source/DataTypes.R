
numbers <- c(1.0,2.0,3.1,1.0,2.0,3.1)
is.factor(numbers)
numbers <- factor(numbers)
is.factor(numbers)
numbers
mean(numbers)

#cast - lose precision
numbers <- as.numeric(numbers)
is.numeric(numbers)
numbers

#cast - keep precision
numbers <- c(1.0,2.0,3.1,1.0,2.0,3.1)
numbers <- factor(numbers)
numbers <- as.numeric(as.character(numbers))
is.numeric(numbers)
numbers
mean(numbers)


ints <- c(1,2,3,1,2,3)
is.factor(ints)
ints <- factor(ints)
is.factor(ints)
ints

characters <- c("Larry","Curlie","Moe","Larry")
is.factor(characters)
characters <- factor(characters)
is.factor(characters)
characters

logicals <- c(TRUE,TRUE,FALSE)
is.factor(logicals)
logicals <- factor(logicals)
is.factor(logicals)
logicals