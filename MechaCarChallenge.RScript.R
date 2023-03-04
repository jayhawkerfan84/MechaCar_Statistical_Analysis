library(dplyr)

mpg_samples <- read_csv("MechaCar_mpg.csv")

reg <- lm(mpg ~ vehicle_length, data=mpg_samples)

summary <- summary(lm(mpg ~ vehicle_length, data=mpg_samples))


suspension_samples <- read.csv("Suspension_Coil.csv")

total_summary <- suspension_samples %>%   summarize(
  mean = mean(PSI),
  median = median(PSI),
  variance = var(PSI),
  sd = sd(PSI)
)

lot_summary <- total_summary <- suspension_samples  %>% group_by(Manufacturing_Lot) %>%  summarize(
  mean = mean(PSI),
  median = median(PSI),
  variance = var(PSI),
  sd = sd(PSI)
)


lot1 = subset(suspension_samples, Manufacturing_Lot==1)
mean(lot1[['PSI']])


lot2= subset(suspension_samples, Manufacturing_Lot==2)
mean(lot2[['PSI']])


t.test(lot1[['PSI']], lot2[['PSI']])

