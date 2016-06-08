
getwd()
fuel.efficiency <- read.csv("FuelEfficiency.csv")
summary(fuel.efficiency)

#MPG = Miles per gallon
#GPM = Gallons per 100 miles
#WT = Weight of car in 1000 lbs
#DIS = Displacment in cubic inches
#NC = number of cylinders
#HP = Horsepower
#ACC = Acceleration in seconds from 0-60
#ET = Engine Type 0 = V, 1 = Straight

plot(GPM~WT,data=fuel.efficiency)
plot(GPM~DIS,data=fuel.efficiency)
plot(GPM~NC, data = fuel.efficiency)

fuel.efficiency$NC <- factor(fuel.efficiency$NC)
fuel.efficiency$ET <- factor(fuel.efficiency$ET)
summary(fuel.efficiency)

plot(GPM~NC,data=fuel.efficiency)

#Regression
#y = x1 + x2 + x3 + E
#y is what you are trying explain
#x1, x2, x3 are the variables that cause/influence y
#E is things that we are not measuring/ using for calculations
model <- lm(GPM~.,data=fuel.efficiency)
summary(model)

# Multiple R-squared:  0.9804 
# means that we can explain 98% of the GPM with the variables we have E = 2%
# That is pretty friggen good

# turning back to numeric so we can do cor accross data frame
fuel.efficiency$NC <- as.integer(fuel.efficiency$NC)
fuel.efficiency$ET <- as.integer(fuel.efficiency$ET)
cor(fuel.efficiency)
#DIS -> WT = 0.9507647

#which Xs gives us most bang for the buck?
install.packages("leaps")
library(leaps)
x=fuel.efficiency[,3:7]
y=fuel.efficiency[,2]
out = summary(regsubsets(x,y,nbest=2,nvmax=ncol(x)))
tab=cbind(out$which,out$req,out$adjr2,out$cp)
tab

#trade off between model size and model fit
#just weight explains 85% 
model2 = lm(GPM~WT,data=fuel.efficiency)
summary(model2)