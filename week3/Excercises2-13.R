# In 2013, there were 110,000 views of the DTU statistics videos that are available online.
# Assume first that the occurrence of views through 2014 follows a
# Poisson process with a 2013 average: λ365days = 110000.
# a) What is the probability that in a randomly chosen half an hour there is no
# occurrence of views?
# The half hour intensity is
# λ30min = λ365days/(365 · 48) = 110000
# 17520 = 6.28.
# So if X is the number of views in half an hour then, X ∼ Po(6.28) and the wanted
# probability is
# P(X = 0) = exp(−6.28) = 0.00187.
# Or in R
lambda30min <- 110000/(365*24*2)
dpois(x=0, lambda=lambda30min)

# b) There has just been a view, what is the probability that you have to wait
# more than fifteen minutes for the next view?
# This can be solved either using the Poisson distribution: the 15 minutes rate is
# λ15min = λ365days/(365 · 96) = 110000
# 2 · 17520 = 3.14.
# So if X is the number of views in 15 minutes then, X ∼ Po(3.14) and the wanted
# probability is found in R:
lambda30min <- 110000/(365*24*2)
lambda15min <- lambda30min/2
dpois(0,lambda15min)
# P(X = 0) = exp(−3.14) = 0.043.
# Or using the exponential distribution: the mean waiting time for a view is (in minutes)
# β = 365 · 24 · 60/110000 = 4.778.
# which in R
beta <- 365*24*60/110000
1-pexp(15, rate=1/beta)
