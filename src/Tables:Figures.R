source("src/Power & Size Sim Fn.R")
source("data/data_formatting.R")

# Figures/Tables for Report: 

# Loading library for tables
library(gridExtra)

# Setting the seed 
set.seed(849)   

# Table 1:    
# Table of Sample how sample size affects the power and Coeff
# Rerunning the simulations so that they can be assigned to a v
# variable
a <- sim_fn_corr_pow(1000, dat = new_temp)
b <- sim_fn_corr_pow(300, dat = new_temp)
c <- sim_fn_corr_pow(8, dat = new_temp)
d <- sim_fn_corr_pow(6, dat = new_temp)
e <- sim_fn_corr_pow(5, dat = new_temp)
f <- sim_fn_corr_pow(4, dat = new_temp)
# Creating data frame
df.p <- data.frame( "Sample Size" = c(1000, 300, 8, 6, 5, 4),
                    "Pearson Coeff" = c(a[3], b[3], c[3], d[3], e[3], f[3]),
                    "Spearman Coeff" = c(a[4], b[4], c[4], d[4], e[4], f[4]),
                    "Power Pearson" = c(a[5], b[5], c[5], d[5], e[5], f[5]),
                    "Power Spearman" = c(a[6], b[6], c[6], d[6], e[6], f[6]))

png("results/Table 1.png",
    height = 200, width = 600)
grid.table(signif(df.p, 3))
dev.off()

# Setting the seed 
set.seed(849) 
# Table 2: 
# Table of Sample how sample size affects the size and Coeff
# Rerunning the simulations so that they can be assigned to a v
# variable
a <- sim_fn_corr_size(1000, dat = new_temp)
b <- sim_fn_corr_size(300, dat = new_temp)
c <- sim_fn_corr_size(8, dat = new_temp)
d <- sim_fn_corr_size(6, dat = new_temp)
e <- sim_fn_corr_size(5, dat = new_temp)
f <- sim_fn_corr_size(4, dat = new_temp)
# Creating data frame
df.s <- data.frame("Sample Size" = c(1000, 300, 8, 6, 5, 4),
                   "Pearson Coeff" = c(a[3], b[3], c[3], d[3], e[3], f[3]),
                   "Spearman Coeff" = c(a[4], b[4], c[4], d[4], e[4], f[4]),
                   "Size Pearson" = c(a[5], b[5], c[5], d[5], e[5], f[5]),
                   "Size Spearman" = c(a[6], b[6], c[6], d[6], e[6], f[6]))

png("results/Table 2.png", 
    height = 200, width = 600)
grid.table(signif(df.s, 3))
dev.off()

# Setting the seed 
set.seed(849)  
# Table 3: 
# Table of Sample how changing the mu affects the power and Coeff
# Rerunning the simulations so that they can be assigned to a v
# variable
f <- sim_fn_corr_pow(139, x = 5, dat = new_temp)
e <- sim_fn_corr_pow(139, x = 1/2, dat = new_temp)
d <- sim_fn_corr_pow(139, x = 1/5, dat = new_temp)
c <- sim_fn_corr_pow(139, x = 1/10, dat = new_temp)
b <- sim_fn_corr_pow(139, x = 1/11, dat = new_temp)
a <- sim_fn_corr_pow(139, x = 1/15, dat = new_temp)
# Creating data frame
df.f <- data.frame( "Mu Mulitplied By" = c(1/15, 1/11, 1/10, 1/5, 1/2, 5),
                    "Pearson Coeff" = c(a[3], b[3], c[3], d[3], e[3], f[3]),
                    "Spearman Coeff" = c(a[4], b[4], c[4], d[4], e[4], f[4]),
                    "Power Pearson" = c(a[5], b[5], c[5], d[5], e[5], f[5]),
                    "Power Spearman" = c(a[6], b[6], c[6], d[6], e[6], f[6]))

png("results/Table 3.png", 
    height = 200, width = 600)
grid.table(signif(df.f, 3))
dev.off()

