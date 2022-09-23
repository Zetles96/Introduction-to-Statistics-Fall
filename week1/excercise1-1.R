#imported data
Females = c(2474, 2547, 2830, 3219, 3429, 3448, 3677, 3872, 4001, 4116)
Males = c(2844, 2863, 2963, 3239, 3379, 3449, 3582, 3926, 4151, 4356)


# a) What is the sample mean, variance and standard deviation of the female
# births? Express in your own words the story told by these numbers. The
# idea is to force you to interpret what can be learned from these numbers.
# Manual
meanFunc = function (x) {
    y = 0
    for (i in x){
        y = y + i
    }
    return(y/length(x))
}
varianceFunc = function(x) {
    y = 0
    meanx = meanFunc(x)
    for (i in x){
        y = y + ((i - meanx)^2)
    }
    return(1/(length(x)-1) * y)
}

standardDeviation = function(x){
    return(varianceFunc(x)^(1/2))
}

meanFemales = meanFunc(Females)
varianceFemales = varianceFunc(Females)
standardDeviationFemales = standardDeviation(Females)

# Inbuild Func
print(mean(Females))
print(var(Females))
print(sd(Females))

# B Compute the same summary statistics of the male births. Compare and
# explain differences with the results for the female births.
# manual
meanMales = meanFunc(Males)
varianceMales = varianceFunc(Males)
standardDeviationMales = standardDeviation(Males)

# C) Find the five quartiles for each sample—and d<raw the two box plots with
# pen and paper (i.e. not using R.)
quantileFemales = quantile(Females, type = 2)
print(quantileFemales)
quantileMales = quantile(Males, type = 2)
print(quantileMales)
boxplot(list(quantileFemales, quantileMales), col=2:3, names=c("Females", "Males"))

# D) Are there any “extreme” observations in the two samples (use the modified
# box plot definition of extremness)?

# E) What are the coefficient of variations in the two groups?
coefficientFunc = function(x) {
    return(quantile(x)/meanFunc(x))
}
coefficientFemales = coefficientFunc(Females)
coefficientMales = coefficientFunc(Males)
