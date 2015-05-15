#http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data

#flowers <- read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data",blank.lines.skip=FALSE)
flowers <- read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data")
summary(flowers)

colnames(flowers) <- c("F1", "F2", "F3", "F4", "Label")
summary(flowers)


indexes = sample(1:nrow(flowers), size=0.6*nrow(flowers))
flowers.train <- flowers[-indexes,]
flowers.test <- flowers[indexes,]

fit <- kmeans(flowers.train[,1:4],5)
fit

plot(flowers.train[c("F1", "F2")], col=fit$cluster)
points(fit$centers[,c("F1", "F2")], col=1:3, pch=8, cex=2)

