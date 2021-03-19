library(tidyverse)
library(glue)
library(bbplot)
library(ggthemes)
library(aws.s3)
library(knitr)
library(scales)
library(gridExtra)

ART_DATA_URI <- "s3://artventure-8cgc8pg/art_pieces.csv"
Sys.setenv("AWS_DEFAULT_REGION" = "us-east-1")

data <- s3read_using(read_csv, object = ART_DATA_URI)
