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
