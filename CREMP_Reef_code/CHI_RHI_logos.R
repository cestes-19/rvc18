

library(ggplot2)
library(grid)
library(gridExtra)


### CHI base 


# Create test data.
data <- data.frame(
  category=c("Stony Coral", "Macroalgae", "Fish Biomass"),
  count=c(33, 33, 33)
)

# Compute percentages
data$fraction = data$count / sum(data$count)

# Compute the cumulative percentages (top of each rectangle)
data$ymax = cumsum(data$fraction)

# Compute the bottom of each rectangle
data$ymin = c(0, head(data$ymax, n=-1))

# Make the plot
ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=category)) +
  geom_rect() +
  coord_polar(theta="y") + # Try to remove that to understand how the chart is built initially
  xlim(c(2, 4))+ # 
  theme_void()+
  #annotate("text",x = 2, y = 0, label= "CHI", size = 10)+
  theme(
    legend.position = "none"
  )

### that was the base plot for CHI.... go to inkscape to complete with texts


## RHI 
rhi <- data.frame(
  category=c("Stony Coral", "Macroalgae", "Herbivorous Biomass","Commercial Biomass"),
  count=c(25, 25, 25,25)
)

# Compute percentages
rhi$fraction = rhi$count / sum(rhi$count)

# Compute the cumulative percentages (top of each rectangle)
rhi$ymax = cumsum(rhi$fraction)

# Compute the bottom of each rectangle
rhi$ymin = c(0, head(rhi$ymax, n=-1))

# Make the plot
ggplot(rhi, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=category)) +
  geom_rect() +
  coord_polar(theta="y") + # Try to remove that to understand how the chart is built initially
  xlim(c(2, 4))+
  scale_fill_manual(values = c("coral1","limegreen","gold","paleturquoise"))+ 
  theme_void()+
  #annotate("text",x = 2, y = 0, label= "CHI", size = 10)+
  theme(
    legend.position = "none"
  )
