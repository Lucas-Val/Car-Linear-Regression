# Simple Linear Regression Project in R
# Dataset: mtcars (built-in)
# Purpose: Predict miles per gallon (mpg) from horsepower (hp)

# loading the data set 
data(mtcars)
# viewing the first rows of data 
head(mtcars)
# creating a scatter plot: mpg vs hp
plot(mtcars$hp, mtcars$mpg,
     main = "Miles Per Gallon vs Horsepower", 
     xlab = "Horsepower (hp)",
     ylab = "Miles Per Gallon (mpg)",
     pch = 19,
     col= "Black"
     )
# Building a linear regression to determine if there is a relationship -
# between our dependent variable (mpg) vs our independent variable (hp)
model <- lm(mpg ~ hp, data = mtcars)
# lets view the model summary 
summary(model)
# Plotting the data again
plot(mtcars$hp, mtcars$mpg,
     main = "Miles Per Gallon vs Horsepower", 
     xlab = "Horsepower (hp)",
     ylab = "Miles Per Gallon (mpg)",
     pch = 19,
     col= "Black"
     )
# Adding the regression line
abline(model, col = "Red", lwd = 3)
# lets predict the MPG for a new car with 150 hp 
# creating a new data frame with hp = 150
new_data <- data.frame(hp = 150)
# now lets predict using our current model
predict(model, newdata = new_data)
# lets check residuals 
plot(model$residuals,
     main = "Residual Plot",
     ylab = " Residuals",
     xlab = "Index",
     pch = 19,
     col = "red"
     )
abline(h = 0, lty =2)

# Conclusion:
# This simple linear regression analysis used the built-in mtcars dataset
# to predict Miles per Gallon (mpg) based on Horsepower (hp).
# Key findings:
# - Regression equation: mpg = 30.10 - 0.068 * hp
# - R-squared: 0.60 → Horsepower explains 60% of the variance in mpg
# - P-value for hp: < 0.001 = Statistically significant
# - Residual plot suggests a decent linear fit with a few outliers
#
# Next steps (if extended):
# - Try multiple regression by adding more variables (e.g. weight)
# - Check for interaction effects or nonlinear models
