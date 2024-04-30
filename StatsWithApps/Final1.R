library(mosaic)
group <- c(rep("Caffeine", 40), rep("No Caffeine", 40))
value <- c(rep(1, 31), rep(0, 9), rep(1, 26), rep(0, 14))
my_data <- data.frame(Group = group, Value = value)
head(my_data)

set.seed(1123)
Blood.null <- do(5000) * diffprop(shuffle(value) ~ group, success = 1,
data = my_data)
#head(Blood.null, 2)

#dotPlot(~ diffprop, data = Blood.null,
#groups = (diffprop >= 0.125),
#width = 0.0001, cex = 2)

round(favstats(~diffprop, data = Blood.null)[c("mean","sd")],3)
diffprop=-0.125
z<-diffprop/0.102
z
