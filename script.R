library(MASS) #load library
#item A
Boston # dataset
?Boston # info of boston dataSet

dim(Boston)
#The rows represent observations of the U.S. Census Tracts in the Boston Area. The columns presents the measures of the Census Variables.

#item b
attach(Boston)

pairs(Boston)

#in the graph we can find that the high radio frequency index of accessibility to radial highways contains the highest level of per capita crime rate per city
#we can also see that medv is inversely proportional to lstat- lower status of the population, nox - nitrogen oxides concentration and indus - proportion of non-retail businnes acres per town and directly proportional to rm- average number of rooms per dewlling
