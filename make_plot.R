library(tidyverse)

x <- read_rds("clean_data.rds")

billboard_plot <- x |>
  ggplot(aes(x = week, y = rank, color = track)) +
  geom_line(linewidth = 1.2, alpha = 0.8) +
  geom_point(size = 2) +
  scale_y_reverse(limits = c(100, 1)) +
  scale_color_manual(values = c("#FF6B6B", "#4ECDC4", "#45B7D1", "#96CEB4")) +
  labs(
    title = "The Race to #1",
    subtitle = "Tracking Billboard chart rankings over time",
    x = "Week",
    y = "Chart Position",
    color = "Song"
  ) +
  theme_minimal() +
  theme(legend.position = "bottom")

ggsave("billboard.png", billboard_plot)
