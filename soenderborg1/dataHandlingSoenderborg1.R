#import the data into a dataframe
df = read.csv("C:\\Users\\madsn\\Documents\\Git\\Introduction-to-Statistics-Fall\\soenderborg1\\soenderborg1_data.csv",
              header = TRUE, stringsAsFactors = FALSE, sep = ";")

# dim(df)
# names(df)
# head(df)
# tail(df)
# summary(df)
# str(df)

hist(df$Q1, xlab = "Heat consumption for house 1", prob = TRUE)

norm()
