df = data.frame(Patient = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15),
                Before = c(9.1, 8.0, 7.7, 10.0, 9.6, 7.9, 9.0, 7.1, 8.3, 9.6, 8.2, 9.2, 7.3, 8.5, 9.5),
                After = c(8.2, 6.4, 6.6, 8.5, 8.0, 5.8, 7.8, 7.2, 6.7, 9.8, 7.1, 7.7, 6.0, 6.6, 8.4)
                )
# a) What is the median of the cholesterol measurements for the patients before
# treatment, and similarly after treatment?
medianBefore = median(df$Before)
medianAfter = median(df$After)

# b) Find the standard deviations of the cholesterol measurements of the patients 
# before and after treatment. 
sdBefore = sd(df$Before)
sdAfter = sd(df$After)
# c) Find the sample covariance between cholesterol measurements of the patients 
# before and after treatment.
covariance = cov(df$Before,df$After)
# d) Find the sample correlation between cholesterol measurements of the patients 
# before and after treatment.
corelation = cor(df$Before,df$After)
# e) Compute the 15 differences (Dif = Before − After) and do various summary 
# statistics and plotting of these: sample mean, sample variance, sample standard 
# deviation, boxplot etc.
difference = df$Before - df$After
meandiff = mean(difference)
meanvariance = var(difference)
sddiff = sd(difference)
