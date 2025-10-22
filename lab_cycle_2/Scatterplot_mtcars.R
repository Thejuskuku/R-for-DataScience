# Convert 'cyl' to a factor
mtcars$cyl <- as.factor(mtcars$cyl)

# Define a color palette
colors <- c("purple", "green", "orange")

# Create the scatterplot
plot(mpg ~ disp, data = mtcars,
     main = "Scatterplot of MPG vs. Displacement",
     xlab = "Displacement (cu.in.)",
     ylab = "Miles per Gallon (MPG)",
     col = colors[mtcars$cyl],
     pch = 19) # Use solid circles to match the legend

# Add the legend
legend("topright",
       legend = levels(mtcars$cyl),
       title = "Number of Cylinders",
       col = colors,
       pch = 19,  # Specifies solid circles in the legend
       bty = "y")