# A machine for checking computer chips uses on average 65 milliseconds per
# check with a standard deviation of 4 milliseconds. A newer machine, potentially to be bought, uses on average 54
# milliseconds per check with a standard
# deviation of 3 milliseconds. It can be used that check times can be assumed
# normally distributed and independent.
# a) What is the probability that the time savings per check using the new machine is less than 10 milliseconds is?
# Let Xold ∼ N(65, 42
# ) and Xnew ∼ N(54, 32
# ). If we let U denote the time saving per
# check, we have that U = Xold − Xnew. We now from Theorem 2.40 that a linear
# combination of normal random variables is also normal and from Theorem 2.56
# E(U) = E(Xold − Xnew) = E(Xold) − E(Xnew) = 65 − 54 = 11,
# and
# V(U) = V(Xold − Xnew) = V(Xold) + V(Xnew) = 16 + 9 = 25.
# Hence U ∼ N(11, 52
# ).
# We are asked to find P(U < 10), so
pnorm(q=10, mean=11, sd=5)


# b) What is the mean (µ) and standard deviation (σ) for the total time use for
# checking 100 chips on the new machine is?
# Let U be the total time use for checking 100 chips on the new machine, that is
# U =
# 100
# ∑
# i=1
# Xi
# where Xi ∼ N(54, 32).
# So we find, using mean and variance identities in Theorem
# 2.56, that
# µ = E(U) = E
#
# 100
# ∑
# i=1
# Xi
# !
# = E(X1 + X2 + · · · + X100)
# = E(X1) + E(X2) + · · · + E(X100)
# =
# 100
# ∑
# i=1
# E(Xi) =
# 100
# ∑
# i=1
# 54 = 100 · 54 = 5400,
# and
# σ
# 2 = V(U) = V
#
# 100
# ∑
# i=1
# Xi
# !
# = V(X1 + X2 + · · · + X100)
# = V(X1) + V(X2) + · · · + V(X100)
# =
# 100
# ∑
# i=1
# V(Xi) =
# 100
# ∑
# i=1
# 9 = 100 · 9.
# So the answer is: µ = 100 · 54 = 5400 ms and σ = 3 ·
# √
# 100 = 30 ms.