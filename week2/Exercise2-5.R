# A horse owner receives 20 bales of hay in a sealed plastic packaging.
# To control the hay, 3 bales of hay are randomly selected, and each
# checked whether it contains harmful fungal spores.
# It is believed that among the 20 bales of hay 2 bales are infected with
# fungal spores. A random variable X describes the number of infected bales
# of hay among the three selected.
# a) The mean of X, (µX), the variance of X, (σ2X and P(X ≥ 1) are?
a = 2
N = 20
n = 3
meanHyper = n * a / N
varianceHyper = (n * a * (N - a) * (N - n)) / (N^2 * (N - 1))
1 - phyper(0, a, N - a, n)
# b) Another supplier advertises that no more than 1% of his bales of hay are
# infected. The horse owner buys 10 bales of hay from this supplier, and
# decides to buy hay for the rest of the season from this supplier if the 10
# bales are error-free.
# What is the probability that the 10 purchased bales of hay are error-free, if
# 1% of the bales from a supplier are infected (p1) and the probability that
# the 10 purchased bales of hay are error-free, if 10% of the bales from a
# supplier are infected (p10)?
dbinom(x = 0, size = 10, prob = 0.01)
dbinom(x = 0, size = 10, prob = 0.10)
