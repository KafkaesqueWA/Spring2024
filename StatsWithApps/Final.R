# Creating the dataset
group <- c(rep("Caffeine", 40), rep("No Caffeine", 40))
value <- c(rep(1, 31), rep(0, 9), rep(1, 26), rep(0, 14))
my_data <- data.frame(Group = group, Value = value)

# Create mosaic plot
mosaicplot(table(my_data$Group, my_data$Value), main = "Mosaic Plot", color = c("blue", "red"))

