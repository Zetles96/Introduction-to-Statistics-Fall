# The staffing for answering calls in a company is based on that there will be 180
# phone calls per hour randomly distributed. If there are 20 calls or more in a
# period of 5 minutes the capacity is exceeded, and there will be an unwanted
# waiting time, hence there is a capacity of 19 calls per 5 minutes.
# a) What is the probability that the capacity is exceeded in a random period
# of 5 minutes?
1 - ppois(q = 19, lambda = 180/12)


# b) If the probability should be at least 99% that all calls will be handled
# without waiting time for a randomly selected period of 5 minutes, how large
# should the capacity per 5 minutes then at least be?