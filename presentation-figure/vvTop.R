library(datasets)
library(ggplot2)
library(plotly)

max <- 200
vvTop <- volcano
vvTop[vvTop > max] <- max

plot_ly(z = ~vvTop, type = "surface")
