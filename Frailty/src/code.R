View(raw_frailty_data)
> input_data <- na.omit(input_data)
Error in na.omit(input_data) : object 'input_data' not found
> input_data <- read.csv("C:\Users\surya\OneDrive\Desktop\PDS\Frailty\rawdata/rawdata/raw_frailty_data.csv")
Error: '\U' used without hex digits in character string starting ""C:\U"
> input_data <- read.csv("C:/Users/surya/OneDrive/Desktop/PDS/Frailty/rawdata/raw_frailty_data.csv")
> 
> input_data <- na.omit(input_data)
> library(ggplot2)
> lm.fit <- lm(Frailty ~ Grip..strength + Weight, data=raw_frailty_data)
Error in eval(predvars, data, env) : object 'Grip..strength' not found
> lm.fit <- lm(Frailty ~ Grip strength + Weight, data=raw_frailty_data)
Error: unexpected symbol in "lm.fit <- lm(Frailty ~ Grip strength"
> lm.fit <- lm(Frailty ~ Gripstrength + Weight, data=raw_frailty_data)
Error in eval(predvars, data, env) : object 'Gripstrength' not found
> lm.fit <- lm(Frailty ~ Gripstrength + Weight, data=input)
Error in eval(predvars, data, env) : object 'Gripstrength' not found
> lm.fit <- lm(Frailty ~ Grip..strength + Weight, data=input)
> plot(lm.fit)
Hit <Return> to see next plot: summary(lm.fit)
