try\_again.R
================
jrl
Wed Jan 31 14:42:03 2018

``` r
library(fs)
```

    ## Warning: package 'fs' was built under R version 3.4.3

``` r
#path_home("Desktop", "day1_s1_explore-libraries")
#path_home("Desktop")
(from_dir <- path_home("..", "Desktop", "day1_s1_explore-libraries"))
```

    ## C:/Users/jrl/Documents/../Desktop/day1_s1_explore-libraries

``` r
dir_ls()
```

    ## 00_filesystem-practice_jenny.R 00_filesystem-practice_jrl.md  
    ## 00_filesystem-practice_jrl.Rmd 01_explore-libraries_comfy.R   
    ## 01_explore-libraries_jenny.R   01_explore-libraries_spartan.R 
    ## 01_explore_as_RNotebook.Rmd    explore-libraries.Rproj        
    ## README.md                      try_again.md                   
    ## try_again.R                    try_again.spin.R               
    ## try_again.spin.Rmd

``` r
(from_files <- dir_ls(from_dir, glob = "*.R"))
```

    ## C:/Users/jrl/Documents/../Desktop/day1_s1_explore-libraries/01_explore-libraries_comfy.R
    ## C:/Users/jrl/Documents/../Desktop/day1_s1_explore-libraries/01_explore-libraries_jenny.R
    ## C:/Users/jrl/Documents/../Desktop/day1_s1_explore-libraries/01_explore-libraries_spartan.R

``` r
(to_files <- path_file(from_files))
```

    ## 01_explore-libraries_comfy.R   01_explore-libraries_jenny.R   
    ## 01_explore-libraries_spartan.R

``` r
#(out <- file_copy(from_files, to_files))
dir_ls()
```

    ## 00_filesystem-practice_jenny.R 00_filesystem-practice_jrl.md  
    ## 00_filesystem-practice_jrl.Rmd 01_explore-libraries_comfy.R   
    ## 01_explore-libraries_jenny.R   01_explore-libraries_spartan.R 
    ## 01_explore_as_RNotebook.Rmd    explore-libraries.Rproj        
    ## README.md                      try_again.md                   
    ## try_again.R                    try_again.spin.R               
    ## try_again.spin.Rmd

``` r
dir_info()
```

    ##                              path type    size permissions
    ## 1  00_filesystem-practice_jenny.R file   1.79K        rw- 
    ## 2   00_filesystem-practice_jrl.md file    3.9K        rw- 
    ## 3  00_filesystem-practice_jrl.Rmd file   1.06K        rw- 
    ## 4    01_explore-libraries_comfy.R file   1.12K        rw- 
    ## 5    01_explore-libraries_jenny.R file   1.61K        rw- 
    ## 6  01_explore-libraries_spartan.R file    1.3K        rw- 
    ## 7     01_explore_as_RNotebook.Rmd file   1.02K        rw- 
    ## 8         explore-libraries.Rproj file     218        rw- 
    ## 9                       README.md file     162        rw- 
    ## 10                   try_again.md file   5.06K        rw- 
    ## 11                    try_again.R file     369        rw- 
    ## 12               try_again.spin.R file     369        rw- 
    ## 13             try_again.spin.Rmd file     455        rw- 
    ##      modification_time user group  device_id hard_links special_device_id
    ## 1  2018-01-31 14:09:08 <NA>  <NA> 1122026969          1                 0
    ## 2  2018-01-31 14:25:01 <NA>  <NA> 1122026969          1                 0
    ## 3  2018-01-31 14:24:46 <NA>  <NA> 1122026969          1                 0
    ## 4  2018-01-31 09:57:10 <NA>  <NA> 1122026969          1                 0
    ## 5  2018-01-31 11:00:13 <NA>  <NA> 1122026969          1                 0
    ## 6  2018-01-31 11:00:21 <NA>  <NA> 1122026969          1                 0
    ## 7  2018-01-31 10:31:47 <NA>  <NA> 1122026969          1                 0
    ## 8  2018-01-31 13:32:03 <NA>  <NA> 1122026969          1                 0
    ## 9  2018-01-31 13:46:33 <NA>  <NA> 1122026969          1                 0
    ## 10 2018-01-31 14:09:36 <NA>  <NA> 1122026969          1                 0
    ## 11 2018-01-31 14:42:00 <NA>  <NA> 1122026969          1                 0
    ## 12 2018-01-31 14:42:03 <NA>  <NA> 1122026969          1                 0
    ## 13 2018-01-31 14:42:03 <NA>  <NA> 1122026969          1                 0
    ##           inode block_size blocks flags generation         access_time
    ## 1  1.548112e+16       4096      8     0          0 2018-01-31 13:55:57
    ## 2  3.096225e+15       4096      8     0          0 2018-01-31 14:21:01
    ## 3  3.659175e+15       4096      8     0          0 2018-01-31 13:49:09
    ## 4  3.096225e+15       4096      8     0          0 2018-01-31 14:09:35
    ## 5  2.814750e+15       4096      8     0          0 2018-01-31 14:09:35
    ## 6  2.814750e+15       4096      8     0          0 2018-01-31 14:09:35
    ## 7  8.444249e+15       4096      8     0          0 2018-01-31 13:48:57
    ## 8  5.910975e+15       4096      0     0          0 2018-01-31 13:31:59
    ## 9  7.318349e+15       4096      0     0          0 2018-01-31 13:46:33
    ## 10 2.814750e+15       4096     16     0          0 2018-01-31 14:09:36
    ## 11 6.473924e+15       4096      0     0          0 2018-01-31 14:09:00
    ## 12 6.473924e+15       4096      0     0          0 2018-01-31 14:42:03
    ## 13 3.659175e+15       4096      0     0          0 2018-01-31 14:42:03
    ##            change_time          birth_time
    ## 1  2018-01-31 14:09:08 2018-01-31 13:55:57
    ## 2  2018-01-31 14:25:01 2018-01-31 14:21:01
    ## 3  2018-01-31 14:24:46 2018-01-31 13:49:09
    ## 4  2018-01-31 09:57:10 2018-01-31 14:09:35
    ## 5  2018-01-31 11:00:13 2018-01-31 14:09:35
    ## 6  2018-01-31 11:00:21 2018-01-31 14:09:35
    ## 7  2018-01-31 13:48:57 2018-01-31 13:48:57
    ## 8  2018-01-31 13:32:03 2018-01-31 13:31:59
    ## 9  2018-01-31 13:46:33 2018-01-31 13:31:59
    ## 10 2018-01-31 14:09:36 2018-01-31 14:09:36
    ## 11 2018-01-31 14:42:00 2018-01-31 14:08:58
    ## 12 2018-01-31 14:42:03 2018-01-31 14:42:03
    ## 13 2018-01-31 14:42:03 2018-01-31 14:42:03
