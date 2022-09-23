# 1) Let X be a stochastic variable. When running the R-command dbinom(4,10,0.6)
# R returns 0.1115, written as:
dbinom(4, 10, 0.6)
# What distribution is applied and what does 0.1115 represent?
# dencity binomal distribution
# the chance of getting a success four times ?

# b) Let X be the same stochastic variable as above. The following are results
# from R:
pbinom(4, 10, 0.6)
pbinom(5, 10, 0.6)
# Calculate the following probabilities:
# P(X ≤ 5)
pbinom(5, 10, 0.6)
# P(X < 5)
pbinom(4, 10, 0.6)
# P(X > 4) and
1 - pbinom(4, 10, 0.6)
# P(X = 5)
dbinom(5, 10, 0.6)

# c) Let X be a stochastic variable. From R we get:
dpois(4, 3)
# poisson distribution
# P(X = x)

# d) Let X be the same stochastic variable as above. The following are results
# from R:
# Calculate the following probabilities: P(X ≤ 5),
dpois(5, 3)
# P(X < 5)
dpois(4, 3)
# , P(X > 4) and
1 - dpois(4, 3)
# P(X = 5).
ppois(5,3)
