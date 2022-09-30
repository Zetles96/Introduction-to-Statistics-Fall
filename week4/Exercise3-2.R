# The length of an aluminum profile is checked by taking a sample of 16 items
# whose length is measured. The measurement results from this sample are listed
# below, all measurements are in mm:
# 180.02 180.00 180.01 179.97 179.92 180.05 179.94 180.10
# 180.24 180.12 180.13 180.22 179.96 180.10 179.96 180.06
# From data is obtained:  ̄x = 180.05 and s = 0.0959.
# It can be assumed that the sample comes from a population which is normal
# distributed.

# a) A 90%-confidence interval for μ becomes?
# Since the 95%-quantile, t0.95 of the t-distribution with 15 degrees of freedom equals
# t0.95 = 1.753 (found in R as: qt(0.95, 15)), we get
# 180.05 ± 1.753 · 0.0959
# √16 = [180.00, 180.10] .
# Or everything in R:
x <- c(180.02, 180.00, 180.01, 179.97, 179.92, 180.05, 179.94, 180.10,
       180.24, 180.12, 180.13, 180.22, 179.96, 180.10, 179.96, 180.06)
mean(x)
sd(x)
qt(0.95, 15)
t.test(x, conf.level=0.9)

#  b) A 99%-confidence interval for σ becomes?
# We use the formula for the variance confidence interval
# [
# (n − 1)s2
# χ2
# 1−α/2
# ; (n − 1)s2
# χ2
# α/2
# ]
# where the quantiles come from a χ2-distribution with ν = n − 1 = 15 degrees of
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
# [ 15 · 0.0092
# χ2
# 0.995
# ; 15 · 0.0092
# χ2
# 0.005
# ]
# =
# [ 15 · 0.0092
# 32.801 ; 15 · 0.0092
# 4.601
# ]
# = [0.00421; 0.02999] .
# And for the standard deviation:
# [√0.00421; √0.02999
# ]
# = [0.065; 0.173] .

qchisq(p=c(0.995,0.005), df=15)
c(15*0.0092/qchisq(p=0.995,df=15), 15*0.0092/qchisq(p=0.005,df=15))
sqrt(c(15*0.0092/qchisq(p=0.995,df=15), 15*0.0092/qchisq(p=0.005,df=15)))
