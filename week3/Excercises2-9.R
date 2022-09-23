# a) The following R commands and results are given:
# Specify which distributions are used and explain the resulting probabilities (preferably by a sketch).
pnorm(2)

pnorm(2, 1, 1)

pnorm(2, 1, 2)
# normal distribution
# The normal distribution function (or normal cumulated density function cdf). The
# found probabilities are
# • P(X ≤ 2) (or P(X < 2)) for X ∼ N(µ = 0, σ
# 2 = 1)
# • P(X ≤ 2) (or P(X < 2)) for X ∼ N(µ = 1, σ
# 2 = 1)
# • P(X ≤ 2) (or P(X < 2)) for X ∼ N(µ = 1, σ
# 2 = 4)
# A sketch for the first, P(Z ≤ 2) (using Z indicates that is follows the standard normal
# distribution N(0, 1)):
curve(dnorm, xlim = c(-4, 4))
xseq <- seq(-4, 2, len = 1000)
polygon(x = c(xseq, 2, xseq[1]),
        y = c(dnorm(xseq), 0, dnorm(xseq[1])),
        col = "pink")

# b) What is the result of the following command: qnorm(pnorm(2))?
qnorm(pnorm(2))
# gives the q qnorm and pnorm are each others inverse so the result is the same as the argument:

# c) The following R commands and results are given:
qnorm(0.975)
qnorm(0.975, 1, 1)
qnorm(0.975, 1, 2)
# State what the numbers represent in the three cases (preferably by a sketch).
# The 97.5% percentiles for
# • N(µ = 0, σ
# 2 = 1)
# • N(µ = 1, σ
# 2 = 1)
# • N(µ = 1, σ
# 2 = 4)
# A sketch for the first:
## Plot the standard normal distribution
curve(dnorm, xlim = c(-4, 4))
## Add a vertical line at the 0.975 quantile
abline(v = qnorm(0.975))
