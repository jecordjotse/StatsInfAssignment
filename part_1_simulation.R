set.seed(2020)

lambda = 0.2
mean <- 1/lambda           # Theoritical Mean
sd <- 1/lambda             # Theoritical Standard Deviation
var <- sd^2                # and variance
## To make a 1000 simulations with a for loop
sim_mat <- NULL
for (i in 1 : 1000){
  expObs <- rexp(40,0.2)
  sim_mat <- cbind(         # Adding simulations by
    sim_mat,              # attaching new columns
    c(
      expObs,           # 40 exponentials
      mean(expObs),     # adding their mean to at row 41
      var(expObs)       # adding their variance at row 42
    )
  )
}

sampleMean <- sim_mat[41,]
sample_Variance_Distribution <- sim_mat[42,]
summary(sampleMean) 