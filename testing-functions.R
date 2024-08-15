file_prefix <- c("temp", "ph", "salinity")
file_suffix <- c(1, 2, 3, 4, 5)

for(i in seq_along(file_prefix)) {
  for(j in seq_along(file_suffix)){
    print(paste0(file_prefix[i], "_", file_suffix[j]))
  }
}

birddog_sum <- function(bird, dog){
  pets <- bird + dog
  return(pets)
}

x <- birddog_sum(bird = 2, dog = 5)



double_it <- function(x){
  print(2 * x)
}

double_it(4)
double_it(1:4)

exclaim_age <- function(age) {
  print(paste("I am", age, "years old!"))
}
exclaim_age(22)


find_max <- function(val1, val2) {
  if(val1 > val2){
    return(val1)
  } else if(val2 > val1) {
    return(val2)
  }
}

find_max(1, 500)


quarter_splits <- c(1, 1.1, 1.2, 1.1, 1.4, 1.5, 1.6, 1.4)
half_splits <- vector("numeric", length(quarter_splits)-1)


for(i in seq_along(half_splits)) {
  half_splits[i] <- quarter_splits[i] + quarter_splits[i +1]
} 
print(half_splits)




  animal_age <- function(animal, age) {
    
    
    if(!animal %in% c("dog", "goat")) {
      stop("Oops! Animal must be a dog or goat")
    }
    if(is.numeric(age) == FALSE) {
      stop("The age must be a number greater than 0")
    }
    if(age <= 0) {
      stop("Age must be greater than 0")
    }
    if(animal == "dog") {
      print(age * 7)
    }else if(animal == "goat") {
      print(age * 4.7)
    }
  }

  
  animal_age("dog", -1)
  
  
  
dog_choice <- data.frame(dog_name = c("Khora",
                                      "Teddy", 
                                      "Waffle",
                                      "Banjo"), 
                         food = c("everything",
                                  "salmon", 
                                  "pancakes",
                                  "chicken"))

library(tidyverse)


dog_menu <- function(name){
  my_sub <- dog_choice |> 
    filter(dog_name == name)
  print(paste("My name is", my_sub$dog_name, "and I like to eat", my_sub$food))
}

dog_menu("Waffle")



calc_windpower <- function(rho, radius, windspeed) {
  
  if(windspeed > 130)
  {
    warning("Wow, that's fast! Are you sure?")
  }
  if(rho > 1.225) {
    warning("That air density is suspicious. Are you sure?")
  }
  if(radius <0) {
    stop("rotor radius must be a positive value (meters).")
  }
  
  0.3 * rho *pi *(radius^2) * (windspeed^3)
}

calc_windpower(2, -1, 50)
