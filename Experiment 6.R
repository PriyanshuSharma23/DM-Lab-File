pcaCharts <- function(x) {
  x.var <- x$sdev ^ 2
  x.pvar <- x.var/sum(x.var)
  print("proportions of variance:")
  print(x.pvar)
  
  par(mfrow=c(2,2), mar=c(1, 1, 1, 1))  # Adjust the margins here
  plot(x.pvar, xlab="Principal component", ylab="Proportion of variance explained", ylim=c(0,1), type='b')
  plot(cumsum(x.pvar), xlab="Principal component", ylab="Cumulative Proportion of variance explained", ylim=c(0,1), type='b')
  screeplot(x)
  screeplot(x, type="l")
  par(mfrow=c(1,1))
}

data("USArrests")
rawdf <- na.omit(USArrests)

names(rawdf)=c("Murder","Assault", "Rape", "UrbanPop")
print(head(rawdf))

arrests.pca <- prcomp(scale(USArrests),center = TRUE)
#Checking output of pca. prcomp function returns standard deviation (sdev), rotation and loadings.
print("---")
cat("Output of PCA:")
print(names(arrests.pca))
print("---")
cat("PCA:")
print(arrests.pca)

print("---")
cat("Summary:")
print(summary(arrests.pca))

pcaCharts(arrests.pca)
biplot(arrests.pca,scale=0, cex=.7)
