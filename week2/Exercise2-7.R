# On a large fully automated production plant items are pushed to a side band
# at random time points, from which they are automatically fed to a control unit.
# The production plant is set up in such a way that the number of items sent to
# the control unit on average is 1.6 item pr. minute. Let the random variable X
# denote the number of items pushed to the side band in 1 minute. It is assumed
# that X follows a Poisson distribution.
# a) What is the probability that there will arrive more than 5 items at the
# control unit in a given minute is?
1 - ppois(q = 5, lambda = 1.6)
# b) What is the probability that no more than 8 items arrive to the control unit
# within a 5-minute period?
ppois(q = 8, lambda = 8)