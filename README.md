## Overview

We will investigate the exponential distribution in R and compare it with the Central Limit Theorem. The exponential distribution can be simulated in R with rexp(n, lambda) where lambda is the rate parameter. The mean of exponential distribution is 1/lambda, and the standard deviation is also 1/lambda. Our lambda will be set to equal 0.2 for all of the simulations. Lastly, we will investigate the distribution of averages of 40 exponentials, meaning we will need to do a thousand simulations. In summary, we will show the sample mean, and we will compare it to the theoretical mean of the distribution containing 1000 samples. Each simulation will contain 40 exponentially distributed random variables, with a lamba equal to 0.2.

## Conclusion

This project demonstrates the central limit theorem using exponentially distributed random variables. We are able to observe that the actual mean equals the theoretical mean by averaging the means of thousands of simulated samples with 40 random variables. These averages follow a normal distribution, and as the sample size increases, we are able to notice that both the actual mean and variance become closer and closer to the theoretical mean and variance, respectively.
