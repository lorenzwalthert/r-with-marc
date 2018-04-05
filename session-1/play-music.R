# install.packages("audio")
library("audio")
play(0.5 * sin(1:100000/20)) # play a short sound of a fixed frequency

x <- seq(1, 10, by = 0.01)
plot(x, sin(x), type = "l")


sum(1, 3, 4, NA, na.rm = TRUE)
