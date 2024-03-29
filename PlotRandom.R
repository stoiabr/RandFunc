## PlotRandom.R
## Directory: ../STA308/Random Functions
## Original: 06 Oct 2021
##
## Purpose:
##    A function that will generate a random sample
##     of Normal values, plot a histogram with an 
##     overlaid mean on the plot.
##
## Inputs:
##     numpts = the number of points to generate
##     mu = the theoretical mean of the Normal distribution
##     sigma = the standard deviation of the Normal distribution
##     numbins = the number of bins for the histogram
##     meanColor = the color for the overlaid mean
##     seed = a random number generator seed, to ensure
##            reproducibility
## Outputs: A list with the following elements
##     Random_values = a vector with the generated random 
##                     values
##     Mean_x = the sample mean of Random_values
##     SD_x = the sample standard deviation of Random_values

plotRandomNormals <- function(numpts=1000, 
                              numbins=15, mu=24,
                              sigma=3, 
                              meanColor="red", 
                              linewidth=2, 
                              seed=8675309) {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins)
  abline(v=mean_x, col=meanColor, lwd=linewidth)
  list(Random_values = rand_x,
       Mean_x = mean_x,
       SD_x = sd(rand_x) )
}

## Test the function

plotRandomNormals
plotRandomNormals(linewidth=5)
