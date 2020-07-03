
library(tidyverse) #load tidyverse library
.Internal(setwd("C:/Users/OgyYi/Documents/Class/R"))
MechaCar_data <- read.csv('MechaCar_mpg.csv') #import dataset


Regression_model=lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=MechaCar_data) 
summary(Regression_model)

summary(lm(mpg ~ vehicle.length + vehicle.weight + ground.clearance,data=MechaCar_data)) 


Suspension_Coil_Data <- read.csv('Suspension_Coil.csv')


summary(Suspension_Coil_Data)


summary2 <-
  list("PSI" =
         list("Mean" = 1499,
              "Median" = 1500,
              "Variance" = var(Suspension_Coil_Data$PSI),
              "Standard Deviation" = sd(Suspension_Coil_Data$PSI))
  )

t.test(log10(Suspension_Coil_Data$PSI),mu=1499)
