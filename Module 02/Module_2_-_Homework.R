rm(list = ls())

#rbinom(n, size, prob)
#where n refers to number of observations, size refers to number of trials, 
#and prob refers to probability of success on each trial

#Question 9&10
_____(successes)

#Question 12
#probability of getting exactly 7 heads on 10 flips
#dbinom(x, size, prob) where x is the observations, 
#size is number of trials, prob is probability
#pbinom(q, size, prob) where q is the number of observations,
#size is the number of trials, prob is the probability

#Part A
_______
#Part B

#Part C


#Question 14
binom_draws <- as_tibble(data.frame(successes))

estimated_pf <- binom_draws %>%
  group_by(______) %>%
  _____(n=n()) %>%
  mutate(freq=n/sum(______))

ggplot(estimated_pf, aes(x=successes, y=freq)) +
  geom_col() +
  ylab("Estimated Density")

#Question 15
#Create a tibble with x and the analytical probability densities.
my_binom<-as_tibble(list(x=0:n, prob=dbinom(0:n, n, p)))

#Plot the computed theoretical density.
ggplot(my_binom, aes(x=x, y=prob)) + geom_col() +
  ylab("Analytical Density")

calculated_cdf <- my_binom %>%
  mutate(cdf=_______)

#Plot the computed cdf
ggplot(calculated_cdf, aes(x=x, y=cdf)) + geom_step() + 
  ylab("CDF")