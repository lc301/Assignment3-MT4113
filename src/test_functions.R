source("Power & Size Sim Fn.R")

# Test Functions 

# Test function for my power function 
{test_function_pow <- function(){
  # create test data
  test_dat <- data.frame(ocean_anomaly = c(-.28, -.25, -.09, .01, .16, .28, .11),
                         land_anomaly = c(-.06, -.17, .07, .06, .10, -.06, .05))
  # test output
  out <- sim_fn_corr_pow(n = 100, sim = 100,  dat = test_dat)
  print("Output")
  # Length of List Items test: should be 6
  if (length(out) == 6) {
    print("Number of Output Items test: PASSED")
  } else {
    print("Number of Ouput Items test: FAILED - not 6 items in the output")
  }
  # Numeric Power test: power values are numeric
  if ((is.numeric(out["power_p"]) & is.numeric(out["power_s"])) == TRUE) {
    print("Numeric Power test: PASSED")
  } else {
    print("Numeric Power test: FAILED - output power values are not numeric")
  }
  # Bounded Power test: power values are between 0 and 1
  if (((out["power_p"]) & (out["power_s"])) >= 0 & ((out["power_p"]) & 
                                                    (out["power_s"])) <= 1){
    print("Bounded Power test: PASSED")
  } else {
    print("Bounded Power test: FAILED - output power values not bounded by 0 & 1")
  }
  # Numeric Corr Estimate test: correlation coefficient values are numeric
  if (is.numeric(out["cor_est_p"]) & is.numeric(out["cor_est_s"]) == TRUE) {
    print("Numeric Cor Cof test: PASSED")
  } else {
    print("Numeric Cor Cof test: FAILED - correlation coefficient values not numeric")
  }
  # Numeric Beta test: Beta values are numeric
  if (is.numeric(out["beta0.(Intercept)"]) & 
      is.numeric(out["beta1.land_anomaly"]) == TRUE) {
    print("Numeric Beta test: PASSED")
  } else {
    print("Numeric Beta test: FAILED - Beta values are not numeric")
  }
} 
}  
test_function_pow()
# Test function for my size function 
{test_function_size <- function(){
  # create test data
  test_dat <- data.frame(ocean_anomaly = c(-.28, -.25, -.09, .01, .16, .28, .11),
                         land_anomaly = c(-.06, -.17, .07, .06, .10, -.06, .05))
  # test output
  out <- sim_fn_corr_size(n = 100, sim = 100,  dat = test_dat)
  print("Output")
  # Length of List Items test: should be 6
  if (length(out) == 5) {
    print("Number of Output Items test: PASSED")
  } else {
    print("Number of Ouput Items test: FAILED - not 5 items in the output")
  }
  # Numeric Size test: size values are numeric
  if ((is.numeric(out["size_p"]) & is.numeric(out["size_s"])) == TRUE) {
    print("Numeric Size test: PASSED")
  } else {
    print("Numeric Size test: FAILED - output size values are not numeric")
  }
  # Bounded Size test: size values are between 0 and 1
  if (((out["size_p"]) & (out["size_s"])) >= 0 & ((out["size_p"]) & 
                                                  (out["size_s"])) <= 1){
    print("Bounded Size test: PASSED")
  } else {
    print("Bounded Size test: FAILED - output size values not bounded by 0 & 1")
  }
  # Numeric Corr Estimate test: correlation coefficient values are numeric
  if (is.numeric(out["cor_est_p"]) & is.numeric(out["cor_est_s"]) == TRUE) {
    print("Numeric Cor Cof test: PASSED")
  } else {
    print("Numeric Cor Cof test: FAILED - correlation coefficient values not numeric")
  }
  # Numeric Beta test: Beta values are numeric
  if (is.numeric(out["beta0.(Intercept)"]) == TRUE) {
    print("Numeric Beta test: PASSED")
  } else {
    print("Numeric Beta test: FAILED - Beta values are not numeric")
  }
} 
} 
test_function_size()