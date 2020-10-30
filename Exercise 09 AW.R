# load data
setwd ("/Users/ashlynwang/Biocomputing2020_Tutorial11")

# create a function that reads data from each file in specified directory
# calculate coefficient of variation
# return values as vector
# create function that has 50 observations
# report an error if any file has less than 50 observations
# allow user to override this behavior and only receive a warning if 50 observations are not present
# if a file doesn’t have the correct number of columns or the provided data includes NA’s.
coVariation <- function(x){
  input<-list.files(path=choose.dir(x))
  
  average = mean(input)
  stdDev = sd(input)
  coefficientV = stdDev/average
  
  observations <- scan(input)
  
  if(observations<50){
    print("Warning: this file has observations less than 50.")
    usermsg <- readline(prompt = "Override? Y or N")
    }while (usermsg != Y){
      print("End")
  }else{
    return(coefficientV)
  }
    
  }



