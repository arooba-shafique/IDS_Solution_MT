# Q3: Data Visualization using mtcars dataset

# Load dataset
data(mtcars)

# --- i. Scatter Plot: HP vs MPG ---
plot(mtcars$hp, mtcars$mpg,
     main = "Scatter Plot: Horsepower vs Miles per Gallon",
     xlab = "Horsepower (hp)",
     ylab = "Miles per Gallon (mpg)",
     pch = 19, col = "blue")
abline(lm(mpg ~ hp, data = mtcars), col = "red", lwd = 2)
correlation <- cor(mtcars$hp, mtcars$mpg)
print(paste("Correlation between HP and MPG:", round(correlation, 3)))

# --- ii. Boxplot: MPG by Cylinder Count ---
boxplot(mpg ~ cyl, data = mtcars,
        main = "Boxplot: Miles per Gallon by Cylinder Count",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon (mpg)",
        col = c("lightblue", "lightgreen", "lightpink"))
grid()

# --- iii. Histogram: Distribution of Car Weights ---
hist(mtcars$wt,
     main = "Histogram: Distribution of Car Weights",
     xlab = "Weight (1000 lbs)",
     col = "skyblue",
     border = "white",
     breaks = 8)
grid()
