# A manufacturer of concrete items knows that the length (L) of his items are reasonably normally distributed with
# µL = 3000 mm and σL = 3 mm. The requirement for these elements is that the length should be not more than 3007 mm
# and the length must be at least 2993 mm.
# a) The expected error rate in the manufacturing will be?
# The expected error rate is:
# P(L ≤ 2993) + P(L ≥ 3007) = P(L ≤ 2993) + 1 − P(L ≤ 3007)
# = 2 · P(L ≤ 2993) = 0.01963066.
# In R:
pnorm(2993, mean=3000, sd=3) + 1 - pnorm(3007, mean=3000, sd=3)
2*pnorm(2993, mean=3000, sd=3)

# b) The concrete items are supported by beams, where the distance between
# the beams is called Lbeam and can be assumed normal distributed. The
# concrete items length is still called L. For the items to be supported correctly, the following requirements for these
# lengths must be fulfilled: 90 mm <
# L − Lbeam < 110 mm. It is assumed that the mean of the distance between
# the beams is µbeam = 2900 mm. How large may the standard deviation
# σbeam of the distance between the beams be if you want the requirement
# fulfilled in 99% of the cases?
# The following should be fulfilled
# P(90 < L − Lbeam < 110) = 0.99.
# We know that E(L − Lbeam) = 3000 − 2900 = 100 and that
# V(L − Lbeam) = 9 + σ
# 2
# beam.
# So transforming to the standard normal gives
# 0.99 = P(90 < L − Lbeam < 110) = P
# 
# 
# −10
# q
# 9 + σ
# 2
# beam
# < Z <
# 10
# q
# 9 + σ
# 2
# beam
# 
#  .
# So since for the standard normal, we can find that
# 0.99 = P(−z0.005 < Z < z0.005),
# where z0.005 = 2.576 (in R: qnorm(0.995)), we can solve
# 2.576 =
# 10
# q
# 9 + σ
# 2
# beam
# ,
# for σbeam
# σbeam =
# s
# 10
# 2.5762
# − 9 = 2.464.
# So the answer becomes: σbeam = 2.46 mm.