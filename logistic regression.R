mtcars <- data.frame(mtcars)
str(mtcars)

#am is dependent variable or response variable
#automatic = 0 and manual = 1
#dependent and then independent variable
model <- glm(formula = am~wt==3, data = mtcars, family = "binomial")
model

#getting the range of the data set
range(mtcars$wt)

#getting a sequence from 1.513 to 5.413 with increment of 0.1
x <- seq(min(mtcars$wt),max(mtcars$wt),0.1)

#using the predict command 
y <- predict(model,list(wt=x),type="response")

#plotting just am and wt
plot(mtcars$wt, mtcars$am)

#plotting x and y logistic regression plot
plot(x,y)

#summary of model
summary(model)

#exponential
exp(x)