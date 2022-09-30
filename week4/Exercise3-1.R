# A construction company receives concrete items for a construction. The length
# of the items are assumed reasonably normally distributed. The following re-
# quirements for the length of the elements are made
# μ = 3000 mm.
# The company samples 9 items from a delevery which are then measured for
# control. The following measurements (in mm) are found:
# 3003 3005 2997 3006 2999 2998 3007 3005 3001
# a) Compute the following three statistics: the sample mean, the sample stan-
# dard deviation and the standard error of the mean, and what are the in-
# terpretations of these statistics?
# From the data we get the sample mean and sample standard deviation
# x = 3002.33mm and s = 3.708mm.
x <- c(3003, 3005, 2997, 3006, 2999, 2998, 3007, 3005, 3001)
mean(x)
sd(x)

# rom Definition 3.7, we get the standard error of the mean as
# SE  ̄x = 3.708
# √9 = 1.236.
# The interpretations of these are:
# x = 3002.33 The best estimate we can make of the true mean length of such concrete
# items
# s = 3.708 The population of concrete item lenghts has a standard deviation esti-
# mated at 3.7. We estimate the average deviation from the mean for concrete
# items to be 3.7 mm. So most concrete items will be within the range of approx-
# imately ±7.4 mm of the mean
# SE  ̄x = 1.236 All of the following are versions of the same story given by this num-
# ber:
# • The standard deviation of the sampling distribution of the sample mean
# (seen as a random variable) is (estimated at) 1.24
# • And also: The standard deviation of the sampling distribution of the
# difference between sample mean and the population mean (seen as a
# random variable) is(estimated at) 1.24
# • So from sample to sample (of size n = 9) the sample mean will be differ-
# ent. And the size of these differences, that is, the difference between the
# the sample mean and the true population mean is on average 1.24
# • The sample mean is on average 1.24 away from the target: the population
# mean
# • The error we will make on average in using the sample mean for esti-
# mating the population mean is 1.24

# b) In a construction process, 5 concrete items are joined together to a single
# construction with a length which is then the complete length of the 5 con-
# crete items. It is very important that the length of this new construction
# is within 15 m plus/minus 1 cm. How often will it happen that such a
# construction will be more than 1 cm away from the 15 m target (assume
# that the population mean concrete item length is μ = 3000 mm and that
# the population standard deviation is σ = 3)?

# et Y denote the length of the joined construction. So
# Y =
# 5
# ∑
# i=1
# Xi,
# where Xi is the length of a randomly selected concrete item. So using the rules for
# mean and variance calculations from Section 2.7, we can find that
# E(Y) =
# 5
# ∑
# i=1
# E(Xi) =
# 5
# ∑
# i=1
# 3000 = 5 · 3000 = 15000,
# and
# V(Y) =
# 5
# ∑
# i=1
# V(Xi) =
# 5
# ∑
# i=1
# 32 = 5 · 9 = 45.
# We can also state that, since the concrete item distribution is a normal
# Xi ∼ N(μ, σ2), i = 1, . . . , 5,
# then the sum of five (independent) of such will be normal (Theorem 2.40), so
# Y ∼ N(15000, 45).
# (Actually, the normality result is expressed in Theorem 3.3 for the sample mean,
# however, the sum is just a simple scaling of the mean, so then the normality also
# holds for the sum) So we can now find the answer to the question
# P(|Y − 15000| > 10) = 2 · P( (Y − 15000)
# √45 > 10/√45) = 2 · P(Z > 1.4907) = 0.136.
2*(1-pnorm(15010, mean=15000, sd=sqrt(45)))
2*pnorm(-1.4907)
# In between 13 and 14 cases out of 100 the joined construction is beyond 1 cm away
# from the target – maybe a new supplier should be considered!

# c) Find the 95% confidence interval for the mean μ.
# Since the 97.5%-quantile, t0.975 of the t-distribution with 8 degrees of freedom equals
# t0.975 = 2.306 (found in R as: qt(0.975, 8)), we get
# 3002.33 ± 2.306 · 3.708
# √9 ⇔ [2999.5; 3005.2] .
# Or everything in R:
x <- c(3003, 3005, 2997, 3006, 2999, 2998, 3007, 3005, 3001)
mean(x)

sd(x)
qt(0.975, 8)
t.test(x)

# d) Find the 99% confidence interval for μ. Compare with the 95% one from
# above and explain why it is smaller/larger!

# Since the 99.5%-quantile, t0.995 of the t-distribution with 8 degrees of freedom equals
# t0.995 = 3.355 (found in R as: qt(0.995, 8)), we get
# 3002.33 ± 3.335 · 3.708
# √9 ⇔ [2998.2; 3006.5] .
# Or everything in R:
qt(0.995, 8)
t.test(x, conf.level=0.99)
# It makes good sense that the 99% confidence interval becomes larger than the 95%
# one, as the consequence of wanting to be more confident on capturing the true mean
# μ will make us having to state a larger interval

# e) Find the 95% confidence intervals for the variance σ2 and the standard
# deviation σ.

# e use the formula for the variance confidence interval
# [
# (n − 1)s2
# χ2
# 1−α/2
# ; (n − 1)s2
# χ2
# α/2
# ]
# .
# where the quantiles come from a χ2-distribution with ν = n − 1 = 8 degrees of
# freedom
# [
# (n − 1)s2
# χ2
# 1−α/2
# ; (n − 1)s2
# χ2
# α/2
# ]
# =
# [ 8 · 3.7082
# χ2
# 0.975
# ; 8 · 3.7082
# χ2
# 0.025
# ]
# =
# [ 8 · 13.75
# 17.535 ; 8 · 13.75
# 2.180
# ]
# = [6.273; 50.465] .
# And for the standard deviation:
# [√6.273; √50.465
# ]
# = [2.50; 7.10] .

qchisq(c(0.975,0.025), 8)
c(8*13.75/qchisq(0.975, 8), 8*13.75/qchisq(0.025, 8))
sqrt(c(8*13.75/qchisq(0.975, 8), 8*13.75/qchisq(0.025, 8)))

# f) Find the 99% confidence intervals for the variance σ2 and the standard
# deviation σ.
qchisq(c(0.995,0.005), 8)
c(8*13.75/qchisq(0.995, 8), 8*13.75/qchisq(0.005, 8))
sqrt(c(8*13.75/qchisq(0.995, 8), 8*13.75/qchisq(0.005, 8)))