library(ggplot2)
library(ggthemes)
library(bbplot)
library(extrafont)

set.seed(55)
betaPrior <- rnorm(n = 10000, mean = 0, sd = 1)
narrowerPrior <- rnorm(n = 10000, mean = 0, sd = .5)
veryNarPrior <- rnorm(n = 10000, mean = 0, sd = .2)
vveryNarPrior <- rnorm(n = 10000, mean = 5, sd = 5)

ggplot() +
  geom_density(aes(betaPrior), lty = "dashed", fill = "grey", alpha = .9) +
  geom_density(aes(narrowerPrior), col = "darkblue", fill = "skyblue", alpha = .5) + 
  geom_density(aes(veryNarPrior), lwd = 1, fill = "darkblue", alpha = .1) +
  theme(
    plot.background = element_rect(colour = "lightblue"),   # Background of the entire plot
    panel.background = element_rect(colour = "lightgrey"),   # Background of plotting area
    panel.border = element_blank(),       # Border around plotting area.
    panel.grid = element_blank(),         # All grid lines
    panel.grid.major = element_blank(),   # Major grid lines
    panel.grid.minor = element_blank(),   # Minor grid lines
    panel.grid.major.x = element_blank(), # Vertical major grid lines
    panel.grid.major.y = element_blank(), # Horizontal major grid lines
    panel.grid.minor.x = element_blank(), # Vertical minor grid lines
    panel.grid.minor.y = element_blank(),
    axis.line = element_blank(), # Vertical major grid lines
    axis.ticks =  element_blank(), axis.text = element_blank()
) +
  labs(title = "") +
  ylab("") +
  xlab("") +
  ggsave("priorDist", device = "png", 
         path = "/Users/joshuamusson/Desktop/Analytics/R/CV_resume/")
