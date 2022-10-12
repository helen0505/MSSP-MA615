myName <- "Hanzhang Song"
library(tidyverse)

tts <- read.csv("tts.csv")

# 1
ans_1 <- 0

# 2
ans_2 <- 9

# 3
ans_3 <- 16

# 4
tts_tidy <- tts %>%
  count(gender,wt=shape_time)
ans_4 <- tts_tidy
