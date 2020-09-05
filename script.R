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

#item c
# in this case we need calculate the indexes of correlations between crime rates and other variables.

Boston.corr = cor(Boston)
Boston.corr.crim = Boston.corr[-1,1]

print(
  Boston.corr.crim[order(abs(Boston.corr.crim), decreasing = T)]
)

par(mfrow=c(2,2))
# get the four most correlated variables
aux = names(Boston.corr.crim[order(abs(Boston.corr.crim), decreasing = T)][1:4])
for(i in aux){
  plot(get(i), crim, xlab=i)
}

#item d

summary(crim)
#crime rates
#Yes, because the maximum value is much higher then the 3th quartile counting crime reates above 30 
length(crim[crim>30])

#Tax rates

hist(tax)

#There are particulary suburbs in a higher level, counting values above 500.

length(tax[tax>500])

#Pupil-Teacher Ratio

hist(ptratio)
#It seems a bit equilibrate between values of [14, 22], specially [20,21]. Counting values bellow 14 - the smallest ratios.

length(ptratio[ptratio<14])

#item e

table(chas)

#the value 1 says that the suburb bounds the charles rivers, there are 35 suburbs that bound river

#item f

median (ptratio)

