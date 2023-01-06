library(dplyr)

MechaCar_mpg <- read.csv('MechaCar_mpg.csv')

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg))

MechaCar_sus <- read.csv('Suspension_Coil.csv')

total_summary <- MechaCar_sus %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))

lot_summary <- MechaCar_sus %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))

t.test(MechaCar_sus$PSI, mu=1500)

lot1_psi <- subset(MechaCar_sus, Manufacturing_Lot == 'Lot1')

lot2_psi <- subset(MechaCar_sus, Manufacturing_Lot == 'Lot2')

lot3_psi <- subset(MechaCar_sus, Manufacturing_Lot == 'Lot3')

t.test(lot1_psi$PSI, mu=1500)

t.test(lot2_psi$PSI, mu=1500)

t.test(lot3_psi$PSI, mu=1500)
