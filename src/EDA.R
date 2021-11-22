source("data/data_formatting.R")

# Exploratory Analysis
# Plot this new data frame
plot(new_temp)

# Histograms of Land/Ocean Anomaly 
hist(new_temp$land_anomaly, xlab = "Temperature in Celius", 
     main = "Mean Temperatures Over Land")
hist(new_temp$ocean_anomaly, xlab = "Temperature in Celius", 
     main = "Mean Temperatures Over Ocean")

# Plot of Ocean vs Land anomaly
plot(new_temp$ocean_anomaly,new_temp$land_anomaly, 
     xlab = "Ocean Anamoly Temps", ylab = "Land Anamoly Temps", 
     main = "Ocean vs Land Temp Anamoly")

