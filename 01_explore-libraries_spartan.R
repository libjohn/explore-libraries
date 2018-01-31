#' Which libraries does R search for packages?

```{r}
.libPaths()
```

#' Installed packages

```{r}
library(tidyverse)
installed.packages() %>% 
  length()
``


## use installed.packages() to get all installed packages

## how many packages?

tons of them

```{r}
library(tidyverse)
installed.packages() %>% 
  length()
``
3920 packages


#' Exploring the packages

## count some things! inspiration
##   * tabulate by LibPath, Priority, or both
##   * what proportion need compilation?
##   * how break down re: version of R they were built on

# data %>% count(var)
# data %>% count(var1, var2)
# data %>% count(var) %>% mutate(prop = n / sum(n))

```{r}
starwars %>% 
  count(name)

## 87 Characters

glimpse(starwars)

starwars %>% 
  count(skin_color, eye_color)
```


#' Reflections

## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
##   * how does the result of .libPaths() relate to the result of .Library?


#' Going further

## if you have time to do more ...

## is every package in .Library either base or recommended?
## study package naming style (all lower case, contains '.', etc
## use `fields` argument to installed.packages() to get more info and use it!
