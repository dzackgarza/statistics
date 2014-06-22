w = read.table("CHMOVIE.csv", header = TRUE, sep=",")
hist(w$Tobacco/60, main="Frequency of Tobacco Use", xlab="Total Time in Minutes", ylim=c(0, 40))

cat("Mean: ", mean(w$Tobacco))
cat("Median: ", median(w$Tobacco))
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
cat("Mode: ", Mode(w$Tobacco))
cat("Midrange: ",(max(w$Tobacco) + min(w$Tobacco))/2)

cat("Range: ",max(w$Tobacco) - min(w$Tobacco))
cat("Sample Standard Deviation: ", sd(w$Tobacco))

