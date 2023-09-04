library(tidyverse)
library(dsbox)

glimpse(edibnb)
names(edibnb)

ggplot(data = edibnb)+
  geom_histogram(mapping = aes(x = price), binwidth = 150)+
  facet_wrap(~neighbourhood)+
  labs(
    x = "Airbnb listing price, in £",
    y = "Frequency",
    title = "Distribution of Airbnb nightly rates in Edinburgh",
    subtitle = "By neighbourhood"
  )

ggplot(data = edibnb)+
  geom_histogram(mapping = aes(x = review_scores_rating)) +
  facet_wrap(~neighbourhood) +
  labs(
    x = "Average rating score of property",
    y = "Frequency",
    title = "Distribution of Airbnb rating scores in Edinburgh",
    subtitle = "By neighbourhood"
  )