#http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data

#read in
flowers <- read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data")
flowers

#By default, read skips a row with a blank element
#this adds it back in
flowers <- read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data",blank.lines.skip=FALSE)
flowers
#so let's remove it explicitly
flowers <- na.omit(flowers)
flowers

colnames(flowers) <- c("F1", "F2", "F3", "F4", "Label")
summary(flowers)

#we don't know anything about this dataset
#so let's do a kmeans (like a scatterplot)
indexes = sample(1:nrow(flowers), size=0.6*nrow(flowers))
flowers.train <- flowers[-indexes,]
flowers.test <- flowers[indexes,]
fit <- kmeans(flowers.train[,1:4],5)
fit

plot(flowers.train[c("F1", "F2")], col=fit$cluster)
points(fit$centers[,c("F1", "F2")], col=1:3, pch=8, cex=2)