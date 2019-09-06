#Montyswitch function by David Talabi ©2019

montyswitch = function(i)
{
  
  # set up vector of doors
  doors = c(1,2,3)
    
  # randomly pick where the car is
  cardoor = sample(doors, size=1, replace = TRUE)
    
  # randomly pick players door
  playerdoor = sample(doors, size=1, replace = TRUE)
    
  # pick hosts door: not player's door, not car door]
  hostdoor = doors[-c(cardoor,playerdoor)]
  
  
  if (length(hostdoor)>1){
    hostdoor = sample(hostdoor,1)}
  finalchoice = doors[-c(playerdoor,hostdoor)]
  if (finalchoice == cardoor) return(TRUE)
  else return(FALSE)
}
# validate function:
# run experiment 10000 times
results = sapply(c(1:10000), montyswitch)
# print computed probability
print(mean(results))

