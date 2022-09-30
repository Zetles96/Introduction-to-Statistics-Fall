# This is a continuation of Exercise 1, so the same setting and data is used (read
# the initial text of it).
# a) To investigate whether the requirement to the mean is fulfilled (with α =
# 5%), the following hypothesis should be tested
# H0 : μ = 3000
# H1 : μ 6 = 3000.
# Or similarly asked: what is the evidence against the null hypothesis?

# This is a one-sample situation. In R it could be handled by:
x <- c(3003,3005,2997,3006,2999,2998,3007,3005,3001)
t.test(x, mu=3000)
# And then find the p-value as (using a t-distribution with ν = 8 degrees of freedom)
# 2 ∗ P(T > 1.885) = 0.096.
# (in R as: 2*(1-pt(1.885,8))). So although there is a weak evidence aginst the null,
# cf. the p-value interpretation table in Section 3.1, when using an α of 0.05 the null
# hypothesis is not rejected, but must be accepted.

# b) What would the level α = 0.01 critical values be for this test, and what are
# the interpretation of these

# The critical values would be ±t0.995 = ±3.355:
qt(p=0.995, df=8)
# This means that, in a new experiment, the standardized difference between the data
# and the null hypothesis, also called tobs, must be either larger than 3.355 or smaller
# than −3.355 to lead to a significant result of the experiment.

# c) What would the level α = 0.05 critical values be for this test (compare also
# with the values found in the previous question)?
# The critical values would be ±t0.975 = ±2.306:
qt(p=0.975, df=8)
# This means that, again in a new experiment, it is easier to detect an effect with sig-
# nificance level α = 0.05 than on level α = 0.01.

# d) Investigate, by som plots, whether the data here appears to be coming
# from a normal distribution (as assumed until now)?
x=c(3003,3005,2997,3006,2999,2998,3007,3005,3001)
hist(x, freq=F, col = 4)
xp <- seq(2996, 3008, 0.1)
lines(xp, dnorm(xp, mean(x), sd(x)), lwd = 2)
plot(ecdf(x), verticals = TRUE)
xp <- seq(0.9*min(x), 1.1*max(x), length.out = 100)
lines(xp, pnorm(xp, mean(x), sd(x)))
qqnorm(x)
qqline(x)
# Compare with 9 simulated ones
par(mfrow = c(3, 3))
for (i in 1:9){
  xr <- rnorm(9)
  qqnorm(xr, main="")
  qqline(xr)
}
# The nine data points do not differ more from the line than what truly normally
# distributed samples of size n = 9 do, so we cannot falsify the normality assumption
# (Did we prove normality?...no, we accept that they are normal distributed (like when
# we accept the null hypothesis)).

# e) Assuming that you, maybe among different plots, also did the normal q-q
# plot above, the question is now: What exactly is plotted in that plot? Or
# more specifically: what are the x- and y-coordinates of e.g. the two points
# to the lower left in this plot?
# Let us look at the Normal q-q plot again:
qqnorm(x)
qqline(x)
# The y-coordinates of the nine points from left to right in the plot are the ordered
# observations x(1), . . . , x(9):
sort(x) v
# The x-coordinates are quantiles from the standard normal distribution. Method 3.42
# tell us exactly which quantiles, that are used by R (in the current case there is less
# than n = 10 observations):
# pi = i − 3/8
# 9 + 1/4 , i = 1, . . . , 9
is <- 1:9
pis <- (is-3/8)/(9+1/4)
qnorm(pis)
plot(qnorm(pis), sort(x))
