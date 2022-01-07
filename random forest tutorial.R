## ----------------------------------------------------------------------- ##
                      # Lyon Tutorial - Random Forest
## ----------------------------------------------------------------------- ##
# Code written by: Nick J Lyon

# Clear environment
rm(list = ls())

# Get an object of the directory to this project file
myWD <- getwd()

# Get this package retrieving function
  ## This function will automatically load packages that you already have
  ## and will install packages you don't yet have then load them
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = T)
  sapply(pkg, require, character.only = T)
}

# Define the packages that the script needs
myPackages <- c("tidyverse", "randomForest", "permimp", "car", "vegan")

# Load the packages
ipak(myPackages)

## --------------------------------------------------- ##
               # Part 1: Prepare Data ####
## --------------------------------------------------- ##
# We'll use data from the "vegan" package

# Load some lichen species data
data(varespec)

# And some chemical predictor variables to go along with those species
data(varechem)

# Get just one of the lichen species to use as a response variable
varespec.v2 <- dplyr::select(varespec, Empenigr)

# Bind the response and predictors together
data.obj <- cbind(varechem, varespec.v2)

# Check it out
head(data.obj)

# Want to learn more about the dataset?
?varespec

## --------------------------------------------------- ##
     # Part 2: Random Forest with randomForest ####
## --------------------------------------------------- ##





## --------------------------------------------------- ##
 # Part 3: Conditional Permutation Importance (CPI) ####
## --------------------------------------------------- ##





# END ####

