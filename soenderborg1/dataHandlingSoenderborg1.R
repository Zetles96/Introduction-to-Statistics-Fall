library(ggplot2)
#import the data into a dataframe
# df = read.csv("C:\\Users\\madsn\\Documents\\Git\\Introduction-to-Statistics-Fall\\soenderborg1\\soenderborg1_data.csv",
#              header = TRUE, stringsAsFactors = FALSE, sep = ";")

df = read.csv("/home/zetles/windowsDocuments/Git/Introduction-to-Statistics-Fall/soenderborg1/soenderborg1_data.csv",
              header = TRUE, stringsAsFactors = FALSE, sep = ";")

# dim(df)
# names(df)
# head(df)
# tail(df)
# summary(df)
# str(df)
dens = density(x = df$Q1, bw = "SJ", kernel = "epanechnikov", na.rm = T, n = 973)
hist(df$Q1, xlab = "Heat consumption for house 1", prob = T, breaks = 40, col = "firebrick")
lines(dens, col="darkseagreen1", lwd = 5)

ggplot(df[!is.na(df$Q1),]) + geom_histogram(aes(Q1, y = ..density..), bins = 40, fill = "firebrick4") + geom_density(aes(Q1), col = "darkgreen", lwd = 3, kernel = "epanechnikov") + xlab("Heat") + ylab("Density") + theme_bw()