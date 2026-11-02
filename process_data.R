
library(tidyverse)

top_songs <- billboard |>
  filter(track %in% c(
    "Breathe",
    "Everything You Want",
    "I Wanna Know",
    "Maria, Maria"
  )) |>
  pivot_longer(
    cols = starts_with("wk"),
    names_to = "week",
    values_to = "rank",
    values_drop_na = TRUE
  ) |>
  mutate(
    week = as.numeric(str_remove(week, "wk"))
  )
