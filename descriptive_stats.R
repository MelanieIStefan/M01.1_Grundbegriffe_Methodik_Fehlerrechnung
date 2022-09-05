runners <- read.csv("runners.csv", header=TRUE)

mean(runners$weight)

library(ggplot2)

p <- ggplot(runners, aes(x = weight, y=time))
p <- p + geom_point()
p <- p + xlab("Gewicht (kg)") + ylab("Zeit für 5 Kilometer (s)")
p

png("zeit_vs_gewicht.png", width = 8, height = 6, units = "cm", res = 300)
p
dev.off()


p1 <- p
p1 <- p1  +  geom_smooth(method='lm', se=FALSE)
 
png("zeit_vs_gewicht_regression.png", width = 8, height = 6, units = "cm", res = 300)
p1
dev.off()



p2 <- ggplot(runners, aes(x = weight))
p2 <- p2 + geom_histogram(bins=6, fill="tan")
p2 <- p2 + xlab("Gewicht (kg)") + ylab("Häufigkeit")
p2

png("histogram.png", width = 8, height = 6, units = "cm", res = 300)
p2
dev.off()

