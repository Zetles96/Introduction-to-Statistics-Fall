D <- read.csv("C:\\Users\\madsn\\Documents\\Git\\Introduction-to-Statistics-Fall\\soenderborg2\\soenderborg2_data.csv",
              header = TRUE, stringsAsFactors = FALSE, sep = ";")
summary(D)
# Make 't' a date variable in R
D$t <- as.Date(D$t, format = "%d/%m/%Y")
# Choose data from 15 Oct 2009 to 15 Apr 2010 for the four houses
D_model <- subset(D, ("2009-10-15" <= t & t < "2010-04-16") &
  (houseId %in% c(3, 5, 10, 17)))

# removes na values
D_model <- na.omit(D_model)

# summary statistics
summary(D_model)

var(D_model$Q)

var(D_model$Ta)

var(D_model$G)

sd(D_model$Q)

sd(D_model$Ta)

sd(D_model$G)

# scatter plots

plot(D_model$Q, D_model$Ta)

plot(D_model$Q, D_model$G)

#histograms

hist(D_model$Q)

hist(D_model$Ta)

hist(D_model$G)

# boxplots

boxplot(D_model$Q)

boxplot(D_model$Ta)

boxplot(D_model$G)

# Multi linear regression model

fit <- lm(Q ~ Ta + G, data = D_model)

summary(fit)

# model validation
# Observations against fitted values
plot(fit$fitted.values, D_model$Q, xlab = "Fitted values",
     ylab = "Heat consumption")

# Residuals against each of the explanatory variables
plot(D_model$Q, fit$residuals,
     xlab = "Ta", ylab = "Residuals")

plot(D_model$Ta, fit$residuals,
     xlab = "Ta", ylab = "Residuals")

plot(D_model$G, fit$residuals,
     xlab = "G", ylab = "Residuals")

# Residuals against fitted values
plot(fit$fitted.values, fit$residuals, xlab = "Fitted values",
     ylab = "Residuals")

# Normal QQ-plot of the residuals
qqnorm(fit$residuals, ylab = "Residuals", xlab = "Z-scores",
       main = "")
qqline(fit$residuals)

#  condfidence interval
confint(fit, level = 0.95)
