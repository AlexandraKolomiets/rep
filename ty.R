install.packages("maps")

install.packages('ggplot2')
library(maps)
library(ggplot2)
library(dplyr)
world_map <- map_data('world')
library(ggplot2)
axes <- ggplot(data=world_map, mapping=aes(x=long, y=lat, group=group)) + geom_polygon()
axes <- ggplot(data=map_data('usa'), mapping=aes(x=long, y=lat, group=group)) + geom_polygon()
axes



generate_data <- function(k, m, sd)  {
  return(rnorm(k, m, sd))
}

estimate <- function(est, data) {
  return(est)
}

evaluate <- function()  {
  return(q)
}

iteration <- function() {
  data <- generate_data()
  est <- estimate(data)
  return(evaluate(est))
}

iteration(
  
simulation <- function(n) {
  results <- C()
  for(1:n) {
    results <- c(results, iteration())
  }
  mean(results)
}
