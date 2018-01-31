practicing safe paths
================

``` r
library(here)
```

    ## Warning: package 'here' was built under R version 3.4.3

    ## here() starts at C:/Users/jrl/Desktop/explore-libraries

``` r
#here::here(data_foo, "species.csv")
#here:here()
```

``` r
fs::path_home()
```

    ## C:/Users/jrl/Documents

Example Code from 00\_filesystem-practice\_jenny.R
--------------------------------------------------

Copy again, using fs ----
-------------------------

library(fs) (from\_dir &lt;- path\_home("Desktop", "day1\_s1\_explore-libraries")) (from\_files &lt;- dir\_ls(from\_dir, glob = "\*.R")) (to\_files &lt;- path\_file(from\_files)) (out &lt;- file\_copy(from\_files, to\_files)) dir\_ls() dir\_info()

    library(fs)
    #path_home("Desktop", "day1_s1_explore-libraries")
    #path_home("Desktop")
    (from_dir <- path_home("..", "Desktop",
                           "day1_s1_explore-libraries"))
    dir_ls()
    (from_files <- dir_ls(from_dir, glob = "*.R"))
    (to_files <- path_file(from_files))
    (out <- file_copy(from_files, to_files))
    dir_ls()
    dir_info()

``` r
# \\.R$
library(fs)
```

    ## Warning: package 'fs' was built under R version 3.4.3

``` r
(from_dir <- path_home("..", "Desktop",
                       "day1_s1_explore-libraries"))
```

    ## C:/Users/jrl/Documents/../Desktop/day1_s1_explore-libraries

``` r
dir_ls(from_dir, glob = "*.R")
```

    ## C:/Users/jrl/Documents/../Desktop/day1_s1_explore-libraries/01_explore-libraries_comfy.R
    ## C:/Users/jrl/Documents/../Desktop/day1_s1_explore-libraries/01_explore-libraries_jenny.R
    ## C:/Users/jrl/Documents/../Desktop/day1_s1_explore-libraries/01_explore-libraries_spartan.R

### Session Info

``` r
devtools::session_info()
```

    ## Session info -------------------------------------------------------------

    ##  setting  value                                      
    ##  version  R version 3.4.0 Patched (2017-05-16 r72687)
    ##  system   x86_64, mingw32                            
    ##  ui       RTerm                                      
    ##  language (EN)                                       
    ##  collate  English_United States.1252                 
    ##  tz       America/Los_Angeles                        
    ##  date     2018-01-31

    ## Packages -----------------------------------------------------------------

    ##  package   * version date       source        
    ##  backports   1.1.2   2017-12-13 CRAN (R 3.4.3)
    ##  base      * 3.4.0   2017-05-19 local         
    ##  compiler    3.4.0   2017-05-19 local         
    ##  crayon      1.3.4   2017-09-16 CRAN (R 3.4.2)
    ##  datasets  * 3.4.0   2017-05-19 local         
    ##  devtools    1.13.4  2017-11-09 CRAN (R 3.4.3)
    ##  digest      0.6.14  2018-01-14 CRAN (R 3.4.3)
    ##  evaluate    0.10.1  2017-06-24 CRAN (R 3.4.0)
    ##  fs        * 1.1.0   2018-01-26 CRAN (R 3.4.3)
    ##  graphics  * 3.4.0   2017-05-19 local         
    ##  grDevices * 3.4.0   2017-05-19 local         
    ##  here      * 0.1     2017-05-28 CRAN (R 3.4.3)
    ##  htmltools   0.3.6   2017-04-28 CRAN (R 3.4.0)
    ##  knitr       1.18    2017-12-27 CRAN (R 3.4.3)
    ##  magrittr    1.5     2014-11-22 CRAN (R 3.4.0)
    ##  memoise     1.1.0   2017-04-21 CRAN (R 3.4.0)
    ##  methods   * 3.4.0   2017-05-19 local         
    ##  Rcpp        0.12.15 2018-01-20 CRAN (R 3.4.3)
    ##  rmarkdown   1.8     2017-11-17 CRAN (R 3.4.3)
    ##  rprojroot   1.3-2   2018-01-03 CRAN (R 3.4.3)
    ##  stats     * 3.4.0   2017-05-19 local         
    ##  stringi     1.1.6   2017-11-17 CRAN (R 3.4.2)
    ##  stringr     1.2.0   2017-02-18 CRAN (R 3.4.0)
    ##  tools       3.4.0   2017-05-19 local         
    ##  utils     * 3.4.0   2017-05-19 local         
    ##  withr       2.1.1   2017-12-19 CRAN (R 3.4.3)
    ##  yaml        2.1.16  2017-12-12 CRAN (R 3.4.3)
