library("gapminder")

gap_tsv <- system.file("gapminder.tsv", package = "gapminder")
gap_tsv <- read.delim(gap_tsv)
str(gap_tsv)

dim(gap_tsv)

head(gap_tsv)

#gap_tsv %>% # Singapore 
#  filter(country == "Singapore")

suppressPackageStartupMessages(library("dplyr"))
gapminder %>%
  filter(year == 1950) %>%
  group_by(continent) %>%
  summarise(lifeExp = median(lifeExp))
  summarise(gdpPercap = median(gdpPercap))

