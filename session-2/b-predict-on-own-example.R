# install.packages("remotes")
remotes::install_github("aoles/EBImage")
# zeichne ein Bild
# go to http://convert-my-image.com/ImageConverter
# save image 
library("EBImage")
orig <- readImage("/Users/lorenz/Documents/short-term back-up/screen-3.jpg.jpg")

# convert to gray scale image
orig <- channel(orig, "gray")
plot(orig)
plot(test)
# use @ for S4 like you use $ for S3
new_data <- orig@.Data %>% matrix(ncol = 28^2, byrow = FALSE)

# this is not the same. This is wrong
new_data_with_reshape <- orig@.Data %>% array_reshape(c(1, 28^2))

identical(new_data, new_data_with_reshape)

# look at the image
new_data %>% matrix(nrow = 28) %>% as.Image() %>% plot()

test_images[3, ] %>% matrix(nrow = 28) %>% as.Image() %>% plot()

# check which 
test_labels[3, ] %>% # comma important. take all elements of third row
  which.max()
# index 1 = number 0, 
# index 2 = number 1
# etc...

# predict class of our example
base %>%
  predict(new_data) %>%
  which.max()
