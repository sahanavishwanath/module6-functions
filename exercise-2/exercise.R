# Exercise 2: writing and executing functions (II)

# Define a function `CompareLength` that takes in 2 character strings, and returns
# the sentence of the form
#   "The difference in length is N"
CompareLength <- function(string1, string2){
  diff <- abs(nchar(string1) - nchar(string2))
  diff_string <- paste("The difference in length is", diff)
  return(diff_string)
}

# Pass two strings of different lengths to your `CompareLength` function
CompareLength("pea", "watermelon")

# Define a function `DescribeDifference` that will return one of the following statements:
# "Your first string is longer by N characters"
# "Your second string is longer by N characters"
DescribeDifference <- function(string1, string2){
  diff <- nchar(string1) - nchar(string2)
  if(diff > 0){
    return(paste("Your first string is longer by", diff, "characters"))
  }else{
    diff <- diff * -1
    return(paste("Your second string is longer by", diff, "characters"))
  }
}

# Pass two strings of different lengths to your `DescribeDifference` function
DescribeDifference("I wanna be the very best", "like no one ever was")
