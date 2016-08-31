#use mean(data) to calculate the mean of a given dataset

library (gapminder)


#use the subset(data, ...) function to create a subset from a larger dataset
#create a subset that isolates our data

subsetAsia <- subset(gapminder, gapminder$continent == "Asia")
#display the contents of the Asia subset
subsetAsia

meanlifeExpAsia <- mean(subsetAsia$lifeExp)
meanlifeExpAsia

subsetEurope <- subset(gapminder, gapminder$continent == "Europe")
#display the contents of the Europe subset
subsetEurope

meanlifeExpEurope <- mean(subsetEurope$lifeExp)
meanlifeExpEurope

subsetAfrica <- subset(gapminder, gapminder$continent == "Africa")
#display the contents of the Asia subset
subsetAfrica

meanlifeExpAfrica <- mean(subsetAfrica$lifeExp)
meanlifeExpAfrica

subsetOceania <- subset(gapminder, gapminder$continent == "Oceania")
#display the contents of the Oceania subset
subsetOceania

meanlifeExpOceania <- mean(subsetOceania$lifeExp)
meanlifeExpOceania

subsetAmericas <- subset(gapminder, gapminder$continent == "Americas")
#display the contents of the Americas subset
subsetAmericas

meanlifeExpAmericas <- mean(subsetAmericas$lifeExp)
meanlifeExpAmericas

subsetUS <- subset(gapminder, gapminder$country == "United States")
#display the contents of the United States subset
subsetUS

meanlifeExpUS <- mean(subsetUS$lifeExp)
meanlifeExpUS

#store the final dataset in an R data (rda) file on disk. 
#This provides an efficient storage mechanism for R objects

save(subsetAsia, file='subsetAsia.rda',compress=T)
save(subsetEurope, file='subsetEurope.rda',compress=T)
save(subsetAfrica, file='subsetAfrica.rda',compress=T)
save(subsetOceania, file='subsetOceania.rda',compress=T)
save(subsetAmericas, file='subsetAmericas.rda',compress=T)
save(subsetUS, file='subsetUS.rda',compress=T)
  