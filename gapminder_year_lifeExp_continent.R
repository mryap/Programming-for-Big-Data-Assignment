library(gapminder)
data(gapminder)

head(gapminder)


library(dplyr)


# gapminder %>%
gapminder %>%
  # filter(year == 2007) %>%
  group_by(continent) %>%


library(ggplot2)    
# Use `geom_smooth(method=lm)` in ggplot as part of a scatter plot 
# of life expectancy vs. year, grouped by continent 
# (e.g., using the `color` aesthetic mapping).

ggplot(gapminder, aes(x=year, y=lifeExp, color=continent)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth(method=lm,   # Add linear regression line
              se=FALSE) +  # Don't add shaded confidence region
  labs(title="Life expectancy over time", x = "year", y = "life expectancy")
