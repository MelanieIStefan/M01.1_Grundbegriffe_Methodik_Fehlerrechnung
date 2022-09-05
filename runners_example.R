# Random Participant ID

ID <- sample(100:999,14)

# average timemile speed 9-10 minutes, makes around 30 min for a 5k
mean_5k_time <- 30*60

# average human weight according to this: 
# https://www.livescience.com/36470-human-population-weight.html
mean_weight <- 62 


# 1.4 s/mile/extra pound according to
# https://www.runnersworld.com/nutrition-weight-loss/a20856066/how-much-does-an-extra-pound-slow-you-down/
# 3 miles in a 5k, 2 pounds in a kilo (-ish) 
k = 1.4*3*2

# time <- k*weight + d
# time - k*weight = d

# average person
d <- mean_5k_time - k*mean_weight

# 14 random weights, assume standard deviation of 8kg
weight <- rnorm(14,mean_weight, 8)
weight <- round(weight,1)


time_theoretical <- k*weight + d

# noise with 2 min standard deviation
noise <- rnorm(14,0,120)

time <- time_theoretical + noise

time <- round(time)

plot(weight,time)

runners <- data.frame(ID, weight, time)


 