# Clear the R screen, like how Matlab has a function "clc" and Linux/Unix shell has "clear"
clc <- function() cat(rep("\n",100))
# This basically does cat('\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n') etc...
# And it's just a visual thing
# Call it by going clc()

# Or

cat("\014")

# Or

cat("\f")

#Note that in Linux ctrl+l will work
#Note that in R it's the same thing (and Rstudio)