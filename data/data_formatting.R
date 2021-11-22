# Load need library 
library(dslabs) 

# Load in the data 
temp_carbon

# I notice the data contains various NA, removal of NA values and setting 
# data to another name to not mess with the raw data 
new_temp <-temp_carbon[-c(140:nrow(temp_carbon)),]