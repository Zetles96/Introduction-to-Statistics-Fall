library(ggplot2)
#import the data into a dataframe
# If windows is booted use this
#df = read.csv("C:\\Users\\madsn\\Documents\\Git\\Introduction-to-Statistics-Fall\\soenderborg1\\soenderborg1_data.csv",
#              header = TRUE, stringsAsFactors = FALSE, sep = ";")
# if arch is booted use this
df = read.csv("/home/zetles/windowsDocuments/Git/Introduction-to-Statistics-Fall/soenderborg1/soenderborg1_data.csv",
              header = TRUE, stringsAsFactors = FALSE, sep = ";")

# dim(df)
# names(df)
# head(df)
# tail(df)
summary(df)
# str(df)
dens = density(x = df$Q1, bw = "SJ", kernel = "epanechnikov", na.rm = T, n = 973)
hist(df$Q1, xlab = "Heat consumption for house 1", prob = T, breaks = 40, col = "firebrick")
lines(dens, col = "darkseagreen1", lwd = 3)

ggplot(df[!is.na(df$Q1),]) +
  geom_histogram(aes(Q1, y = ..density..), bins = 40, fill = "firebrick4") +
  geom_density(aes(Q1), col = "darkgreen", lwd = 3, kernel = "epanechnikov") +
  xlab("Heat") +
  ylab("Density") +
  theme_bw()

# some descriptiva analysis of house one
summary(df$Q1)
var(df$Q1, na.rm = TRUE)
sd(df$Q1, na.rm = TRUE)

# Converts the variable 't' to a date variable in R and chec
# ks it with summary
df$t <- as.Date(x = df$t, format = "%Y-%m-%d")
summary(df$t)

# Plot of heat consumption over time
plot(df$t, df$Q1, type = "l", xlim = as.Date(c("2008-10-02", "2010-10-01")),
     ylim = c(0, 9), xlab = "Date", ylab = "Heat consumption", col = 2)
lines(df$t, df$Q2, col = 3)
lines(df$t, df$Q3, col = 4)
lines(df$t, df$Q4, col = 5)
## Add a legend
legend("topright", legend = paste0("Q", c(1, 2, 3, 4)), lty = 1, col = 2:5)

# selects data from january to februrary 2010
dfsel <- subset(df, "2010-01-01" <= t & t < "2010-3-01")

# boxplot of the heat consumption by house
boxplot(dfsel[, c("Q1", "Q2", "Q3", "Q4")],
        xlab = "House", ylab = "Heat consumption")
summary(dfsel)
print("======================")
apply(dfsel, 2, function(x) {
  c(sum = sum(!is.na(x)),
    var = var(x, na.rm = TRUE), sd = sd(x, na.rm = TRUE)) })

# qqnormplot
qqnorm(dfsel$Q1)
qqline(dfsel$Q1)
selected <- c("Q1","Q2","Q3","Q4")
apply(dfsel[, selected],2,function (x){
  t.test(x, conf.level = 0.95)$conf.int
})
t.test(dfsel$Q1, mu=2.38)
t.test(dfsel$Q1, dfsel$Q2)

cor(df[, c("Q1","G")], use="pairwise.complete.obs")
plot(df$Q1,df$G)