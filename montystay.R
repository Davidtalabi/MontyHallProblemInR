montystay = function(i)
{
  
  # set up vector of doors
  doors = c(1,2,3)
  
  # randomly pick where the car is
  cardoor = sample(doors, size=1, replace = T)
  
  # randomly pick players door
  playerdoor = sample(doors, size=1, replace=T)
  
  if (playerdoor == cardoor){
    return(TRUE)
  } else{
    return(FALSE)
  }
}
# validate function:
# run experiment 10000 times
results = sapply(c(1:10000), montystay)
# print computed probability
print(mean(results))

    



