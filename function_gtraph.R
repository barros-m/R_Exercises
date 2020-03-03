# Function_Graph_01

---
title: "Drwaing Functions and Bar Graphs" 
output: html_document
---
  
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r Function_Graph_01, fig.width=5, out.width='30%'}
f <- function(x)
{
  25*x^2
}
library(ggplot2)
domain <- data.frame(x=c(-5, 5))
ggplot(domain, aes(x)) + stat_function(fun = f1) + theme_bw()