# Load libraries
library(knitr)
library(ggplot2)

## Set the seed
set.seed(1)

## Initialize some parameters
lambda <- 0.2
rv <- 40
samples <- 1000

## Simulate 1000 samples
mns <- NULL
for (i in 1:samples) {
  mns <- c(mns, mean(rexp(rv, rate = lambda)))
}

## Calculate the actual vs theoretical means and variances
aMean <- mean(mns)
aVar <- var(mns)
tMean <- 1/lambda
tVar <- (1/lambda)^2/rv
aMean # actual mean
aVar # actual variance
tMean # theoretical mean
tVar # actual variance

## Calculate the actual vs theoretical variances
aVar <- var(mns) # actual
tVar <- (1/lambda^2)/rv # theoretical
aVar
tVar

## Plot the histogram marking the actual mean
par(mfrow = c(1, 2))
hist(mns, probability = TRUE, col = "blue", main = "Simulations with Actual Mean", xlab = "Means")
lines(density(mns), col = "green", lwd = 2)
abline(v = aMean, col = "red", lwd = 2)

## Plot the histogram marking the theoretical mean
hist(mns, probability = TRUE, col = "blue", main = "Simulations with Theor. Mean", xlab = "Means")
lines(density(mns), col = "green", lwd = 3)
abline(v = tMean, col = "orange", lwd = 2) # theoretical