source("src/Power & Size Sim Fn.R")
source("data/data_formatting.R")

# Setting the seed
set.seed(849)

# Scenario for large sample size for power:
sim_fn_corr_pow(300, dat = new_temp)
sim_fn_corr_pow(1000, dat = new_temp)

# Scenario for small sample size for power:
sim_fn_corr_pow(75, dat = new_temp)
sim_fn_corr_pow(35, dat = new_temp)
sim_fn_corr_pow(25, dat = new_temp)
sim_fn_corr_pow(20, dat = new_temp)
sim_fn_corr_pow(8, dat = new_temp)
sim_fn_corr_pow(7, dat = new_temp)
sim_fn_corr_pow(5, dat = new_temp)
sim_fn_corr_pow(4, dat = new_temp)
sim_fn_corr_pow(3, dat = new_temp)

# Scenario for large mu for power:
sim_fn_corr_pow(139, x = 2, dat = new_temp)
sim_fn_corr_pow(139, x = 5, dat = new_temp)
sim_fn_corr_pow(139, x = 10, dat = new_temp)

# Scenario for small muß for power:
sim_fn_corr_pow(139, x = 1/2, dat = new_temp)
sim_fn_corr_pow(139, x = 1/5, dat = new_temp)
sim_fn_corr_pow(139, x = 1/10, dat = new_temp)
sim_fn_corr_pow(139, x = 1/11, dat = new_temp)
sim_fn_corr_pow(139, x = 1/15, dat = new_temp)

# Scenario for larger beta1 for power: 
sim_fn_corr_pow(139, y = .01, dat = new_temp)
sim_fn_corr_pow(139, y = .05, dat = new_temp)
sim_fn_corr_pow(139, y = .09, dat = new_temp)

# Scenario for smaller beta1 for power: 
sim_fn_corr_pow(139, y = .01, dat = new_temp)
sim_fn_corr_pow(139, y =  .05, dat = new_temp)
sim_fn_corr_pow(139, y = -.1, dat = new_temp)
sim_fn_corr_pow(139, y = -.46, dat = new_temp)
sim_fn_corr_pow(139, y = -.47, dat = new_temp)
sim_fn_corr_pow(139, y = -.50, dat = new_temp)
sim_fn_corr_pow(139, y = -.53, dat = new_temp)
sim_fn_corr_pow(139, y = -.54, dat = new_temp)

# Scenario for large sample size for size:
sim_fn_corr_size(300, dat = new_temp)
sim_fn_corr_size(1000, dat = new_temp)

# Scenario for small sample size for size:
sim_fn_corr_size(75, dat = new_temp)
sim_fn_corr_size(35, dat = new_temp)
sim_fn_corr_size(25, dat = new_temp)
sim_fn_corr_size(20, dat = new_temp)
sim_fn_corr_size(8, dat = new_temp)
sim_fn_corr_size(7, dat = new_temp)
sim_fn_corr_size(5, dat = new_temp)
sim_fn_corr_size(4, dat = new_temp)
sim_fn_corr_size(3, dat = new_temp)

# Scenario for large mu for size:
sim_fn_corr_size(139, x = 2, dat = new_temp)
sim_fn_corr_size(139, x = 5, dat = new_temp)
sim_fn_corr_size(139, x = 10, dat = new_temp)

# Scenario for small mu for size:
sim_fn_corr_size(139, x = 1/2, dat = new_temp)
sim_fn_corr_size(139, x = 1/5, dat = new_temp)
sim_fn_corr_size(139, x = 1/10, dat = new_temp)
sim_fn_corr_size(139, x = 1/11, dat = new_temp)
sim_fn_corr_size(139, x = 1/15, dat = new_temp)


