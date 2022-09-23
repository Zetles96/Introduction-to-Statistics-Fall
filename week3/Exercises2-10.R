# a) Which of the following statements regarding the probability density function of the normal distribution N(1, 22)
# is false?
# 1. The total area under the curve is equal to 1.0
# 2. The mean is equal to 12
# 3. The variance is equal to 2
# 4. The curve is symmetric about the mean
# 5. The two tails of the curve extend indefinitely
# 6. Don’t know
# We need to find the one false statement, and go through the claims one at a time:
# 1. True, the total area under the curve is one, since this is true for all probability
# distributions, see Definition 2.32
# 2. True. The mean value is one, and we have that 12 = 1
# 3. False, the standard deviation is two and the variance is four
# 4. True, the distribution is symmetric around the mean value
# 5. True, the normal density is defined between −∞ and ∞
# Correct answer is 3.


# Let X be normally distributed with mean 24 and variance 16
# b) Calculate the following probabilities:
# – P(X ≤ 20)
pnorm(20, mean=24, sd=4)
# – P(X > 29.5)
1 - pnorm(29.5, mean=24, sd=4)
# – P(X = 23.8)
# • The probability of a continuous random variable to have the outcome equal
# to a single value is zero, i.e. P(X = 23.8) = 0.