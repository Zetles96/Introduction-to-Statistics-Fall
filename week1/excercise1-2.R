# a) What is the median of the 251 achieved grades?
data <- read.csv("C:\Users\madsn\Documents\Git\Introduction-to-Statistics-Fall\soenderborg1", header=TRUE, stringsAsFactors=FALSE)
allScores = (data$total[1:7])

# er lige meget medianen er 4
# b) What are the quartiles and the IQR (Inter Quartile Range)?
q1 = (0.25 * 251) # 0 er svaret
q3 = (0.75 * 251) # 7 r svaret
iqr = 7