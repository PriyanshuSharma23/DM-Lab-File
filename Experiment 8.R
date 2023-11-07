data('iris')
print(head(iris))

library(ggplot2)
library(cluster)

ggplot(iris, aes(Petal.Length, Petal.Width)) + geom_point(aes(col=Species), size=4)
set.seed(1)

irisCluster <- kmeans(iris[,1:4], center=3, nstart=20)
print(irisCluster)

print(table(irisCluster$cluster, iris$Species))

clusplot(iris, irisCluster$cluster, color='T', shade='T', labels=0, lines=0)

tot.witness <- vector(mode='character', length = 10)
for (i in 1:10) {
  irisCluster <- kmeans(iris[,1:4], center=i, nstart=20)
  tot.witness[i] <- irisCluster$tot.withinss
}

plot(1:10, tot.witness, type="b", pch=19)