# Setting the seed 
set.seed(849)  
# Table 4: 
# Table of Sample how changing the mu affects the size and Coeff
# Rerunning the simulations so that they can be assigned to a v
# variable
f <- sim_fn_corr_size(139, x = 5, dat = new_temp)
e <- sim_fn_corr_size(139, x = 1/2, dat = new_temp)
d <- sim_fn_corr_size(139, x = 1/5, dat = new_temp)
c <- sim_fn_corr_size(139, x = 1/10, dat = new_temp)
b <- sim_fn_corr_size(139, x = 1/11, dat = new_temp)
a <- sim_fn_corr_size(139, x = 1/15, dat = new_temp)
# Creating data frame
df.f <- data.frame( "Mu Mulitplied By" = c(1/15, 1/11, 1/10, 1/5, 1/2, 5),
                    "Pearson Coeff" = c(a[3], b[3], c[3], d[3], e[3], f[3]),
                    "Spearman Coeff" = c(a[4], b[4], c[4], d[4], e[4], f[4]),
                    "Size Pearson" = c(a[5], b[5], c[5], d[5], e[5], f[5]),
                    "Size Spearman" = c(a[6], b[6], c[6], d[6], e[6], f[6]))

png("results/Table 4.png", 
    height = 200, width = 600)
grid.table(signif(df.f, 3))
dev.off()

# Setting the seed 
set.seed(849)  
# Figure 2: 
g <- sim_fn_corr_pow(139, y = -.3, dat = new_temp)
h <- sim_fn_corr_pow(139, y = -.4, dat = new_temp)
i <- sim_fn_corr_pow(139, y = -.41, dat = new_temp)
j <- sim_fn_corr_pow(139, y = -.42, dat = new_temp)
k <- sim_fn_corr_pow(139, y = -.43, dat = new_temp)
l <- sim_fn_corr_pow(139, y = -.44, dat = new_temp)
m <- sim_fn_corr_pow(139, y = -.45, dat = new_temp)
n <- sim_fn_corr_pow(139, y = -.46, dat = new_temp)
o <- sim_fn_corr_pow(139, y = -.47, dat = new_temp)
p <-sim_fn_corr_pow(139, y = -.48, dat = new_temp)
q <- sim_fn_corr_pow(139, y = -.49, dat = new_temp)
r <- sim_fn_corr_pow(139, y = -.5, dat = new_temp)
s <- sim_fn_corr_pow(139, y = -.51, dat = new_temp)

# Creating data frame
df.m <- data.frame("Dist from Beta0" = c(g[2]-g[1], h[2]-h[1], i[2]-i[1],
                                         j[2]-j[1], k[2]-k[1],l[2]-l[1], 
                                         m[2]-m[1], n[2]-n[1], o[2]-o[1], 
                                         p[2]-p[1], q[2]-q[1],r[2]-r[1],
                                         s[2]-s[1]),
                   "Power Pearson" = c(g[5], h[5], i[5], j[5], k[5], l[5], 
                                       m[5], n[5], o[5], p[5], q[5], r[5],
                                       s[5]),
                   "Power Spearman" = c(g[6], h[6], i[6], j[6], k[6], l[6], 
                                        m[6], n[6], o[6], p[6], q[6], r[6], 
                                        s[6]))
# Figure 2:
png("results/Fig 2.png",
    height = 400, width = 800)
plot(df.m$Dist.from.Beta0, df.m$Power.Pearson * 100, pch = 19, col = "grey", 
     xlab = "Distance from Reference Beta0", 
     ylab = "Power (%)", main = "Pearson Power Assoicated with Altered Beta1")
lines(df.m$Dist.from.Beta0,df.m$Power.Pearson * 100, col = "light blue",
      lwd = 1)
abline(h = 80, lty="dashed")
dev.off()

# Figure 3: 
png("results/Fig 3.png", 
    height = 400, width = 800)
plot(df.m$Dist.from.Beta0, df.m$Power.Spearman * 100, pch = 19, col = "grey", 
     xlab = "Distance from Reference Beta0", 
     ylab = "Size (%)", main = "Spearman Power Assoicated with Altered Beta1")
lines(df.m$Dist.from.Beta0,df.m$Power.Spearman * 100, col = "light blue",
      lwd = 1)
abline(h = 80, lty="dashed")
dev.off()

# Setting the seed 
set.seed(849)  
# Figure 1: 
png("results/Fig 1.png", 
    height = 600, width = 600)
par(mfrow = c(2,2))
# Scatter plots of temps anomaly for diff sample size  
sim_fn_corr_pow(300, dat = new_temp)
sim_fn_corr_pow(30, dat = new_temp)
sim_fn_corr_pow(8, dat = new_temp)
sim_fn_corr_pow(5, dat = new_temp)
dev.off()

par(mfrow = c(1,1))


