library(tidyverse)
library(glue)
library(bbplot)
library(ggthemes)
library(aws.s3)
library(knitr)
library(scales)
library(gridExtra)

plotQual <- function(data, var) {
  varData <- data %>%
    mutate(total = n()) %>%
    group_by(!!sym(var), total) %>%
    summarise(n = n()) %>%
    mutate(pct = n / total) %>%
    arrange(n) %>%
    #drop_na() %>%
    ungroup()
  
  plot1 <- varData %>%
    mutate(pct = round(pct * 100, 1)) %>%
    ggplot(aes(!!sym(var), n)) +
    geom_bar(stat = "identity", fill = "steelblue") +
    coord_flip() +
    geom_text(aes(label = "{pct}%" %>% glue()),
              hjust = -.05) +
    scale_x_discrete(limit = varData %>% pull(!!sym(var))) +
    labs(title = 'Number of Art Pieces for Variable "{var}"' %>% glue()) +
    bbc_style()
  
  plot1 %>%
    finalise_plot(
      source = "Source: https://artventure.me, Data Source: https://expressobeans.com",
      width_pixels = 800,
      height_pixels = 500,
      save_filepath = "{var}.jpg" %>% glue()
    )
}

plotQuant <- function(data, var) {
  plot <- data %>%
    ggplot(aes(!!sym(var))) +
    geom_freqpoly() +
    geom_vline(aes(xintercept = median(!!sym(var), na.rm = T)), color =
                 "steelblue") +
    bbc_style()
  
  plot %>%
    finalise_plot(
      source = "Source: https://artventure.me, Data Source: https://expressobeans.com",
      width_pixels = 800,
      height_pixels = 500,
      save_filepath = "{var}.jpg" %>% glue()
    )
}
