## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.show = "hold",
  fig.width = 3.2,
  fig.aling = "center"
)

## ----two----------------------------------------------------------------------
library(eulerr)
set.seed(1)

s2 <- c(A = 1, B = 2)

plot(venn(s2))
plot(euler(s2), quantities = TRUE)

## ----three--------------------------------------------------------------------
plot(venn(fruits[, 1:3]))
plot(euler(fruits[, 1:3], shape = "ellipse"), quantities = TRUE)

## ----four---------------------------------------------------------------------
s4 <- list(a = c(1, 2, 3),
           b = c(1, 2),
           c = c(1, 4),
           e = c(5))
plot(venn(s4))
plot(euler(s4, shape = "ellipse"), quantities = TRUE)

## ----five---------------------------------------------------------------------
plot(venn(organisms))
plot(euler(organisms, shape = "ellipse"), quantities = TRUE)

