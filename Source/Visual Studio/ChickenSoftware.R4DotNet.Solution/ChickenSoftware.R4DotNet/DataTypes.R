
#Ints behave as you expect
ints <- c(1,2,3,1,2,3)
length(ints)
mean(ints)
is.factor(ints)

ints <- factor(ints)
is.factor(ints)
mean(ints)

ints <- as.integer(ints)
mean(ints)
is.factor(ints)

#numeric does not
numbers <- c(1.0,2.0,3.1,1.0,2.0,3.1)
mean(numbers)
is.factor(numbers)
numbers <- factor(numbers)
is.factor(numbers)
numbers # note loss of precision
mean(numbers)

#cast
numbers <- as.numeric(numbers)
is.numeric(numbers)
numbers

#need to cast - keep precision
numbers <- c(1.0,2.0,3.1,1.0,2.0,3.1)
numbers <- factor(numbers)
numbers <- as.numeric(as.character(numbers))
is.numeric(numbers)
numbers
mean(numbers)

#characters behave as you expect
#some models automatically make characters factors
#some do not.  So read the docs
characters <- c("Larry","Curlie","Moe","Larry")
is.factor(characters)
characters <- factor(characters)
is.factor(characters)
characters