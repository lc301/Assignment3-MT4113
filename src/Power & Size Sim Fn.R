# Functions for Simulating Data for Power and Size for various Scenarios 

# Timo assisted me with understanding how to simulate data that contains 
# correlation in order to be tested for correlation and power 
# Parts of the code where Timo assisted will be indicated with a comment 
# that states: Timo Helped Me!

# Simulation Function for correlation when conducting the power: when Beta1 >0
# INPUTS: 
# n: number of random samples to generate
# x: value to multiple the standard deviation by (default = 1)
# y: value to increase/decrease beta1 by (default = 0)
# dat: data that contains a column for land and ocean anomaly temperature with 
#       no NA variables 

# OUTPUT: 
# a list of: 
# beta0: the beta0 for the regression model 
# beta1: the beta1 for the regression model
# cor_s: the average spearman correlation value 
# cor_p: the average pearson correlation value 
# power_p: power of pearson correlation test
# power_s: power of spearman correlation test
# plot: plot of simulated data groups

sim_fn_corr_pow <- function(n, x =1, y = 0, sim = 1000, dat){
  if (!is.numeric(n)) stop ("invalid agrument")
  if (!(n >= 1)) stop ("invalid agrument")
  if (!is.numeric(x)) stop ("invalid agrument")
  if (!is.numeric(y)) stop ("invalid agrument")
  
  # Mean concentrations found for land 
  mu_l <- mean(dat$land_anomaly)
  # SD concentrations found for land 
  sd_l <- sd(dat$land_anomaly)
  # empty vector for p-values calculated in "pearson" correlation 
  p_val_p <- rep(0, sim)
  # empty vector for p-values calculated in "spearman" correlation 
  p_val_s <- rep(0, sim)
  # empty vector for correlation coefficient calculated in "pearson" correlation
  cor_p <- rep(0, sim)
  # empty vector for correlation coefficient calculated in "pearson" correlation 
  cor_s <- rep(0, sim)
  # Linear model to use when simulating data
  # Timo Helped Me!
  lm <- lm(ocean_anomaly ~ land_anomaly, data = dat)
  beta0 <- coef(lm)[1]  
  beta1 <- coef(lm)[2] + y
  
  # Loop over the number of times we want to simulate data
  for(i in 1:sim){
    # simulating data for land
    grp_l <- rnorm(n, mu_l * x, sd_l)     
    # simulating data for ocean 
    # Timo Helped Me!
    grp_o <- rnorm(n, (beta0 + beta1 * grp_l) * x, sd(residuals(lm)))
    # conducting a pearson correlation test and retaining correlation coefficient 
    cor_p[i] <- cor.test(grp_l, grp_o, method = "pearson")$estimate
    # conducting a spearman correlation test and retaining correlation coefficient 
    cor_s[i] <- cor.test(grp_l, grp_o, method = "spearman")$estimate
    # conducting a pearson correlation test and retaining all pvalues
    p_val_p[i] <- cor.test(grp_l, grp_o, method = "pearson")$p.value
    # conducting a spearman correlation test and retaining all pvalues
    p_val_s[i] <- cor.test(grp_l, grp_o, method = "spearman")$p.value
  }
  # Power of the test: Setting the assumption that ther is sig.correlation(<.05)
  # Timo Helped Me!
  power_p <- length(p_val_p[p_val_p < .05]) / length(p_val_p) 
  power_s <- length(p_val_s[p_val_s < .05]) / length(p_val_s) 
  # Plot new simulate data against each other 
  sim_plot <- plot(grp_o, grp_l, xlab = "Ocean Anamoly Temps", 
                   ylab = "Land Anamoly Temps",
                   main = "Ocean vs Land Temp Anamoly Sim Data")
  abline(lm, col="light blue")
  return(list = c(beta0 = beta0,
                  beta1 = beta1,
                  cor_est_p = mean(cor_p),
                  cor_est_s = mean(cor_s),
                  power_p = power_p, 
                  power_s = power_s, 
                  plot = sim_plot))
}

# Simulation Function for correlation when conducting the size: when Beta1 = 0
# INPUTS: 
# n: number of random samples to generate
# x: value to multiple the mu by (default = 1)
# dat: data that contains a column for land and ocean anomaly temperature with 
#       no NA variables 

# OUTPUT: 
# a list of: 
# beta0: the beta0 for the regression model 
# cor_s: the average spearman correlation value 
# cor_p: the average pearson correlation value 
# size_p: power of pearson correlation test
# size_s: power of spearman correlation test
# plot: plot of simulated data groups

sim_fn_corr_size<- function(n, x = 1, sim = 1000, dat){
  if (!is.numeric(n)) stop ("invalid agrument")
  if (!(n >= 1)) stop ("invalid agrument")
  if (!is.numeric(x)) stop ("invalid agrument")
  
  # Mean concentrations found for land 
  mu_l <- mean(dat$land_anomaly)
  # SD concentrations found for land 
  sd_l <- sd(dat$land_anomaly)
  # empty vector for p-values calculated in "pearson" correlation 
  p_val_p <- rep(0, sim)
  # empty vector for p-values calculated in "spearman" correlation 
  p_val_s <- rep(0, sim)
  # empty vector for correlation coefficient calculated in "pearson" correlation
  cor_p <- rep(0, sim)
  # empty vector for correlation coefficient calculated in "pearson" correlation 
  cor_s <- rep(0, sim)
  # Linear model to use when simulating data
  # Timo Helped Me!
  lm <- lm(ocean_anomaly ~ land_anomaly, data = dat)
  beta0 <- coef(lm)[1]
  beta1 <- 0
  # Loop over the number of times we want to simulate data
  for(i in 1:sim){
    # simulating data for land
    grp_l <- rnorm(n, mu_l * x, sd_l)     
    # simulating data for ocean
    # Timo Helped Me!
    grp_o <- rnorm(n, (beta0 + beta1 * grp_l) * x, sd(residuals(lm)))
    # conducting a pearson correlation test and retaining correlation coefficient 
    cor_p[i] <- cor.test(grp_l, grp_o, method = "pearson")$estimate
    # conducting a spearman correlation test and retaining correlation coefficient 
    cor_s[i] <- cor.test(grp_l, grp_o, method = "spearman")$estimate
    # conducting a pearson correlation test and retaining all pvalues
    p_val_p[i] <- cor.test(grp_l, grp_o, method = "pearson")$p.value
    # conducting a spearman correlation test and retaining all pvalues
    p_val_s[i] <- cor.test(grp_l, grp_o, method = "spearman")$p.value
  }
  # Size of the test: Setting the assumption that there is sig.correlation(<.05)
  size_p <- length(p_val_p[p_val_p < .05]) / length(p_val_p) 
  size_s <- length(p_val_s[p_val_s < .05]) / length(p_val_s) 
  # Plot new simulate data against eachother 
  sim_plot <- plot(grp_l, grp_o, xlab = "Ocean Anamoly Temps", ylab = 
                     "Land Anamoly Temps", main = "Ocean vs Land Temp Anamoly Sim Data")
  abline(lm, col="light blue")
  return( list = c(beta0 = beta0,
                   cor_est_p = mean(cor_p),
                   cor_est_s = mean(cor_s),
                   size_p = size_p, 
                   size_s = size_s,
                   plot = sim_plot))
}
